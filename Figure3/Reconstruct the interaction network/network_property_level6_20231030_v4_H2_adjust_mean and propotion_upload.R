rm(list=ls())


wd="D:/xxxxxx/daily_matrix_H2_Final" #  where the input files are saved
setwd(wd)


library(igraph)

#data input
#####
data3<- read.csv("3.csv", header=T, sep=",",row.names = 1)
data4<- read.csv("4.csv", header=T, sep=",",row.names = 1)
data5<- read.csv("5.csv", header=T, sep=",",row.names = 1)
data6<- read.csv("6.csv", header=T, sep=",",row.names = 1)
data7<- read.csv("7.csv", header=T, sep=",",row.names = 1)
data8<- read.csv("8.csv", header=T, sep=",",row.names = 1)
data9<- read.csv("9.csv", header=T, sep=",",row.names = 1)
data10<- read.csv("10.csv", header=T, sep=",",row.names = 1)
data11<- read.csv("11.csv", header=T, sep=",",row.names = 1)
data12<- read.csv("12.csv", header=T, sep=",",row.names = 1)
data13<- read.csv("13.csv", header=T, sep=",",row.names = 1)
data14<- read.csv("14.csv", header=T, sep=",",row.names = 1)
data15<- read.csv("15.csv", header=T, sep=",",row.names = 1)
data16<- read.csv("16.csv", header=T, sep=",",row.names = 1)
data17<- read.csv("17.csv", header=T, sep=",",row.names = 1)
data18<- read.csv("18.csv", header=T, sep=",",row.names = 1)
data19<- read.csv("19.csv", header=T, sep=",",row.names = 1)
data20<- read.csv("20.csv", header=T, sep=",",row.names = 1)
data21<- read.csv("21.csv", header=T, sep=",",row.names = 1)
data22<- read.csv("22.csv", header=T, sep=",",row.names = 1)
data23<- read.csv("23.csv", header=T, sep=",",row.names = 1)
data24<- read.csv("24.csv", header=T, sep=",",row.names = 1)
data25<- read.csv("25.csv", header=T, sep=",",row.names = 1)
data26<- read.csv("26.csv", header=T, sep=",",row.names = 1)
data27<- read.csv("27.csv", header=T, sep=",",row.names = 1)
data28<- read.csv("28.csv", header=T, sep=",",row.names = 1)
data29<- read.csv("29.csv", header=T, sep=",",row.names = 1)
data30<- read.csv("30.csv", header=T, sep=",",row.names = 1)
data31<- read.csv("31.csv", header=T, sep=",",row.names = 1)
data32<- read.csv("32.csv", header=T, sep=",",row.names = 1)
data33<- read.csv("33.csv", header=T, sep=",",row.names = 1)
data34<- read.csv("34.csv", header=T, sep=",",row.names = 1)
data35<- read.csv("35.csv", header=T, sep=",",row.names = 1)
data36<- read.csv("36.csv", header=T, sep=",",row.names = 1)
data37<- read.csv("37.csv", header=T, sep=",",row.names = 1)
data38<- read.csv("38.csv", header=T, sep=",",row.names = 1)
data39<- read.csv("39.csv", header=T, sep=",",row.names = 1)
data40<- read.csv("40.csv", header=T, sep=",",row.names = 1)
data41<- read.csv("41.csv", header=T, sep=",",row.names = 1)
data42<- read.csv("42.csv", header=T, sep=",",row.names = 1)
data43<- read.csv("43.csv", header=T, sep=",",row.names = 1)
data44<- read.csv("44.csv", header=T, sep=",",row.names = 1)
data45<- read.csv("45.csv", header=T, sep=",",row.names = 1)
data46<- read.csv("46.csv", header=T, sep=",",row.names = 1)
data47<- read.csv("47.csv", header=T, sep=",",row.names = 1)
data48<- read.csv("48.csv", header=T, sep=",",row.names = 1)
data49<- read.csv("49.csv", header=T, sep=",",row.names = 1)
data50<- read.csv("50.csv", header=T, sep=",",row.names = 1)
data51<- read.csv("51.csv", header=T, sep=",",row.names = 1)
data52<- read.csv("52.csv", header=T, sep=",",row.names = 1)
data53<- read.csv("53.csv", header=T, sep=",",row.names = 1)
data54<- read.csv("54.csv", header=T, sep=",",row.names = 1)
data55<- read.csv("55.csv", header=T, sep=",",row.names = 1)
data56<- read.csv("56.csv", header=T, sep=",",row.names = 1)
data57<- read.csv("57.csv", header=T, sep=",",row.names = 1)
data58<- read.csv("58.csv", header=T, sep=",",row.names = 1)
data59<- read.csv("59.csv", header=T, sep=",",row.names = 1)
data60<- read.csv("60.csv", header=T, sep=",",row.names = 1)
data61<- read.csv("61.csv", header=T, sep=",",row.names = 1)
data62<- read.csv("62.csv", header=T, sep=",",row.names = 1)
data63<- read.csv("63.csv", header=T, sep=",",row.names = 1)
data64<- read.csv("64.csv", header=T, sep=",",row.names = 1)
data65<- read.csv("65.csv", header=T, sep=",",row.names = 1)
data66<- read.csv("66.csv", header=T, sep=",",row.names = 1)
data67<- read.csv("67.csv", header=T, sep=",",row.names = 1)
data68<- read.csv("68.csv", header=T, sep=",",row.names = 1)
data69<- read.csv("69.csv", header=T, sep=",",row.names = 1)
data70<- read.csv("70.csv", header=T, sep=",",row.names = 1)
data71<- read.csv("71.csv", header=T, sep=",",row.names = 1)
data72<- read.csv("72.csv", header=T, sep=",",row.names = 1)
data73<- read.csv("73.csv", header=T, sep=",",row.names = 1)
data74<- read.csv("74.csv", header=T, sep=",",row.names = 1)
data75<- read.csv("75.csv", header=T, sep=",",row.names = 1)
data76<- read.csv("76.csv", header=T, sep=",",row.names = 1)
data77<- read.csv("77.csv", header=T, sep=",",row.names = 1)
data78<- read.csv("78.csv", header=T, sep=",",row.names = 1)
data79<- read.csv("79.csv", header=T, sep=",",row.names = 1)
data80<- read.csv("80.csv", header=T, sep=",",row.names = 1)
data81<- read.csv("81.csv", header=T, sep=",",row.names = 1)
data82<- read.csv("82.csv", header=T, sep=",",row.names = 1)
data83<- read.csv("83.csv", header=T, sep=",",row.names = 1)
data84<- read.csv("84.csv", header=T, sep=",",row.names = 1)
data85<- read.csv("85.csv", header=T, sep=",",row.names = 1)
data86<- read.csv("86.csv", header=T, sep=",",row.names = 1)
data87<- read.csv("87.csv", header=T, sep=",",row.names = 1)
data88<- read.csv("88.csv", header=T, sep=",",row.names = 1)
data89<- read.csv("89.csv", header=T, sep=",",row.names = 1)
data90<- read.csv("90.csv", header=T, sep=",",row.names = 1)
data91<- read.csv("91.csv", header=T, sep=",",row.names = 1)
data92<- read.csv("92.csv", header=T, sep=",",row.names = 1)
data93<- read.csv("93.csv", header=T, sep=",",row.names = 1)
data94<- read.csv("94.csv", header=T, sep=",",row.names = 1)
data95<- read.csv("95.csv", header=T, sep=",",row.names = 1)
data96<- read.csv("96.csv", header=T, sep=",",row.names = 1)
data97<- read.csv("97.csv", header=T, sep=",",row.names = 1)
data98<- read.csv("98.csv", header=T, sep=",",row.names = 1)
data99<- read.csv("99.csv", header=T, sep=",",row.names = 1)
data100<- read.csv("100.csv", header=T, sep=",",row.names = 1)
data101<- read.csv("101.csv", header=T, sep=",",row.names = 1)
data102<- read.csv("102.csv", header=T, sep=",",row.names = 1)
data103<- read.csv("103.csv", header=T, sep=",",row.names = 1)
data104<- read.csv("104.csv", header=T, sep=",",row.names = 1)
data105<- read.csv("105.csv", header=T, sep=",",row.names = 1)
data106<- read.csv("106.csv", header=T, sep=",",row.names = 1)
data107<- read.csv("107.csv", header=T, sep=",",row.names = 1)
data108<- read.csv("108.csv", header=T, sep=",",row.names = 1)
data109<- read.csv("109.csv", header=T, sep=",",row.names = 1)



