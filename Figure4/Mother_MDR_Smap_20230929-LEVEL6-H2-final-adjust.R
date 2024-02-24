# R-code for  Multiview Distance Regularized S-map (MDR S-map)
# Article: Reconstructing large interaction networks from empirical time series data 
# Authors: Chun-Wei Chang, Takeshi Miki, Masayuki Ushio, Po-Ju Ke, Hsiao-Pei Lu, Fuh-Kwo Shiah, and Chih-hao Hsieh
# Published in: 

# R code for performing MDR S-map anaysis
rm(list = ls())
# Set path
Root_Path <- 'D:\\R_analysis\\UASB_Mother_MDR_level\\level_6_H2_final_adjust\\'
Sub_Path <- '\\'
OPath <- paste(Root_Path,Sub_Path,sep='')
setwd(OPath)

library(vegan)
library(rEDM) # Some EDM analyses (e.g., simplex projection and CCM) were conducted in rEDM package ver. 1.2.3
library(doParallel)
library(parallel)
library(foreach)
library(Kendall)
library(MASS)
library(dplyr)
library(glmnet)
source(paste(Root_Path,'\\Code\\Demo_MDR_function.R',sep='')) #把function放到路徑中以便叫出來
seed <- 49563
set.seed(seed)
SaveFile <- T #T/F for saving files

#############################################################
#### Data Preparation 
# Read dataset
out.sample <- F # T/F for out-of-sample forecast
if(out.sample){nout <- 2}else{nout <- 0}  # number of out-of-sample

(da.name <- 'Bioreator_level_6_H2_final_adjust')
do <- read.csv(paste(Root_Path,'\\Data\\level6_C10.csv',sep=''),header=T,stringsAsFactors = F)
asv_id=data.frame(ASV_ID=do[,1],Order=1:nrow(do))
envi <- read.csv(paste(Root_Path,'\\Data\\UASB_ENV_table_20230929.csv',sep=''),header=T,stringsAsFactors = F, check.names = F)
do=t(do[,-1]);
do=do*repmat(apply(do,1,sum),1,ncol(do))^-1

acid=envi[,c('H2_atm','CO2_atm','CH4_atm',
             'Formate(µM)', 'Acetate(µM)', 'Propionate(µM)', 'Butyrate(µM)')]
#acid=envi[,c('H2','CO2','CH4',
 #            'Formate', 'Acetate', 'Propionate', 'Butyrate')]
colnames(acid)=c('H2','CO2','CH4','Formate','Acetate','Propionate','Butyrate')

da.range <- 1:nrow(do) # Subsample for data analysis
dna=envi[da.range,'DNA conc (ng/uL)']
do=do*repmat(dna,1,ncol(do))

ndo <- nrow(do)
nin <- ndo-nout # library sample size


# Excluding rare species with no clear temporal dynamics
t1=Sys.time()

dto <- apply(do,1,sum) # total abundance
dpo <- do*repmat(dto^-1,1,ncol(do))
pcri <- 0;bcri <- 0 ;ecri <-0 #ecri <-0.01 # criteria for selecting species based on proportion of presence (pcri) and mean relative abundance (bri) 
doind2 <- (apply(dpo,2,mean,na.rm=T)>(bcri))&((apply(do>0,2,sum,na.rm=T)/nrow(do))>pcri)&(apply(dpo>ecri,2,any)) # index for selected species 
exsp2 <- setdiff(1:ncol(do),which(doind2))   # index for rare species 
if(length(exsp2)==0){exsp2=10^9}
do <- do[,-exsp2]                            # Dataset excluded rare species
(nsp <- ncol(do))                            # number of selected species
asv_id=asv_id[-exsp2,]

#write.csv(asv_id,'sp.name_0.001.csv',row.names = F)
do2=do;colnames(do2)=colnames(do)=paste('ID',asv_id[,2],sep='_')
#write.csv(do2,'asv_0.001.csv',row.names = F)

do=cbind(acid,do)

cabs=1*(do==0)
cabs=as.matrix(cabs[-nrow(cabs),]*cabs[-1,])


