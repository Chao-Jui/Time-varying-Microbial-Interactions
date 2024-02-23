

wd="D:/R_analysis/UASB_Mother/network_level6/daily_matrix_H2_Final" #  where the input files are saved
setwd(wd)


library(igraph)

#input data
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

#trace caculation
library(psych)
trace=function(input)
{
  input<-input[,-(1:7)] #remove 1-7column (gas & VFA)
  input<-input[-(1:7),] #remove 1-7 row
  input=t(input)
  tr=tr(input)
  return(tr)
}

save.wd="D:/xxxxxx/output_H2_final" # folder path, where to save the output files
setwd(save.wd)

UASB_trace <- matrix(data=NA,nrow=107,ncol=1)
UASB_trace[1,]=trace(data3)
UASB_trace[2,]=trace(data4)
UASB_trace[3,]=trace(data5)
UASB_trace[4,]=trace(data6)
UASB_trace[5,]=trace(data7)
UASB_trace[6,]=trace(data8)
UASB_trace[7,]=trace(data9)
UASB_trace[8,]=trace(data10)
UASB_trace[9,]=trace(data11)
UASB_trace[10,]=trace(data12)
UASB_trace[11,]=trace(data13)
UASB_trace[12,]=trace(data14)
UASB_trace[13,]=trace(data15)
UASB_trace[14,]=trace(data16)
UASB_trace[15,]=trace(data17)
UASB_trace[16,]=trace(data18)
UASB_trace[17,]=trace(data19)
UASB_trace[18,]=trace(data20)
UASB_trace[19,]=trace(data21)
UASB_trace[20,]=trace(data22)
UASB_trace[21,]=trace(data23)
UASB_trace[22,]=trace(data24)
UASB_trace[23,]=trace(data25)
UASB_trace[24,]=trace(data26)
UASB_trace[25,]=trace(data27)
UASB_trace[26,]=trace(data28)
UASB_trace[27,]=trace(data29)
UASB_trace[28,]=trace(data30)
UASB_trace[29,]=trace(data31)
UASB_trace[30,]=trace(data32)
UASB_trace[31,]=trace(data33)
UASB_trace[32,]=trace(data34)
UASB_trace[33,]=trace(data35)
UASB_trace[34,]=trace(data36)
UASB_trace[35,]=trace(data37)
UASB_trace[36,]=trace(data38)
UASB_trace[37,]=trace(data39)
UASB_trace[38,]=trace(data40)
UASB_trace[39,]=trace(data41)
UASB_trace[40,]=trace(data42)
UASB_trace[41,]=trace(data43)
UASB_trace[42,]=trace(data44)
UASB_trace[43,]=trace(data45)
UASB_trace[44,]=trace(data46)
UASB_trace[45,]=trace(data47)
UASB_trace[46,]=trace(data48)
UASB_trace[47,]=trace(data49)
UASB_trace[48,]=trace(data50)
UASB_trace[49,]=trace(data51)
UASB_trace[50,]=trace(data52)
UASB_trace[51,]=trace(data53)
UASB_trace[52,]=trace(data54)
UASB_trace[53,]=trace(data55)
UASB_trace[54,]=trace(data56)
UASB_trace[55,]=trace(data57)
UASB_trace[56,]=trace(data58)
UASB_trace[57,]=trace(data59)
UASB_trace[58,]=trace(data60)
UASB_trace[59,]=trace(data61)
UASB_trace[60,]=trace(data62)
UASB_trace[61,]=trace(data63)
UASB_trace[62,]=trace(data64)
UASB_trace[63,]=trace(data65)
UASB_trace[64,]=trace(data66)
UASB_trace[65,]=trace(data67)
UASB_trace[66,]=trace(data68)
UASB_trace[67,]=trace(data69)
UASB_trace[68,]=trace(data70)
UASB_trace[69,]=trace(data71)
UASB_trace[70,]=trace(data72)
UASB_trace[71,]=trace(data73)
UASB_trace[72,]=trace(data74)
UASB_trace[73,]=trace(data75)
UASB_trace[74,]=trace(data76)
UASB_trace[75,]=trace(data77)
UASB_trace[76,]=trace(data78)
UASB_trace[77,]=trace(data79)
UASB_trace[78,]=trace(data80)
UASB_trace[79,]=trace(data81)
UASB_trace[80,]=trace(data82)
UASB_trace[81,]=trace(data83)
UASB_trace[82,]=trace(data84)
UASB_trace[83,]=trace(data85)
UASB_trace[84,]=trace(data86)
UASB_trace[85,]=trace(data87)
UASB_trace[86,]=trace(data88)
UASB_trace[87,]=trace(data89)
UASB_trace[88,]=trace(data90)
UASB_trace[89,]=trace(data91)
UASB_trace[90,]=trace(data92)
UASB_trace[91,]=trace(data93)
UASB_trace[92,]=trace(data94)
UASB_trace[93,]=trace(data95)
UASB_trace[94,]=trace(data96)
UASB_trace[95,]=trace(data97)
UASB_trace[96,]=trace(data98)
UASB_trace[97,]=trace(data99)
UASB_trace[98,]=trace(data100)
UASB_trace[99,]=trace(data101)
UASB_trace[100,]=trace(data102)
UASB_trace[101,]=trace(data103)
UASB_trace[102,]=trace(data104)
UASB_trace[103,]=trace(data105)
UASB_trace[104,]=trace(data106)
UASB_trace[105,]=trace(data107)
UASB_trace[106,]=trace(data108)
UASB_trace[107,]=trace(data109)

UASB_trace=as.data.frame(UASB_trace)
colnames(UASB_trace)=c("trace")
rownames(UASB_trace)=c(3:109)
write.csv(UASB_trace,"UASB_trace.csv")