# THE metabolites were not consider in this version
wtopo=function(X,attri=NULL,mai=NULL){
  X = as.matrix(X)
  X<-X[,-(1:7)]  #remove 1-7column (gas & VFA)
  X<-X[-(1:7),] #remove 1-7 row
  diag(X)=0 #Zero out a diagonal matrix
  X_positive = pmax(X,0) 
  X_negative = pmin(X,0)
  x.d.uw=graph.adjacency(t(X), mode="directed",weighted =T)
  x.d.uw.p= graph.adjacency(t(X_positive), mode="directed",weighted =T)
  x.d.uw.n= graph.adjacency(t(X_negative), mode="directed",weighted =T)
  #
  library(reshape2) #melt 
  index=rep("indexx", times=111)
  df=cbind(index,X)
  melt_data <- melt(df,id = c("index")) 
  melt_data <- melt_data[-(1:111),]
  filtermelt_data1 <- melt_data[melt_data$value  == 0,]
  filtermelt_data2 <- melt_data[melt_data$value  < 0.1 & melt_data$value > -0.1,]
  filtermelt_negative <- melt_data[melt_data$value  < 0 ,]
  filtermelt_positive <- melt_data[melt_data$value  > 0 ,]
  filtermelt_notzere <- melt_data[melt_data$value  != 0,]
  ratio1=nrow(filtermelt_data1)/nrow(melt_data)*100
  ratio2=nrow(filtermelt_data2)/nrow(melt_data)*100
  #
  filtermelt_notzere <- melt_data[melt_data$value  != 0 & melt_data$value != "indexx",] #non 0 and non indexx
  sub_filtermelt_notzere=as.numeric(filtermelt_notzere[,c("value")]) #only select "value" by filtermelt_notzere
  abs_sub_filtermelt_notzere=abs(sub_filtermelt_notzere) #Take absolute value
  #
  MeanIS = sum(abs_sub_filtermelt_notzere)/nrow(filtermelt_notzere)
  MeanIC = 2*sum(abs_sub_filtermelt_notzere)/111
  #
  sum_melt_data=abs(as.numeric(melt_data[,c("value")]))
  MeanIS2 = sum(sum_melt_data)/nrow(melt_data)
  #connentance
  connentance = nrow(filtermelt_notzere)/111/111 
  #negative & positive interaction
  negative_IS=nrow(filtermelt_negative)/nrow(melt_data)*100
  positive_IS=nrow(filtermelt_positive)/nrow(melt_data)*100
  #Mean_IS positive and negative
  MeanIS_Positive = sum(abs(as.numeric(filtermelt_positive[,c("value")])))/nrow(filtermelt_positive)
  MeanIS_Negative = sum(abs(as.numeric(filtermelt_negative[,c("value")])))/nrow(filtermelt_negative)
  
  return(list(ratio=c(ratio1,ratio2,MeanIS,MeanIS2,MeanIC,connentance,negative_IS,positive_IS,MeanIS_Negative,MeanIS_Positive)))
  }