# In-sample
do.mean <- apply(do[1:nin,],2,mean,na.rm=T)  # mean abundance in in-sample
do.sd <- apply(do[1:nin,],2,sd,na.rm=T)      # SD of abundance in in-sample
d <- do[1:(nin-1),]                          # In-sample dataset at time t
d_tp1 <- do[2:(nin),]                        # In-sample dataset at time t+1
ds <- (d-repmat(do.mean,nrow(d),1))*repmat(do.sd,nrow(d),1)^-1 # Normalized in-sample dataset at time t
ds_tp1 <- (d_tp1-repmat(do.mean,nrow(d_tp1),1))*repmat(do.sd,nrow(d_tp1),1)^-1 # Normalized in-sample dataset at time t+1

# Out-sample
if(out.sample|nout!=0){
  d.test <- do[nin:(ndo-1),]                 # Out-of-sample dataset at time t 
  dt_tp1 <- do[(nin+1):ndo,]                 # Out-of-sample dataset at time t+1
  ds.test <- (d.test-repmat(do.mean,nrow(d.test),1))*repmat(do.sd,nrow(d.test),1)^-1 # Normalized out-of-sample dataset at time t
  dst_tp1 <- (dt_tp1-repmat(do.mean,nrow(dt_tp1),1))*repmat(do.sd,nrow(dt_tp1),1)^-1 # Normalized out-of-sample dataset at time t+1
}else{d.test <- dt_tp1 <- dst_tp1 <- ds.test <- NULL}

# Compiled data at time t 
ds.all <- rbind(ds,ds.test)

#############################################################
# Find the optimal embedding dimension & nonlinearity parameter for each variable 
# based on univariate simplex projection and S-map, respectively
t1=Sys.time()
# Univariate simplex projection
Emax <- 10
cri <- 'rmse' # model selection 
Ed <- NULL
forecast_skill_simplex <- NULL
for(i in 1:ncol(ds)){
  spx.i <- simplex(ds[,i],E=2:Emax)
  Ed <- c(Ed,spx.i[which.min(spx.i[,cri])[1],'E'])
  forecast_skill_simplex <- c(forecast_skill_simplex,spx.i[which.min(spx.i[,cri])[1],'rho'])
}
Ed # The optimal embedding dimension for each variable
forecast_skill_simplex # Forecast skills for each variable based on simplex projection