#定義一個計算參數
#這裡的matrix有修剪過，不含環境參數
wtopo=function(X,attri=NULL,mai=NULL){
  X = as.matrix(X)
  X<-X[,-(1:7)] #remove 1-7column (gas & VFA)
  X<-X[-(1:7),] #remove 1-7 row
  diag(X)=0 #Zero out a diagonal matrix
  X_positive = pmax(X,0) 
  X_negative = pmin(X,0)
  x.d.uw=graph.adjacency(t(X), mode="directed",weighted =T)
  x.d.uw.p= graph.adjacency(t(X_positive), mode="directed",weighted =T)
  x.d.uw.n= graph.adjacency(t(X_negative), mode="directed",weighted =T)
  topov=cbind(strength.in=graph.strength(x.d.uw, mode = "in"),
              strength.out=graph.strength(x.d.uw, mode = "out"),
              strength.all=graph.strength(x.d.uw, mode = "all"),
              evcent=eigen_centrality(x.d.uw)$vector,
              hub=hub.score(x.d.uw)$vector,
              auth=authority_score(x.d.uw)$vector,
              transitivity=transitivity(x.d.uw, type="weighted"),
              strength.in.p=graph.strength(x.d.uw.p, mode = "in"),
              strength.out.p=graph.strength(x.d.uw.p, mode = "out"),
              strength.all.p=graph.strength(x.d.uw.p, mode = "all"),
              strength.in.n=graph.strength(x.d.uw.n, mode = "in"),
              strength.out.n=graph.strength(x.d.uw.n, mode = "out"),
              strength.all.n=graph.strength(x.d.uw.n, mode = "all"),
              degree=degree(x.d.uw, mode = "all")
  )
  topo=c(
    mtrans=mean(topov[,'transitivity'],na.rm=T),
    mstrength.all=mean(topov[,'strength.all']),
    sdstrength.all=sd(topov[,'strength.all'],na.rm=T),
    assortativity.do=assortativity(x.d.uw, topov[,'strength.out'],directed=T),
    assortativity.di=assortativity(x.d.uw, topov[,'strength.in'],directed=T),
    assortativity.da=assortativity(x.d.uw, topov[,'strength.all'],directed=T)
  )
  

  return(list(graph=x.d.uw,topo=topo,topov=topov,matrix_main=X,matrix_positive=X_positive,matrix_negative=X_negative))
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



save.wd="D:/xxxxxx/output_H2_final" # folder path, where to save the output files
setwd(save.wd)

#srtength.in
######
#column is species;row is day ;t() refer to inverse matrix
striength.in = as.data.frame(t(cbind(result3$topov[,1],
                                  result4$topov[,1],
                                  result5$topov[,1],
                                  result6$topov[,1],
                                  result7$topov[,1],
                                  result8$topov[,1],
                                  result9$topov[,1],
                                  result10$topov[,1],
                                  result11$topov[,1],
                                  result12$topov[,1],
                                  result13$topov[,1],
                                  result14$topov[,1],
                                  result15$topov[,1],
                                  result16$topov[,1],
                                  result17$topov[,1],
                                  result18$topov[,1],
                                  result19$topov[,1],
                                  result20$topov[,1],
                                  result21$topov[,1],
                                  result22$topov[,1],
                                  result23$topov[,1],
                                  result24$topov[,1],
                                  result25$topov[,1],
                                  result26$topov[,1],
                                  result27$topov[,1],
                                  result28$topov[,1],
                                  result29$topov[,1],
                                  result30$topov[,1],
                                  result31$topov[,1],
                                  result32$topov[,1],
                                  result33$topov[,1],
                                  result34$topov[,1],
                                  result35$topov[,1],
                                  result36$topov[,1],
                                  result37$topov[,1],
                                  result38$topov[,1],
                                  result39$topov[,1],
                                  result40$topov[,1],
                                  result41$topov[,1],
                                  result42$topov[,1],
                                  result43$topov[,1],
                                  result44$topov[,1],
                                  result45$topov[,1],
                                  result46$topov[,1],
                                  result47$topov[,1],
                                  result48$topov[,1],
                                  result49$topov[,1],
                                  result50$topov[,1],
                                  result51$topov[,1],
                                  result52$topov[,1],
                                  result53$topov[,1],
                                  result54$topov[,1],
                                  result55$topov[,1],
                                  result56$topov[,1],
                                  result57$topov[,1],
                                  result58$topov[,1],
                                  result59$topov[,1],
                                  result60$topov[,1],
                                  result61$topov[,1],
                                  result62$topov[,1],
                                  result63$topov[,1],
                                  result64$topov[,1],
                                  result65$topov[,1],
                                  result66$topov[,1],
                                  result67$topov[,1],
                                  result68$topov[,1],
                                  result69$topov[,1],
                                  result70$topov[,1],
                                  result71$topov[,1],
                                  result72$topov[,1],
                                  result73$topov[,1],
                                  result74$topov[,1],
                                  result75$topov[,1],
                                  result76$topov[,1],
                                  result77$topov[,1],
                                  result78$topov[,1],
                                  result79$topov[,1],
                                  result80$topov[,1],
                                  result81$topov[,1],
                                  result82$topov[,1],
                                  result83$topov[,1],
                                  result84$topov[,1],
                                  result85$topov[,1],
                                  result86$topov[,1],
                                  result87$topov[,1],
                                  result88$topov[,1],
                                  result89$topov[,1],
                                  result90$topov[,1],
                                  result91$topov[,1],
                                  result92$topov[,1],
                                  result93$topov[,1],
                                  result94$topov[,1],
                                  result95$topov[,1],
                                  result96$topov[,1],
                                  result97$topov[,1],
                                  result98$topov[,1],
                                  result99$topov[,1],
                                  result100$topov[,1],
                                  result101$topov[,1],
                                  result102$topov[,1],
                                  result103$topov[,1],
                                  result104$topov[,1],
                                  result105$topov[,1],
                                  result106$topov[,1],
                                  result107$topov[,1],
                                  result108$topov[,1],
                                  result109$topov[,1])))

write.csv(striength.in,"striength_in.csv")
######

#srtength.out
######
#column is species;row is day ;t() refer to inverse matrix
striength.out = as.data.frame(t(cbind(result3$topov[,2],
                                      result4$topov[,2],
                                      result5$topov[,2],
                                      result6$topov[,2],
                                      result7$topov[,2],
                                      result8$topov[,2],
                                      result9$topov[,2],
                                      result10$topov[,2],
                                      result11$topov[,2],
                                      result12$topov[,2],
                                      result13$topov[,2],
                                      result14$topov[,2],
                                      result15$topov[,2],
                                      result16$topov[,2],
                                      result17$topov[,2],
                                      result18$topov[,2],
                                      result19$topov[,2],
                                      result20$topov[,2],
                                      result21$topov[,2],
                                      result22$topov[,2],
                                      result23$topov[,2],
                                      result24$topov[,2],
                                      result25$topov[,2],
                                      result26$topov[,2],
                                      result27$topov[,2],
                                      result28$topov[,2],
                                      result29$topov[,2],
                                      result30$topov[,2],
                                      result31$topov[,2],
                                      result32$topov[,2],
                                      result33$topov[,2],
                                      result34$topov[,2],
                                      result35$topov[,2],
                                      result36$topov[,2],
                                      result37$topov[,2],
                                      result38$topov[,2],
                                      result39$topov[,2],
                                      result40$topov[,2],
                                      result41$topov[,2],
                                      result42$topov[,2],
                                      result43$topov[,2],
                                      result44$topov[,2],
                                      result45$topov[,2],
                                      result46$topov[,2],
                                      result47$topov[,2],
                                      result48$topov[,2],
                                      result49$topov[,2],
                                      result50$topov[,2],
                                      result51$topov[,2],
                                      result52$topov[,2],
                                      result53$topov[,2],
                                      result54$topov[,2],
                                      result55$topov[,2],
                                      result56$topov[,2],
                                      result57$topov[,2],
                                      result58$topov[,2],
                                      result59$topov[,2],
                                      result60$topov[,2],
                                      result61$topov[,2],
                                      result62$topov[,2],
                                      result63$topov[,2],
                                      result64$topov[,2],
                                      result65$topov[,2],
                                      result66$topov[,2],
                                      result67$topov[,2],
                                      result68$topov[,2],
                                      result69$topov[,2],
                                      result70$topov[,2],
                                      result71$topov[,2],
                                      result72$topov[,2],
                                      result73$topov[,2],
                                      result74$topov[,2],
                                      result75$topov[,2],
                                      result76$topov[,2],
                                      result77$topov[,2],
                                      result78$topov[,2],
                                      result79$topov[,2],
                                      result80$topov[,2],
                                      result81$topov[,2],
                                      result82$topov[,2],
                                      result83$topov[,2],
                                      result84$topov[,2],
                                      result85$topov[,2],
                                      result86$topov[,2],
                                      result87$topov[,2],
                                      result88$topov[,2],
                                      result89$topov[,2],
                                      result90$topov[,2],
                                      result91$topov[,2],
                                      result92$topov[,2],
                                      result93$topov[,2],
                                      result94$topov[,2],
                                      result95$topov[,2],
                                      result96$topov[,2],
                                      result97$topov[,2],
                                      result98$topov[,2],
                                      result99$topov[,2],
                                      result100$topov[,2],
                                      result101$topov[,2],
                                      result102$topov[,2],
                                      result103$topov[,2],
                                      result104$topov[,2],
                                      result105$topov[,2],
                                      result106$topov[,2],
                                      result107$topov[,2],
                                      result108$topov[,2],
                                      result109$topov[,2])))

write.csv(striength.out,"striength_out.csv")                               
######

#srtength.all
######
#column is species;row is day ;t() refer to inverse matrix
striength.all = as.data.frame(t(cbind(result3$topov[,3],
                                      result4$topov[,3],
                                      result5$topov[,3],
                                      result6$topov[,3],
                                      result7$topov[,3],
                                      result8$topov[,3],
                                      result9$topov[,3],
                                      result10$topov[,3],
                                      result11$topov[,3],
                                      result12$topov[,3],
                                      result13$topov[,3],
                                      result14$topov[,3],
                                      result15$topov[,3],
                                      result16$topov[,3],
                                      result17$topov[,3],
                                      result18$topov[,3],
                                      result19$topov[,3],
                                      result20$topov[,3],
                                      result21$topov[,3],
                                      result22$topov[,3],
                                      result23$topov[,3],
                                      result24$topov[,3],
                                      result25$topov[,3],
                                      result26$topov[,3],
                                      result27$topov[,3],
                                      result28$topov[,3],
                                      result29$topov[,3],
                                      result30$topov[,3],
                                      result31$topov[,3],
                                      result32$topov[,3],
                                      result33$topov[,3],
                                      result34$topov[,3],
                                      result35$topov[,3],
                                      result36$topov[,3],
                                      result37$topov[,3],
                                      result38$topov[,3],
                                      result39$topov[,3],
                                      result40$topov[,3],
                                      result41$topov[,3],
                                      result42$topov[,3],
                                      result43$topov[,3],
                                      result44$topov[,3],
                                      result45$topov[,3],
                                      result46$topov[,3],
                                      result47$topov[,3],
                                      result48$topov[,3],
                                      result49$topov[,3],
                                      result50$topov[,3],
                                      result51$topov[,3],
                                      result52$topov[,3],
                                      result53$topov[,3],
                                      result54$topov[,3],
                                      result55$topov[,3],
                                      result56$topov[,3],
                                      result57$topov[,3],
                                      result58$topov[,3],
                                      result59$topov[,3],
                                      result60$topov[,3],
                                      result61$topov[,3],
                                      result62$topov[,3],
                                      result63$topov[,3],
                                      result64$topov[,3],
                                      result65$topov[,3],
                                      result66$topov[,3],
                                      result67$topov[,3],
                                      result68$topov[,3],
                                      result69$topov[,3],
                                      result70$topov[,3],
                                      result71$topov[,3],
                                      result72$topov[,3],
                                      result73$topov[,3],
                                      result74$topov[,3],
                                      result75$topov[,3],
                                      result76$topov[,3],
                                      result77$topov[,3],
                                      result78$topov[,3],
                                      result79$topov[,3],
                                      result80$topov[,3],
                                      result81$topov[,3],
                                      result82$topov[,3],
                                      result83$topov[,3],
                                      result84$topov[,3],
                                      result85$topov[,3],
                                      result86$topov[,3],
                                      result87$topov[,3],
                                      result88$topov[,3],
                                      result89$topov[,3],
                                      result90$topov[,3],
                                      result91$topov[,3],
                                      result92$topov[,3],
                                      result93$topov[,3],
                                      result94$topov[,3],
                                      result95$topov[,3],
                                      result96$topov[,3],
                                      result97$topov[,3],
                                      result98$topov[,3],
                                      result99$topov[,3],
                                      result100$topov[,3],
                                      result101$topov[,3],
                                      result102$topov[,3],
                                      result103$topov[,3],
                                      result104$topov[,3],
                                      result105$topov[,3],
                                      result106$topov[,3],
                                      result107$topov[,3],
                                      result108$topov[,3],
                                      result109$topov[,3])))


write.csv(striength.all,"striength_all.csv")                               
######

#evcent
######
#column is species;row is day ;t() refer to inverse matrix
evcent = as.data.frame(t(cbind(result3$topov[,4],
                                      result4$topov[,4],
                                      result5$topov[,4],
                                      result6$topov[,4],
                                      result7$topov[,4],
                                      result8$topov[,4],
                                      result9$topov[,4],
                                      result10$topov[,4],
                                      result11$topov[,4],
                                      result12$topov[,4],
                                      result13$topov[,4],
                                      result14$topov[,4],
                                      result15$topov[,4],
                                      result16$topov[,4],
                                      result17$topov[,4],
                                      result18$topov[,4],
                                      result19$topov[,4],
                                      result20$topov[,4],
                                      result21$topov[,4],
                                      result22$topov[,4],
                                      result23$topov[,4],
                                      result24$topov[,4],
                                      result25$topov[,4],
                                      result26$topov[,4],
                                      result27$topov[,4],
                                      result28$topov[,4],
                                      result29$topov[,4],
                                      result30$topov[,4],
                                      result31$topov[,4],
                                      result32$topov[,4],
                                      result33$topov[,4],
                                      result34$topov[,4],
                                      result35$topov[,4],
                                      result36$topov[,4],
                                      result37$topov[,4],
                                      result38$topov[,4],
                                      result39$topov[,4],
                                      result40$topov[,4],
                                      result41$topov[,4],
                                      result42$topov[,4],
                                      result43$topov[,4],
                                      result44$topov[,4],
                                      result45$topov[,4],
                                      result46$topov[,4],
                                      result47$topov[,4],
                                      result48$topov[,4],
                                      result49$topov[,4],
                                      result50$topov[,4],
                                      result51$topov[,4],
                                      result52$topov[,4],
                                      result53$topov[,4],
                                      result54$topov[,4],
                                      result55$topov[,4],
                                      result56$topov[,4],
                                      result57$topov[,4],
                                      result58$topov[,4],
                                      result59$topov[,4],
                                      result60$topov[,4],
                                      result61$topov[,4],
                                      result62$topov[,4],
                                      result63$topov[,4],
                                      result64$topov[,4],
                                      result65$topov[,4],
                                      result66$topov[,4],
                                      result67$topov[,4],
                                      result68$topov[,4],
                                      result69$topov[,4],
                                      result70$topov[,4],
                                      result71$topov[,4],
                                      result72$topov[,4],
                                      result73$topov[,4],
                                      result74$topov[,4],
                                      result75$topov[,4],
                                      result76$topov[,4],
                                      result77$topov[,4],
                                      result78$topov[,4],
                                      result79$topov[,4],
                                      result80$topov[,4],
                                      result81$topov[,4],
                                      result82$topov[,4],
                                      result83$topov[,4],
                                      result84$topov[,4],
                                      result85$topov[,4],
                                      result86$topov[,4],
                                      result87$topov[,4],
                                      result88$topov[,4],
                                      result89$topov[,4],
                                      result90$topov[,4],
                                      result91$topov[,4],
                                      result92$topov[,4],
                                      result93$topov[,4],
                                      result94$topov[,4],
                                      result95$topov[,4],
                                      result96$topov[,4],
                                      result97$topov[,4],
                                      result98$topov[,4],
                                      result99$topov[,4],
                                      result100$topov[,4],
                                      result101$topov[,4],
                                      result102$topov[,4],
                                      result103$topov[,4],
                                      result104$topov[,4],
                                      result105$topov[,4],
                                      result106$topov[,4],
                                      result107$topov[,4],
                                      result108$topov[,4],
                                      result109$topov[,4])))

write.csv(evcent,"evcent.csv")                               
######

#hub
######
#column is species;row is day ;t() refer to inverse matrix
hub = as.data.frame(t(cbind(result3$topov[,5],
                                      result4$topov[,5],
                                      result5$topov[,5],
                                      result6$topov[,5],
                                      result7$topov[,5],
                                      result8$topov[,5],
                                      result9$topov[,5],
                                      result10$topov[,5],
                                      result11$topov[,5],
                                      result12$topov[,5],
                                      result13$topov[,5],
                                      result14$topov[,5],
                                      result15$topov[,5],
                                      result16$topov[,5],
                                      result17$topov[,5],
                                      result18$topov[,5],
                                      result19$topov[,5],
                                      result20$topov[,5],
                                      result21$topov[,5],
                                      result22$topov[,5],
                                      result23$topov[,5],
                                      result24$topov[,5],
                                      result25$topov[,5],
                                      result26$topov[,5],
                                      result27$topov[,5],
                                      result28$topov[,5],
                                      result29$topov[,5],
                                      result30$topov[,5],
                                      result31$topov[,5],
                                      result32$topov[,5],
                                      result33$topov[,5],
                                      result34$topov[,5],
                                      result35$topov[,5],
                                      result36$topov[,5],
                                      result37$topov[,5],
                                      result38$topov[,5],
                                      result39$topov[,5],
                                      result40$topov[,5],
                                      result41$topov[,5],
                                      result42$topov[,5],
                                      result43$topov[,5],
                                      result44$topov[,5],
                                      result45$topov[,5],
                                      result46$topov[,5],
                                      result47$topov[,5],
                                      result48$topov[,5],
                                      result49$topov[,5],
                                      result50$topov[,5],
                                      result51$topov[,5],
                                      result52$topov[,5],
                                      result53$topov[,5],
                                      result54$topov[,5],
                                      result55$topov[,5],
                                      result56$topov[,5],
                                      result57$topov[,5],
                                      result58$topov[,5],
                                      result59$topov[,5],
                                      result60$topov[,5],
                                      result61$topov[,5],
                                      result62$topov[,5],
                                      result63$topov[,5],
                                      result64$topov[,5],
                                      result65$topov[,5],
                                      result66$topov[,5],
                                      result67$topov[,5],
                                      result68$topov[,5],
                                      result69$topov[,5],
                                      result70$topov[,5],
                                      result71$topov[,5],
                                      result72$topov[,5],
                                      result73$topov[,5],
                                      result74$topov[,5],
                                      result75$topov[,5],
                                      result76$topov[,5],
                                      result77$topov[,5],
                                      result78$topov[,5],
                                      result79$topov[,5],
                                      result80$topov[,5],
                                      result81$topov[,5],
                                      result82$topov[,5],
                                      result83$topov[,5],
                                      result84$topov[,5],
                                      result85$topov[,5],
                                      result86$topov[,5],
                                      result87$topov[,5],
                                      result88$topov[,5],
                                      result89$topov[,5],
                                      result90$topov[,5],
                                      result91$topov[,5],
                                      result92$topov[,5],
                                      result93$topov[,5],
                                      result94$topov[,5],
                                      result95$topov[,5],
                                      result96$topov[,5],
                                      result97$topov[,5],
                                      result98$topov[,5],
                                      result99$topov[,5],
                                      result100$topov[,5],
                                      result101$topov[,5],
                                      result102$topov[,5],
                                      result103$topov[,5],
                                      result104$topov[,5],
                                      result105$topov[,5],
                                      result106$topov[,5],
                                      result107$topov[,5],
                                      result108$topov[,5],
                                      result109$topov[,5])))


write.csv(hub,"hub.csv")                               
######

#auth
######
#column is species;row is day ;t() refer to inverse matrix
auth = as.data.frame(t(cbind(result3$topov[,6],
                                      result4$topov[,6],
                                      result5$topov[,6],
                                      result6$topov[,6],
                                      result7$topov[,6],
                                      result8$topov[,6],
                                      result9$topov[,6],
                                      result10$topov[,6],
                                      result11$topov[,6],
                                      result12$topov[,6],
                                      result13$topov[,6],
                                      result14$topov[,6],
                                      result15$topov[,6],
                                      result16$topov[,6],
                                      result17$topov[,6],
                                      result18$topov[,6],
                                      result19$topov[,6],
                                      result20$topov[,6],
                                      result21$topov[,6],
                                      result22$topov[,6],
                                      result23$topov[,6],
                                      result24$topov[,6],
                                      result25$topov[,6],
                                      result26$topov[,6],
                                      result27$topov[,6],
                                      result28$topov[,6],
                                      result29$topov[,6],
                                      result30$topov[,6],
                                      result31$topov[,6],
                                      result32$topov[,6],
                                      result33$topov[,6],
                                      result34$topov[,6],
                                      result35$topov[,6],
                                      result36$topov[,6],
                                      result37$topov[,6],
                                      result38$topov[,6],
                                      result39$topov[,6],
                                      result40$topov[,6],
                                      result41$topov[,6],
                                      result42$topov[,6],
                                      result43$topov[,6],
                                      result44$topov[,6],
                                      result45$topov[,6],
                                      result46$topov[,6],
                                      result47$topov[,6],
                                      result48$topov[,6],
                                      result49$topov[,6],
                                      result50$topov[,6],
                                      result51$topov[,6],
                                      result52$topov[,6],
                                      result53$topov[,6],
                                      result54$topov[,6],
                                      result55$topov[,6],
                                      result56$topov[,6],
                                      result57$topov[,6],
                                      result58$topov[,6],
                                      result59$topov[,6],
                                      result60$topov[,6],
                                      result61$topov[,6],
                                      result62$topov[,6],
                                      result63$topov[,6],
                                      result64$topov[,6],
                                      result65$topov[,6],
                                      result66$topov[,6],
                                      result67$topov[,6],
                                      result68$topov[,6],
                                      result69$topov[,6],
                                      result70$topov[,6],
                                      result71$topov[,6],
                                      result72$topov[,6],
                                      result73$topov[,6],
                                      result74$topov[,6],
                                      result75$topov[,6],
                                      result76$topov[,6],
                                      result77$topov[,6],
                                      result78$topov[,6],
                                      result79$topov[,6],
                                      result80$topov[,6],
                                      result81$topov[,6],
                                      result82$topov[,6],
                                      result83$topov[,6],
                                      result84$topov[,6],
                                      result85$topov[,6],
                                      result86$topov[,6],
                                      result87$topov[,6],
                                      result88$topov[,6],
                                      result89$topov[,6],
                                      result90$topov[,6],
                                      result91$topov[,6],
                                      result92$topov[,6],
                                      result93$topov[,6],
                                      result94$topov[,6],
                                      result95$topov[,6],
                                      result96$topov[,6],
                                      result97$topov[,6],
                                      result98$topov[,6],
                                      result99$topov[,6],
                                      result100$topov[,6],
                                      result101$topov[,6],
                                      result102$topov[,6],
                                      result103$topov[,6],
                                      result104$topov[,6],
                                      result105$topov[,6],
                                      result106$topov[,6],
                                      result107$topov[,6],
                                      result108$topov[,6],
                                      result109$topov[,6])))

write.csv(auth,"authority.csv")                               
######

#transitivity
######
#column is species;row is day ;t() refer to inverse matrix
transitivity = as.data.frame(t(cbind(result3$topov[,7],
                                      result4$topov[,7],
                                      result5$topov[,7],
                                      result6$topov[,7],
                                      result7$topov[,7],
                                      result8$topov[,7],
                                      result9$topov[,7],
                                      result10$topov[,7],
                                      result11$topov[,7],
                                      result12$topov[,7],
                                      result13$topov[,7],
                                      result14$topov[,7],
                                      result15$topov[,7],
                                      result16$topov[,7],
                                      result17$topov[,7],
                                      result18$topov[,7],
                                      result19$topov[,7],
                                      result20$topov[,7],
                                      result21$topov[,7],
                                      result22$topov[,7],
                                      result23$topov[,7],
                                      result24$topov[,7],
                                      result25$topov[,7],
                                      result26$topov[,7],
                                      result27$topov[,7],
                                      result28$topov[,7],
                                      result29$topov[,7],
                                      result30$topov[,7],
                                      result31$topov[,7],
                                      result32$topov[,7],
                                      result33$topov[,7],
                                      result34$topov[,7],
                                      result35$topov[,7],
                                      result36$topov[,7],
                                      result37$topov[,7],
                                      result38$topov[,7],
                                      result39$topov[,7],
                                      result40$topov[,7],
                                      result41$topov[,7],
                                      result42$topov[,7],
                                      result43$topov[,7],
                                      result44$topov[,7],
                                      result45$topov[,7],
                                      result46$topov[,7],
                                      result47$topov[,7],
                                      result48$topov[,7],
                                      result49$topov[,7],
                                      result50$topov[,7],
                                      result51$topov[,7],
                                      result52$topov[,7],
                                      result53$topov[,7],
                                      result54$topov[,7],
                                      result55$topov[,7],
                                      result56$topov[,7],
                                      result57$topov[,7],
                                      result58$topov[,7],
                                      result59$topov[,7],
                                      result60$topov[,7],
                                      result61$topov[,7],
                                      result62$topov[,7],
                                      result63$topov[,7],
                                      result64$topov[,7],
                                      result65$topov[,7],
                                      result66$topov[,7],
                                      result67$topov[,7],
                                      result68$topov[,7],
                                      result69$topov[,7],
                                      result70$topov[,7],
                                      result71$topov[,7],
                                      result72$topov[,7],
                                      result73$topov[,7],
                                      result74$topov[,7],
                                      result75$topov[,7],
                                      result76$topov[,7],
                                      result77$topov[,7],
                                      result78$topov[,7],
                                      result79$topov[,7],
                                      result80$topov[,7],
                                      result81$topov[,7],
                                      result82$topov[,7],
                                      result83$topov[,7],
                                      result84$topov[,7],
                                      result85$topov[,7],
                                      result86$topov[,7],
                                      result87$topov[,7],
                                      result88$topov[,7],
                                      result89$topov[,7],
                                      result90$topov[,7],
                                      result91$topov[,7],
                                      result92$topov[,7],
                                      result93$topov[,7],
                                      result94$topov[,7],
                                      result95$topov[,7],
                                      result96$topov[,7],
                                      result97$topov[,7],
                                      result98$topov[,7],
                                      result99$topov[,7],
                                      result100$topov[,7],
                                      result101$topov[,7],
                                      result102$topov[,7],
                                      result103$topov[,7],
                                      result104$topov[,7],
                                      result105$topov[,7],
                                      result106$topov[,7],
                                      result107$topov[,7],
                                      result108$topov[,7],
                                      result109$topov[,7])))

write.csv(transitivity,"cluster_coefficient.csv")                               
######

striength.in.p = as.data.frame(t(cbind(result3$topov[,8],
                                       result4$topov[,8],
                                       result5$topov[,8],
                                       result6$topov[,8],
                                       result7$topov[,8],
                                       result8$topov[,8],
                                       result9$topov[,8],
                                       result10$topov[,8],
                                       result11$topov[,8],
                                       result12$topov[,8],
                                       result13$topov[,8],
                                       result14$topov[,8],
                                       result15$topov[,8],
                                       result16$topov[,8],
                                       result17$topov[,8],
                                       result18$topov[,8],
                                       result19$topov[,8],
                                       result20$topov[,8],
                                       result21$topov[,8],
                                       result22$topov[,8],
                                       result23$topov[,8],
                                       result24$topov[,8],
                                       result25$topov[,8],
                                       result26$topov[,8],
                                       result27$topov[,8],
                                       result28$topov[,8],
                                       result29$topov[,8],
                                       result30$topov[,8],
                                       result31$topov[,8],
                                       result32$topov[,8],
                                       result33$topov[,8],
                                       result34$topov[,8],
                                       result35$topov[,8],
                                       result36$topov[,8],
                                       result37$topov[,8],
                                       result38$topov[,8],
                                       result39$topov[,8],
                                       result40$topov[,8],
                                       result41$topov[,8],
                                       result42$topov[,8],
                                       result43$topov[,8],
                                       result44$topov[,8],
                                       result45$topov[,8],
                                       result46$topov[,8],
                                       result47$topov[,8],
                                       result48$topov[,8],
                                       result49$topov[,8],
                                       result50$topov[,8],
                                       result51$topov[,8],
                                       result52$topov[,8],
                                       result53$topov[,8],
                                       result54$topov[,8],
                                       result55$topov[,8],
                                       result56$topov[,8],
                                       result57$topov[,8],
                                       result58$topov[,8],
                                       result59$topov[,8],
                                       result60$topov[,8],
                                       result61$topov[,8],
                                       result62$topov[,8],
                                       result63$topov[,8],
                                       result64$topov[,8],
                                       result65$topov[,8],
                                       result66$topov[,8],
                                       result67$topov[,8],
                                       result68$topov[,8],
                                       result69$topov[,8],
                                       result70$topov[,8],
                                       result71$topov[,8],
                                       result72$topov[,8],
                                       result73$topov[,8],
                                       result74$topov[,8],
                                       result75$topov[,8],
                                       result76$topov[,8],
                                       result77$topov[,8],
                                       result78$topov[,8],
                                       result79$topov[,8],
                                       result80$topov[,8],
                                       result81$topov[,8],
                                       result82$topov[,8],
                                       result83$topov[,8],
                                       result84$topov[,8],
                                       result85$topov[,8],
                                       result86$topov[,8],
                                       result87$topov[,8],
                                       result88$topov[,8],
                                       result89$topov[,8],
                                       result90$topov[,8],
                                       result91$topov[,8],
                                       result92$topov[,8],
                                       result93$topov[,8],
                                       result94$topov[,8],
                                       result95$topov[,8],
                                       result96$topov[,8],
                                       result97$topov[,8],
                                       result98$topov[,8],
                                       result99$topov[,8],
                                       result100$topov[,8],
                                       result101$topov[,8],
                                       result102$topov[,8],
                                       result103$topov[,8],
                                       result104$topov[,8],
                                       result105$topov[,8],
                                       result106$topov[,8],
                                       result107$topov[,8],
                                       result108$topov[,8],
                                       result109$topov[,8])))
write.csv(striength.in.p,"striength_in_positive.csv")

##
striength.out.p = as.data.frame(t(cbind(result3$topov[,9],
                                       result4$topov[,9],
                                       result5$topov[,9],
                                       result6$topov[,9],
                                       result7$topov[,9],
                                       result8$topov[,9],
                                       result9$topov[,9],
                                       result10$topov[,9],
                                       result11$topov[,9],
                                       result12$topov[,9],
                                       result13$topov[,9],
                                       result14$topov[,9],
                                       result15$topov[,9],
                                       result16$topov[,9],
                                       result17$topov[,9],
                                       result18$topov[,9],
                                       result19$topov[,9],
                                       result20$topov[,9],
                                       result21$topov[,9],
                                       result22$topov[,9],
                                       result23$topov[,9],
                                       result24$topov[,9],
                                       result25$topov[,9],
                                       result26$topov[,9],
                                       result27$topov[,9],
                                       result28$topov[,9],
                                       result29$topov[,9],
                                       result30$topov[,9],
                                       result31$topov[,9],
                                       result32$topov[,9],
                                       result33$topov[,9],
                                       result34$topov[,9],
                                       result35$topov[,9],
                                       result36$topov[,9],
                                       result37$topov[,9],
                                       result38$topov[,9],
                                       result39$topov[,9],
                                       result40$topov[,9],
                                       result41$topov[,9],
                                       result42$topov[,9],
                                       result43$topov[,9],
                                       result44$topov[,9],
                                       result45$topov[,9],
                                       result46$topov[,9],
                                       result47$topov[,9],
                                       result48$topov[,9],
                                       result49$topov[,9],
                                       result50$topov[,9],
                                       result51$topov[,9],
                                       result52$topov[,9],
                                       result53$topov[,9],
                                       result54$topov[,9],
                                       result55$topov[,9],
                                       result56$topov[,9],
                                       result57$topov[,9],
                                       result58$topov[,9],
                                       result59$topov[,9],
                                       result60$topov[,9],
                                       result61$topov[,9],
                                       result62$topov[,9],
                                       result63$topov[,9],
                                       result64$topov[,9],
                                       result65$topov[,9],
                                       result66$topov[,9],
                                       result67$topov[,9],
                                       result68$topov[,9],
                                       result69$topov[,9],
                                       result70$topov[,9],
                                       result71$topov[,9],
                                       result72$topov[,9],
                                       result73$topov[,9],
                                       result74$topov[,9],
                                       result75$topov[,9],
                                       result76$topov[,9],
                                       result77$topov[,9],
                                       result78$topov[,9],
                                       result79$topov[,9],
                                       result80$topov[,9],
                                       result81$topov[,9],
                                       result82$topov[,9],
                                       result83$topov[,9],
                                       result84$topov[,9],
                                       result85$topov[,9],
                                       result86$topov[,9],
                                       result87$topov[,9],
                                       result88$topov[,9],
                                       result89$topov[,9],
                                       result90$topov[,9],
                                       result91$topov[,9],
                                       result92$topov[,9],
                                       result93$topov[,9],
                                       result94$topov[,9],
                                       result95$topov[,9],
                                       result96$topov[,9],
                                       result97$topov[,9],
                                       result98$topov[,9],
                                       result99$topov[,9],
                                       result100$topov[,9],
                                       result101$topov[,9],
                                       result102$topov[,9],
                                       result103$topov[,9],
                                       result104$topov[,9],
                                       result105$topov[,9],
                                       result106$topov[,9],
                                       result107$topov[,9],
                                       result108$topov[,9],
                                       result109$topov[,9])))
write.csv(striength.out.p,"striength_out_positive.csv")

##
striength.all.p = as.data.frame(t(cbind(result3$topov[,10],
                                       result4$topov[,10],
                                       result5$topov[,10],
                                       result6$topov[,10],
                                       result7$topov[,10],
                                       result8$topov[,10],
                                       result9$topov[,10],
                                       result10$topov[,10],
                                       result11$topov[,10],
                                       result12$topov[,10],
                                       result13$topov[,10],
                                       result14$topov[,10],
                                       result15$topov[,10],
                                       result16$topov[,10],
                                       result17$topov[,10],
                                       result18$topov[,10],
                                       result19$topov[,10],
                                       result20$topov[,10],
                                       result21$topov[,10],
                                       result22$topov[,10],
                                       result23$topov[,10],
                                       result24$topov[,10],
                                       result25$topov[,10],
                                       result26$topov[,10],
                                       result27$topov[,10],
                                       result28$topov[,10],
                                       result29$topov[,10],
                                       result30$topov[,10],
                                       result31$topov[,10],
                                       result32$topov[,10],
                                       result33$topov[,10],
                                       result34$topov[,10],
                                       result35$topov[,10],
                                       result36$topov[,10],
                                       result37$topov[,10],
                                       result38$topov[,10],
                                       result39$topov[,10],
                                       result40$topov[,10],
                                       result41$topov[,10],
                                       result42$topov[,10],
                                       result43$topov[,10],
                                       result44$topov[,10],
                                       result45$topov[,10],
                                       result46$topov[,10],
                                       result47$topov[,10],
                                       result48$topov[,10],
                                       result49$topov[,10],
                                       result50$topov[,10],
                                       result51$topov[,10],
                                       result52$topov[,10],
                                       result53$topov[,10],
                                       result54$topov[,10],
                                       result55$topov[,10],
                                       result56$topov[,10],
                                       result57$topov[,10],
                                       result58$topov[,10],
                                       result59$topov[,10],
                                       result60$topov[,10],
                                       result61$topov[,10],
                                       result62$topov[,10],
                                       result63$topov[,10],
                                       result64$topov[,10],
                                       result65$topov[,10],
                                       result66$topov[,10],
                                       result67$topov[,10],
                                       result68$topov[,10],
                                       result69$topov[,10],
                                       result70$topov[,10],
                                       result71$topov[,10],
                                       result72$topov[,10],
                                       result73$topov[,10],
                                       result74$topov[,10],
                                       result75$topov[,10],
                                       result76$topov[,10],
                                       result77$topov[,10],
                                       result78$topov[,10],
                                       result79$topov[,10],
                                       result80$topov[,10],
                                       result81$topov[,10],
                                       result82$topov[,10],
                                       result83$topov[,10],
                                       result84$topov[,10],
                                       result85$topov[,10],
                                       result86$topov[,10],
                                       result87$topov[,10],
                                       result88$topov[,10],
                                       result89$topov[,10],
                                       result90$topov[,10],
                                       result91$topov[,10],
                                       result92$topov[,10],
                                       result93$topov[,10],
                                       result94$topov[,10],
                                       result95$topov[,10],
                                       result96$topov[,10],
                                       result97$topov[,10],
                                       result98$topov[,10],
                                       result99$topov[,10],
                                       result100$topov[,10],
                                       result101$topov[,10],
                                       result102$topov[,10],
                                       result103$topov[,10],
                                       result104$topov[,10],
                                       result105$topov[,10],
                                       result106$topov[,10],
                                       result107$topov[,10],
                                       result108$topov[,10],
                                       result109$topov[,10])))
write.csv(striength.all.p,"striength_all_positive.csv")

##
striength.in.n = as.data.frame(t(cbind(result3$topov[,11],
                                       result4$topov[,11],
                                       result5$topov[,11],
                                       result6$topov[,11],
                                       result7$topov[,11],
                                       result8$topov[,11],
                                       result9$topov[,11],
                                       result10$topov[,11],
                                       result11$topov[,11],
                                       result12$topov[,11],
                                       result13$topov[,11],
                                       result14$topov[,11],
                                       result15$topov[,11],
                                       result16$topov[,11],
                                       result17$topov[,11],
                                       result18$topov[,11],
                                       result19$topov[,11],
                                       result20$topov[,11],
                                       result21$topov[,11],
                                       result22$topov[,11],
                                       result23$topov[,11],
                                       result24$topov[,11],
                                       result25$topov[,11],
                                       result26$topov[,11],
                                       result27$topov[,11],
                                       result28$topov[,11],
                                       result29$topov[,11],
                                       result30$topov[,11],
                                       result31$topov[,11],
                                       result32$topov[,11],
                                       result33$topov[,11],
                                       result34$topov[,11],
                                       result35$topov[,11],
                                       result36$topov[,11],
                                       result37$topov[,11],
                                       result38$topov[,11],
                                       result39$topov[,11],
                                       result40$topov[,11],
                                       result41$topov[,11],
                                       result42$topov[,11],
                                       result43$topov[,11],
                                       result44$topov[,11],
                                       result45$topov[,11],
                                       result46$topov[,11],
                                       result47$topov[,11],
                                       result48$topov[,11],
                                       result49$topov[,11],
                                       result50$topov[,11],
                                       result51$topov[,11],
                                       result52$topov[,11],
                                       result53$topov[,11],
                                       result54$topov[,11],
                                       result55$topov[,11],
                                       result56$topov[,11],
                                       result57$topov[,11],
                                       result58$topov[,11],
                                       result59$topov[,11],
                                       result60$topov[,11],
                                       result61$topov[,11],
                                       result62$topov[,11],
                                       result63$topov[,11],
                                       result64$topov[,11],
                                       result65$topov[,11],
                                       result66$topov[,11],
                                       result67$topov[,11],
                                       result68$topov[,11],
                                       result69$topov[,11],
                                       result70$topov[,11],
                                       result71$topov[,11],
                                       result72$topov[,11],
                                       result73$topov[,11],
                                       result74$topov[,11],
                                       result75$topov[,11],
                                       result76$topov[,11],
                                       result77$topov[,11],
                                       result78$topov[,11],
                                       result79$topov[,11],
                                       result80$topov[,11],
                                       result81$topov[,11],
                                       result82$topov[,11],
                                       result83$topov[,11],
                                       result84$topov[,11],
                                       result85$topov[,11],
                                       result86$topov[,11],
                                       result87$topov[,11],
                                       result88$topov[,11],
                                       result89$topov[,11],
                                       result90$topov[,11],
                                       result91$topov[,11],
                                       result92$topov[,11],
                                       result93$topov[,11],
                                       result94$topov[,11],
                                       result95$topov[,11],
                                       result96$topov[,11],
                                       result97$topov[,11],
                                       result98$topov[,11],
                                       result99$topov[,11],
                                       result100$topov[,11],
                                       result101$topov[,11],
                                       result102$topov[,11],
                                       result103$topov[,11],
                                       result104$topov[,11],
                                       result105$topov[,11],
                                       result106$topov[,11],
                                       result107$topov[,11],
                                       result108$topov[,11],
                                       result109$topov[,11])))
write.csv(striength.in.n,"striength_in_negative.csv")
##
striength.out.n = as.data.frame(t(cbind(result3$topov[,12],
                                       result4$topov[,12],
                                       result5$topov[,12],
                                       result6$topov[,12],
                                       result7$topov[,12],
                                       result8$topov[,12],
                                       result9$topov[,12],
                                       result10$topov[,12],
                                       result11$topov[,12],
                                       result12$topov[,12],
                                       result13$topov[,12],
                                       result14$topov[,12],
                                       result15$topov[,12],
                                       result16$topov[,12],
                                       result17$topov[,12],
                                       result18$topov[,12],
                                       result19$topov[,12],
                                       result20$topov[,12],
                                       result21$topov[,12],
                                       result22$topov[,12],
                                       result23$topov[,12],
                                       result24$topov[,12],
                                       result25$topov[,12],
                                       result26$topov[,12],
                                       result27$topov[,12],
                                       result28$topov[,12],
                                       result29$topov[,12],
                                       result30$topov[,12],
                                       result31$topov[,12],
                                       result32$topov[,12],
                                       result33$topov[,12],
                                       result34$topov[,12],
                                       result35$topov[,12],
                                       result36$topov[,12],
                                       result37$topov[,12],
                                       result38$topov[,12],
                                       result39$topov[,12],
                                       result40$topov[,12],
                                       result41$topov[,12],
                                       result42$topov[,12],
                                       result43$topov[,12],
                                       result44$topov[,12],
                                       result45$topov[,12],
                                       result46$topov[,12],
                                       result47$topov[,12],
                                       result48$topov[,12],
                                       result49$topov[,12],
                                       result50$topov[,12],
                                       result51$topov[,12],
                                       result52$topov[,12],
                                       result53$topov[,12],
                                       result54$topov[,12],
                                       result55$topov[,12],
                                       result56$topov[,12],
                                       result57$topov[,12],
                                       result58$topov[,12],
                                       result59$topov[,12],
                                       result60$topov[,12],
                                       result61$topov[,12],
                                       result62$topov[,12],
                                       result63$topov[,12],
                                       result64$topov[,12],
                                       result65$topov[,12],
                                       result66$topov[,12],
                                       result67$topov[,12],
                                       result68$topov[,12],
                                       result69$topov[,12],
                                       result70$topov[,12],
                                       result71$topov[,12],
                                       result72$topov[,12],
                                       result73$topov[,12],
                                       result74$topov[,12],
                                       result75$topov[,12],
                                       result76$topov[,12],
                                       result77$topov[,12],
                                       result78$topov[,12],
                                       result79$topov[,12],
                                       result80$topov[,12],
                                       result81$topov[,12],
                                       result82$topov[,12],
                                       result83$topov[,12],
                                       result84$topov[,12],
                                       result85$topov[,12],
                                       result86$topov[,12],
                                       result87$topov[,12],
                                       result88$topov[,12],
                                       result89$topov[,12],
                                       result90$topov[,12],
                                       result91$topov[,12],
                                       result92$topov[,12],
                                       result93$topov[,12],
                                       result94$topov[,12],
                                       result95$topov[,12],
                                       result96$topov[,12],
                                       result97$topov[,12],
                                       result98$topov[,12],
                                       result99$topov[,12],
                                       result100$topov[,12],
                                       result101$topov[,12],
                                       result102$topov[,12],
                                       result103$topov[,12],
                                       result104$topov[,12],
                                       result105$topov[,12],
                                       result106$topov[,12],
                                       result107$topov[,12],
                                       result108$topov[,12],
                                       result109$topov[,12])))
write.csv(striength.out.n,"striength_out_negative.csv")
##
striength.all.n = as.data.frame(t(cbind(result3$topov[,13],
                                       result4$topov[,13],
                                       result5$topov[,13],
                                       result6$topov[,13],
                                       result7$topov[,13],
                                       result8$topov[,13],
                                       result9$topov[,13],
                                       result10$topov[,13],
                                       result11$topov[,13],
                                       result12$topov[,13],
                                       result13$topov[,13],
                                       result14$topov[,13],
                                       result15$topov[,13],
                                       result16$topov[,13],
                                       result17$topov[,13],
                                       result18$topov[,13],
                                       result19$topov[,13],
                                       result20$topov[,13],
                                       result21$topov[,13],
                                       result22$topov[,13],
                                       result23$topov[,13],
                                       result24$topov[,13],
                                       result25$topov[,13],
                                       result26$topov[,13],
                                       result27$topov[,13],
                                       result28$topov[,13],
                                       result29$topov[,13],
                                       result30$topov[,13],
                                       result31$topov[,13],
                                       result32$topov[,13],
                                       result33$topov[,13],
                                       result34$topov[,13],
                                       result35$topov[,13],
                                       result36$topov[,13],
                                       result37$topov[,13],
                                       result38$topov[,13],
                                       result39$topov[,13],
                                       result40$topov[,13],
                                       result41$topov[,13],
                                       result42$topov[,13],
                                       result43$topov[,13],
                                       result44$topov[,13],
                                       result45$topov[,13],
                                       result46$topov[,13],
                                       result47$topov[,13],
                                       result48$topov[,13],
                                       result49$topov[,13],
                                       result50$topov[,13],
                                       result51$topov[,13],
                                       result52$topov[,13],
                                       result53$topov[,13],
                                       result54$topov[,13],
                                       result55$topov[,13],
                                       result56$topov[,13],
                                       result57$topov[,13],
                                       result58$topov[,13],
                                       result59$topov[,13],
                                       result60$topov[,13],
                                       result61$topov[,13],
                                       result62$topov[,13],
                                       result63$topov[,13],
                                       result64$topov[,13],
                                       result65$topov[,13],
                                       result66$topov[,13],
                                       result67$topov[,13],
                                       result68$topov[,13],
                                       result69$topov[,13],
                                       result70$topov[,13],
                                       result71$topov[,13],
                                       result72$topov[,13],
                                       result73$topov[,13],
                                       result74$topov[,13],
                                       result75$topov[,13],
                                       result76$topov[,13],
                                       result77$topov[,13],
                                       result78$topov[,13],
                                       result79$topov[,13],
                                       result80$topov[,13],
                                       result81$topov[,13],
                                       result82$topov[,13],
                                       result83$topov[,13],
                                       result84$topov[,13],
                                       result85$topov[,13],
                                       result86$topov[,13],
                                       result87$topov[,13],
                                       result88$topov[,13],
                                       result89$topov[,13],
                                       result90$topov[,13],
                                       result91$topov[,13],
                                       result92$topov[,13],
                                       result93$topov[,13],
                                       result94$topov[,13],
                                       result95$topov[,13],
                                       result96$topov[,13],
                                       result97$topov[,13],
                                       result98$topov[,13],
                                       result99$topov[,13],
                                       result100$topov[,13],
                                       result101$topov[,13],
                                       result102$topov[,13],
                                       result103$topov[,13],
                                       result104$topov[,13],
                                       result105$topov[,13],
                                       result106$topov[,13],
                                       result107$topov[,13],
                                       result108$topov[,13],
                                       result109$topov[,13])))
write.csv(striength.all.n,"striength_all_negative.csv")

#
##
degree = as.data.frame(t(cbind(result3$topov[,14],
                                        result4$topov[,14],
                                        result5$topov[,14],
                                        result6$topov[,14],
                                        result7$topov[,14],
                                        result8$topov[,14],
                                        result9$topov[,14],
                                        result10$topov[,14],
                                        result11$topov[,14],
                                        result12$topov[,14],
                                        result13$topov[,14],
                                        result14$topov[,14],
                                        result15$topov[,14],
                                        result16$topov[,14],
                                        result17$topov[,14],
                                        result18$topov[,14],
                                        result19$topov[,14],
                                        result20$topov[,14],
                                        result21$topov[,14],
                                        result22$topov[,14],
                                        result23$topov[,14],
                                        result24$topov[,14],
                                        result25$topov[,14],
                                        result26$topov[,14],
                                        result27$topov[,14],
                                        result28$topov[,14],
                                        result29$topov[,14],
                                        result30$topov[,14],
                                        result31$topov[,14],
                                        result32$topov[,14],
                                        result33$topov[,14],
                                        result34$topov[,14],
                                        result35$topov[,14],
                                        result36$topov[,14],
                                        result37$topov[,14],
                                        result38$topov[,14],
                                        result39$topov[,14],
                                        result40$topov[,14],
                                        result41$topov[,14],
                                        result42$topov[,14],
                                        result43$topov[,14],
                                        result44$topov[,14],
                                        result45$topov[,14],
                                        result46$topov[,14],
                                        result47$topov[,14],
                                        result48$topov[,14],
                                        result49$topov[,14],
                                        result50$topov[,14],
                                        result51$topov[,14],
                                        result52$topov[,14],
                                        result53$topov[,14],
                                        result54$topov[,14],
                                        result55$topov[,14],
                                        result56$topov[,14],
                                        result57$topov[,14],
                                        result58$topov[,14],
                                        result59$topov[,14],
                                        result60$topov[,14],
                                        result61$topov[,14],
                                        result62$topov[,14],
                                        result63$topov[,14],
                                        result64$topov[,14],
                                        result65$topov[,14],
                                        result66$topov[,14],
                                        result67$topov[,14],
                                        result68$topov[,14],
                                        result69$topov[,14],
                                        result70$topov[,14],
                                        result71$topov[,14],
                                        result72$topov[,14],
                                        result73$topov[,14],
                                        result74$topov[,14],
                                        result75$topov[,14],
                                        result76$topov[,14],
                                        result77$topov[,14],
                                        result78$topov[,14],
                                        result79$topov[,14],
                                        result80$topov[,14],
                                        result81$topov[,14],
                                        result82$topov[,14],
                                        result83$topov[,14],
                                        result84$topov[,14],
                                        result85$topov[,14],
                                        result86$topov[,14],
                                        result87$topov[,14],
                                        result88$topov[,14],
                                        result89$topov[,14],
                                        result90$topov[,14],
                                        result91$topov[,14],
                                        result92$topov[,14],
                                        result93$topov[,14],
                                        result94$topov[,14],
                                        result95$topov[,14],
                                        result96$topov[,14],
                                        result97$topov[,14],
                                        result98$topov[,14],
                                        result99$topov[,14],
                                        result100$topov[,14],
                                        result101$topov[,14],
                                        result102$topov[,14],
                                        result103$topov[,14],
                                        result104$topov[,14],
                                        result105$topov[,14],
                                        result106$topov[,14],
                                        result107$topov[,14],
                                        result108$topov[,14],
                                        result109$topov[,14])))
degree$maen=rowMeans(degree)
write.csv(degree,"degree.csv")