#####
result3<- wtopo(data3)
result4<- wtopo(data4)
result5<- wtopo(data5)
result6<- wtopo(data6)
result7<- wtopo(data7)
result8<- wtopo(data8)
result9<- wtopo(data9)
result10<- wtopo(data10)
result11<- wtopo(data11)
result12<- wtopo(data12)
result13<- wtopo(data13)
result14<- wtopo(data14)
result15<- wtopo(data15)
result16<- wtopo(data16)
result17<- wtopo(data17)
result18<- wtopo(data18)
result19<- wtopo(data19)
result20<- wtopo(data20)
result21<- wtopo(data21)
result22<- wtopo(data22)
result23<- wtopo(data23)
result24<- wtopo(data24)
result25<- wtopo(data25)
result26<- wtopo(data26)
result27<- wtopo(data27)
result28<- wtopo(data28)
result29<- wtopo(data29)
result30<- wtopo(data30)
result31<- wtopo(data31)
result32<- wtopo(data32)
result33<- wtopo(data33)
result34<- wtopo(data34)
result35<- wtopo(data35)
result36<- wtopo(data36)
result37<- wtopo(data37)
result38<- wtopo(data38)
result39<- wtopo(data39)
result40<- wtopo(data40)
result41<- wtopo(data41)
result42<- wtopo(data42)
result43<- wtopo(data43)
result44<- wtopo(data44)
result45<- wtopo(data45)
result46<- wtopo(data46)
result47<- wtopo(data47)
result48<- wtopo(data48)
result49<- wtopo(data49)
result50<- wtopo(data50)
result51<- wtopo(data51)
result52<- wtopo(data52)
result53<- wtopo(data53)
result54<- wtopo(data54)
result55<- wtopo(data55)
result56<- wtopo(data56)
result57<- wtopo(data57)
result58<- wtopo(data58)
result59<- wtopo(data59)
result60<- wtopo(data60)
result61<- wtopo(data61)
result62<- wtopo(data62)
result63<- wtopo(data63)
result64<- wtopo(data64)
result65<- wtopo(data65)
result66<- wtopo(data66)
result67<- wtopo(data67)
result68<- wtopo(data68)
result69<- wtopo(data69)
result70<- wtopo(data70)
result71<- wtopo(data71)
result72<- wtopo(data72)
result73<- wtopo(data73)
result74<- wtopo(data74)
result75<- wtopo(data75)
result76<- wtopo(data76)
result77<- wtopo(data77)
result78<- wtopo(data78)
result79<- wtopo(data79)
result80<- wtopo(data80)
result81<- wtopo(data81)
result82<- wtopo(data82)
result83<- wtopo(data83)
result84<- wtopo(data84)
result85<- wtopo(data85)
result86<- wtopo(data86)
result87<- wtopo(data87)
result88<- wtopo(data88)
result89<- wtopo(data89)
result90<- wtopo(data90)
result91<- wtopo(data91)
result92<- wtopo(data92)
result93<- wtopo(data93)
result94<- wtopo(data94)
result95<- wtopo(data95)
result96<- wtopo(data96)
result97<- wtopo(data97)
result98<- wtopo(data98)
result99<- wtopo(data99)
result100<- wtopo(data100)
result101<- wtopo(data101)
result102<- wtopo(data102)
result103<- wtopo(data103)
result104<- wtopo(data104)
result105<- wtopo(data105)
result106<- wtopo(data106)
result107<- wtopo(data107)
result108<- wtopo(data108)
result109<- wtopo(data109)
#####