if(F){
  rho.simplex.n=NULL
  Ed.n=NULL
  sampleN=c(seq(40,100,10),109)
  win.graph(120,120);par(mfcol=c(2,2),mar=c(4,4,3,1))
  for(k in sampleN){
    rho.t=Ed.t=NULL
    #ind.t=((nrow(ds)-k):nrow(ds))
    ind.t=1:k
    for(i in 1:ncol(ds)){
      spx.i=simplex(ds[ind.t,i],E=2:Emax)
      spx.i=simplex(ds[ind.t,i],E=2:Emax)
      Ed.t=c(Ed.t,spx.i[which.min(spx.i[,cri])[1],'E'])
      rho.t=c(rho.t,spx.i[which.min(spx.i[,cri])[1],'rho'])
    }
    rho.simplex.n=cbind(rho.simplex.n,rho.t)
    Ed.n=cbind(Ed.n,Ed.t)
  }
  # the optimal embedding dimension for each variable
  rho.simplex.n[rho.simplex.n<0]=0
  plot(c(rho.simplex.n)~rep(sampleN,each=nrow(rho.simplex.n)),xlab='Sample size',ylab='Forecast skill_Simplex projection',main='Eliminating data from t=110')
  (m.rho=apply(rho.simplex.n,2,median,na.rm=T))
  lines(m.rho~sampleN,lwd=2,col=2)
  lines(apply(rho.simplex.n,2,quantile,0.25,na.rm=T)~sampleN,lwd=2,col=2,lty=2)
  lines(apply(rho.simplex.n,2,quantile,0.75,na.rm=T)~sampleN,lwd=2,col=2,lty=2)
  
  # Univariate S-map projection
  tht.s = c(0, 0.005, 0.01, 0.05, 0.1, 0.25, 0.5, 0.75, 1, 1.5, 2, 3, 4, 6, 8)  # seq of theta
  rho.smap.n=theta.n=NULL
  for(k in sampleN){
    rho.t=thet.y=NULL
    #ind.t=((nrow(ds)-k):nrow(ds))
    Ek=Ed.n[,sampleN==k]
    ind.t=1:k
    for(i in 1:ncol(ds)){
      usmap.i=s_map(ds[ind.t,i],theta = tht.s,E=Ek[i])
      thet.y=c(thet.y,usmap.i[which.min(usmap.i[,cri])[1],'theta'])
      rho.t=c(rho.t,usmap.i[which.min(usmap.i[,cri])[1],'rho'])
    }
    rho.smap.n=cbind(rho.smap.n,rho.t)
    theta.n=cbind(theta.n,thet.y)
  }
  # the optimal embedding dimension for each variable
  rho.smap.n[rho.smap.n<0]=0
  plot(c(rho.smap.n)~rep(sampleN,each=nrow(rho.smap.n)),xlab='Sample size',ylab='Forecast skill_S-map',main='Eliminating data from t=110')
  (m.rho=apply(rho.smap.n,2,median,na.rm=T))
  lines(m.rho~sampleN,lwd=2,col=2)
  lines(apply(rho.smap.n,2,quantile,0.25,na.rm=T)~sampleN,lwd=2,col=2,lty=2)
  lines(apply(rho.smap.n,2,quantile,0.75,na.rm=T)~sampleN,lwd=2,col=2,lty=2)
  
  
  
  
  rho.simplex.n=NULL
  Ed.n=NULL
  sampleN=seq(40,110,10)
  
  for(k in sampleN){
    rho.t=Ed.t=NULL
    #ind.t=1:k
    ind.t=((nrow(ds)-k+1):nrow(ds))
    for(i in 1:ncol(ds)){
      spx.i=simplex(ds[ind.t,i],E=2:Emax)
      spx.i=simplex(ds[ind.t,i],E=2:Emax)
      Ed.t=c(Ed.t,spx.i[which.min(spx.i[,cri])[1],'E'])
      rho.t=c(rho.t,spx.i[which.min(spx.i[,cri])[1],'rho'])
    }
    rho.simplex.n=cbind(rho.simplex.n,rho.t)
    Ed.n=cbind(Ed.n,Ed.t)
  }
  # the optimal embedding dimension for each variable
  rho.simplex.n[rho.simplex.n<0]=0
  plot(c(rho.simplex.n)~rep(sampleN,each=nrow(rho.simplex.n)),xlab='Sample size',ylab='Forecast skill_Simplex projection',main='Eliminating data from t=0')
  (m.rho=apply(rho.simplex.n,2,median,na.rm=T))
  lines(m.rho~sampleN,lwd=2,col=2)
  lines(apply(rho.simplex.n,2,quantile,0.25,na.rm=T)~sampleN,lwd=2,col=2,lty=2)
  lines(apply(rho.simplex.n,2,quantile,0.75,na.rm=T)~sampleN,lwd=2,col=2,lty=2)
  
  
  
  # Univariate S-map projection
  tht.s = c(0, 0.005, 0.01, 0.05, 0.1, 0.25, 0.5, 0.75, 1, 1.5, 2, 3, 4, 6, 8)  # seq of theta
  rho.smap.n=theta.n=NULL
  for(k in sampleN){
    rho.t=thet.y=NULL
    ind.t=((nrow(ds)-k+1):nrow(ds))
    Ek=Ed.n[,sampleN==k]
    #ind.t=1:k
    for(i in 1:ncol(ds)){
      usmap.i=s_map(ds[ind.t,i],theta = tht.s,E=Ek[i])
      thet.y=c(thet.y,usmap.i[which.min(usmap.i[,cri])[1],'theta'])
      rho.t=c(rho.t,usmap.i[which.min(usmap.i[,cri])[1],'rho'])
    }
    rho.smap.n=cbind(rho.smap.n,rho.t)
    theta.n=cbind(theta.n,thet.y)
  }
  # the optimal embedding dimension for each variable
  rho.smap.n[rho.smap.n<0]=0
  plot(c(rho.smap.n)~rep(sampleN,each=nrow(rho.smap.n)),xlab='Sample size',ylab='Forecast skill_S-map',main='Eliminating data from t=0')
  (m.rho=apply(rho.smap.n,2,median,na.rm=T))
  lines(m.rho~sampleN,lwd=2,col=2)
  lines(apply(rho.smap.n,2,quantile,0.25,na.rm=T)~sampleN,lwd=2,col=2,lty=2)
  lines(apply(rho.smap.n,2,quantile,0.75,na.rm=T)~sampleN,lwd=2,col=2,lty=2)
}

