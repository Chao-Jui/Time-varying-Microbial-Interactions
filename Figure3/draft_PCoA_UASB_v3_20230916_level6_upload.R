wd="D:/xxxxxx/Figure3" #  where the input files are saved
save.wd="D:/xxxxxx/Figure3"
setwd(wd)


#PCoA FIGURE
library(vegan)
library(ape) # for pcoa analysis
library(ggplot2)
matrix.data <- read.csv("level6_table_day1-110.csv", header=T, sep=",",row.names = 1)
matrix.data=matrix.data[-c(1:2),] #remove day1 &2
#計算 distance for pcoa
braycurtis.dist = vegdist(matrix.data, method="bray", binary=FALSE, diag=FALSE, upper=FALSE, na.rm = FALSE)
dist.data <- data.frame(braycurtis.dist)
#export data
distmat <- as.matrix(braycurtis.dist)
#setwd(save.wd)
#write.csv(distmat,"braycurtis.dist.csv") 

df.pcoa=pcoa(braycurtis.dist,correction="none") 
#correction	Correction methods for negative eigenvalues (details below): "lingoes" and "cailliez". Default value: "none".
head(df.pcoa$value) 
head(df.pcoa$vectors) 
biplot(df.pcoa)


pcoa.plot<-data.frame(df.pcoa$vectors)  
x_label<-round(df.pcoa$values$Relative_eig[1]*100,2) #contribution of Axix1 
y_label<-round(df.pcoa$values$Relative_eig[2]*100,2) #contribution of Axix2 

setwd(save.wd)
write.csv(pcoa.plot,"pcoa.plot_axis_level6.csv")