#
save.wd="D:/xxxxxx/output_v2" # folder path, where to save the output_v2 files
setwd(save.wd)


######
#column is species;row is day ;t() refer to inverse matrix
melt1 = (t(cbind(result3$ratio,
                 result4$ratio,
                 result5$ratio,
                 result6$ratio,
                 result7$ratio,
                 result8$ratio,
                 result9$ratio,
                 result10$ratio,
                 result11$ratio,
                 result12$ratio,
                 result13$ratio,
                 result14$ratio,
                 result15$ratio,
                 result16$ratio,
                 result17$ratio,
                 result18$ratio,
                 result19$ratio,
                 result20$ratio,
                 result21$ratio,
                 result22$ratio,
                 result23$ratio,
                 result24$ratio,
                 result25$ratio,
                 result26$ratio,
                 result27$ratio,
                 result28$ratio,
                 result29$ratio,
                 result30$ratio,
                 result31$ratio,
                 result32$ratio,
                 result33$ratio,
                 result34$ratio,
                 result35$ratio,
                 result36$ratio,
                 result37$ratio,
                 result38$ratio,
                 result39$ratio,
                 result40$ratio,
                 result41$ratio,
                 result42$ratio,
                 result43$ratio,
                 result44$ratio,
                 result45$ratio,
                 result46$ratio,
                 result47$ratio,
                 result48$ratio,
                 result49$ratio,
                 result50$ratio,
                 result51$ratio,
                 result52$ratio,
                 result53$ratio,
                 result54$ratio,
                 result55$ratio,
                 result56$ratio,
                 result57$ratio,
                 result58$ratio,
                 result59$ratio,
                 result60$ratio,
                 result61$ratio,
                 result62$ratio,
                 result63$ratio,
                 result64$ratio,
                 result65$ratio,
                 result66$ratio,
                 result67$ratio,
                 result68$ratio,
                 result69$ratio,
                 result70$ratio,
                 result71$ratio,
                 result72$ratio,
                 result73$ratio,
                 result74$ratio,
                 result75$ratio,
                 result76$ratio,
                 result77$ratio,
                 result78$ratio,
                 result79$ratio,
                 result80$ratio,
                 result81$ratio,
                 result82$ratio,
                 result83$ratio,
                 result84$ratio,
                 result85$ratio,
                 result86$ratio,
                 result87$ratio,
                 result88$ratio,
                 result89$ratio,
                 result90$ratio,
                 result91$ratio,
                 result92$ratio,
                 result93$ratio,
                 result94$ratio,
                 result95$ratio,
                 result96$ratio,
                 result97$ratio,
                 result98$ratio,
                 result99$ratio,
                 result100$ratio,
                 result101$ratio,
                 result102$ratio,
                 result103$ratio,
                 result104$ratio,
                 result105$ratio,
                 result106$ratio,
                 result107$ratio,
                 result108$ratio,
                 result109$ratio)))
colnames(melt1)=c("zero_interaction","weak_interaction","MeanIS_without_zero","MeanIS_with_zero","MeanICwithout_zero","connentance","negative_IS","positive_IS","MeanIS_Negative","MeanIS_Positive")
rownames(melt1)=c(3:109)


write.csv(melt1,"melt_summary_20231030_v4_H2_revised.csv")