format(Sys.time()-t1)

######################################################################
# Find causal variables by CCM analysis for multiview embedding
# Warning: It is time consuming for calculating the causation for each node
# CCM causality test for all node pairs 
t1=Sys.time()

do.CCM <- T 
if(do.CCM){ 
  ccm.out <- ccm.fast.demo(ds,Epair=T,cri=cri,Emax=Emax)
  ccm.sig <- ccm.out[['ccm.sig']]
  ccm.rho <- ccm.out[['ccm.rho']]
  if(SaveFile){
    # To avoid overwrite the original files, we save them with different names, 'XXX_NEW'.
    write.csv(ccm.sig,paste('ccm_sig_',da.name,'_nin',nin,'_demo.csv',sep=''),row.names=F)
    write.csv(ccm.rho,paste('ccm_rho_',da.name,'_nin',nin,'_demo.csv',sep=''),row.names=F)
  }
}

ccm.sig <- read.csv(paste('ccm_sig_',da.name,'_nin',nin,'_demo.csv',sep=''),header=T,stringsAsFactors = F)
ccm.rho <- read.csv(paste('ccm_rho_',da.name,'_nin',nin,'_demo.csv',sep=''),header=T,stringsAsFactors = F)

format(Sys.time()-t1)
######################################################################
# Perform multiview embedding analysis for each node
# Warning: It is time consuming for running multview embedding for each nodes
t1=Sys.time()

do.multiview <- T
if(do.multiview){
  esele_lag <- esim.lag.demo(ds,ccm.rho,ccm.sig,Ed,kmax=10000,kn=100,max_lag=3,Emax=Emax)
  # To avoid overwrite the original files, we save them with different names, 'XXX_NEW'.
  if(SaveFile){write.csv(esele_lag,paste('eseleLag_',da.name,'_nin',nin,'_demo.csv',sep=''),row.names=F)}
}

esele <- read.csv(paste('eseleLag_',da.name,'_nin',nin,'_demo.csv',sep=''),header=T)

format(Sys.time()-t1)
####################################################
## The computation of multiview distance
t1=Sys.time()

dmatrix.mv <- mvdist.demo(ds,ds.all,esele)

dmatrix.train.mvx <- dmatrix.mv[['dmatrix.train.mvx']]  #<----原本漏掉的
dmatrix.test.mvx <- dmatrix.mv[['dmatrix.test.mvx']]

######## Leave-one-out cross-validation for finding the optimal parameters for MDR S-map analysis
### Warning: The cross-validation is the most time-consuming step in MDR S-map requiring massive computations and .  
### Thus, we recommend dividing job into smaller parts (sub.da>1)  or used parallel computation (parall=T, ncore>=1)
### The example showing below divided the parameter space into five parts and ran independently (sub.da=5).
do.MDR.CV <- T
### The parameter cv.unit determines the precision of selected parameters and strongly influences computation time.
### In our cases, we used cv.unit=0.025 to obtain more precise estimations
### This parameter may be adjusted to 0.05 or even 0.1, depending on how sensitive the results to parameter precision. 
t1=Sys.time()

cv.unit <- 0.025
alpha.so <- seq(0, 1, cv.unit);            # Sequence of alpha
sub.da <- 8                                # Divide the computation job into five parts 
afsp <- eqsplit(1:length(alpha.so),sub.da) # Divide the parameter space based on alpha parameter
alf <- 1 # R-code for  Multiview Distance Regularized S-map (MDR S-map)
  # Article: Reconstructing large interaction networks from empirical time series data 
  # Authors: Chun-Wei Chang, Takeshi Miki, Masayuki Ushio, Po-Ju Ke, Hsiao-Pei Lu, Fuh-Kwo Shiah, and Chih-hao Hsieh
  # Published in: 
  
# Cross-validation of MDR analysis    
if(do.MDR.CV){
  alpha.s <- alpha.so[afsp[alf,1]:afsp[alf,2]] # Subset parameter pace
  cv.ind <- cv.MDR_v2(ds, ds_tp1, dmatrix.list=dmatrix.train.mvx,rm_zero=T,absence_m=cabs, 
                        parall=F, ncore=1, keep_intra=T,alpha.seq=alpha.s)
  # To avoid overwrite the original files, we save them with different names, 'XXX_NEW'.
  if(SaveFile){write.csv(cv.ind,paste('./Output/',da.name,'_nin',nin,'_cvunit',cv.unit,'_alph',alpha.s[1]*100,'_cvout_Nmvx_Rallx.csv',sep=''),row.names=F)}
}
# Repeat the CV under different parameter subsets by changing alf=2,3..,sub.da                                  
# Run CV in the first parameter subset 

format(Sys.time()-t1)
################################################################################
# Compiled the CV results tested under different parts of parameter space
t1=Sys.time()

CompileCV=T
if(CompileCV){
  cv.ind <- NULL; for(alf in 1:nrow(afsp)){
    cv.ind <- rbind(cv.ind,read.csv(paste('./Output/',da.name,'_nin',nin,'_cvunit',cv.unit,'_alph',alpha.so[afsp[alf,1]]*100,'_cvout_Nmvx_Rallx.csv',sep=''),header=T))
  }
  # Select the optimal parameter set with the minimal MSE
  paracv.demo <- secv.demo(cv.ind)
  write.csv(paracv.demo,paste(da.name,'_nin',nin,'_cvunit',cv.unit,
                              '_OptimalCV_Nmvx_Rallx.csv',sep=''),row.names = F)
}

format(Sys.time()-t1)
############################################################
# Fitting MDR S-map based on the parameters selected by CV
t1=Sys.time()

do.MDR <- T
cv.unit <- 0.025                           
ptype <- 'aenet'                           # enet:elastic-net or msaenet: adaptive elastic-net

# Select the optimal parameter set with the minimal MSE
paracv.demo <- read.csv(paste(da.name,'_nin',nin,'_cvunit',cv.unit,'_OptimalCV_Nmvx_Rallx.csv',sep=''))

if(do.MDR){
  # Fitting the MDR S-map
  smap.demo <- MDRsmap_v2(paracv=paracv.demo,ptype=ptype,keep_intra=T,out.sample=out.sample,
                            ds,ds_tp1,ds.test,dst_tp1,
                            dmatrix.list=dmatrix.train.mvx,rm_zero=T,absence_m=cabs,
                            dmatrix.test.list=dmatrix.test.mvx)
  
  # Save forecast skills
  nr.out <- smap.demo[['nr.out']];
  # To avoid overwrite the original files, we save them with different names, 'XXX_NEW'.
  if(SaveFile){
    write.csv(nr.out,paste(da.name,'_nin',nin,'_cvunit',cv.unit,'_',ptype,'_nrout_Nmvx_Rallx_demo_NEW.csv',sep=''),row.names=F)
    # Save interaction Jacobian matrices at all time points
    write.csv(smap.demo[['jcof']],paste(da.name,'_nin',nin,'_cvunit',cv.unit,'_',ptype,'_jcof_Nmvx_Rallx_demo_NEW.csv',sep=''),row.names=F)
  }
}

format(Sys.time()-t1)
