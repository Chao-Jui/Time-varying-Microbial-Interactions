
rm(list=ls())


wd="D:/xxxxxx/daily_matrix_H2_final" #  where the input files are saved
setwd(wd)


library(igraph)

#輸入資料
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
intertype=function(input_network,day_id){
  diag(input_network)=0 #Zero out a diagonal matrix
  input_network = as.matrix(input_network) 
  input_network<-input_network[,-(1:7)] #remove 1-7column (gas & VFA)
  input_network<-input_network[-(1:7),] #remove 1-7 row
  
  annotation=read.csv("D:/xxxxxx/col_annotation_type_noVFA_v2.csv")

  
  # Extract data of  Mij and Mji
  mij_data <- as.vector(t(input_network))
  mji_data <- as.vector(input_network)
  
  i_data <- rep(1:111, each = 111)
  j_data <- rep(1:111, times = 111)
  
  i_data_type <- rep(annotation$Type, each = 111)
  j_data_type <- rep(annotation$Type, times = 111)
  i_data_lable <- rep(annotation$annotation, each = 111)
  j_data_lable <- rep(annotation$annotation, times = 111)

  
  # make the dataframe
  data_df <- data.frame(Mij = mij_data, Mji = mji_data, i = i_data, j = j_data,i_data_type=i_data_type,j_data_type=j_data_type,i_data_lable=i_data_lable,j_data_lable=j_data_lable)
  data_df$efficiency=abs(data_df$Mij)+abs(data_df$Mji)

  
  #The combination of different trophic group 
  data_df_FB_FB=data_df[data_df$i_data_type == "FB" & data_df$j_data_type == "FB", ]
  data_df_SB_SB=data_df[data_df$i_data_type == "SB" & data_df$j_data_type == "SB", ]
  data_df_MA_MA=data_df[data_df$i_data_type == "MA" & data_df$j_data_type == "MA", ]
  data_df_OM_OM=data_df[data_df$i_data_type == "OM" & data_df$j_data_type == "OM", ]
  data_df_FB_SB=data_df[data_df$i_data_type == "FB" & data_df$j_data_type == "SB", ]
  data_df_SB_FB=data_df[data_df$i_data_type == "SB" & data_df$j_data_type == "FB", ]
  data_df_FB_MA=data_df[data_df$i_data_type == "FB" & data_df$j_data_type == "MA", ]
  data_df_MA_FB=data_df[data_df$i_data_type == "MA" & data_df$j_data_type == "FB", ]
  data_df_FB_OM=data_df[data_df$i_data_type == "FB" & data_df$j_data_type == "OM", ]
  data_df_OM_FB=data_df[data_df$i_data_type == "OM" & data_df$j_data_type == "FB", ]
  data_df_SB_MA=data_df[data_df$i_data_type == "SB" & data_df$j_data_type == "MA", ]
  data_df_MA_SB=data_df[data_df$i_data_type == "MA" & data_df$j_data_type == "SB", ]
  data_df_SB_OM=data_df[data_df$i_data_type == "SB" & data_df$j_data_type == "OM", ]
  data_df_OM_SB=data_df[data_df$i_data_type == "OM" & data_df$j_data_type == "SB", ]
  data_df_MA_OM=data_df[data_df$i_data_type == "MA" & data_df$j_data_type == "OM", ]
  data_df_OM_MA=data_df[data_df$i_data_type == "OM" & data_df$j_data_type == "MA", ]
  
  
  data_bining=rbind(data_df_FB_FB,data_df_SB_SB,data_df_MA_MA,data_df_OM_OM,
                    data_df_FB_SB,data_df_SB_FB,
                    data_df_FB_MA,data_df_MA_FB,
                    data_df_FB_OM,data_df_OM_FB,
                    data_df_SB_MA,data_df_MA_SB,
                    data_df_SB_OM,data_df_OM_SB,
                    data_df_MA_OM,data_df_OM_MA)
  data_bining$type=c(rep(c("FB_FB"),time=nrow(data_df_FB_FB)),rep(c("SB_SB"),time=nrow(data_df_SB_SB)),rep(c("MA_MA"),time=nrow(data_df_MA_MA)),rep(c("OM_OM"),time=nrow(data_df_OM_OM)),
                     rep(c("FB_SB"),time=nrow(data_df_FB_SB)),rep(c("SB_FB"),time=nrow(data_df_SB_FB)),
                     rep(c("FB_MA"),time=nrow(data_df_FB_MA)),rep(c("MA_FB"),time=nrow(data_df_MA_FB)),
                     rep(c("FB_OM"),time=nrow(data_df_FB_OM)),rep(c("OM_FB"),time=nrow(data_df_OM_FB)),
                     rep(c("SB_MA"),time=nrow(data_df_SB_MA)),rep(c("MA_SB"),time=nrow(data_df_MA_SB)),
                     rep(c("SB_OM"),time=nrow(data_df_SB_OM)),rep(c("OM_SB"),time=nrow(data_df_OM_SB)),
                     rep(c("MA_OM"),time=nrow(data_df_MA_OM)),rep(c("OM_MA"),time=nrow(data_df_OM_MA))
                     )
  data_bining$day_id=rep(c(day_id),time=nrow(data_bining))
  data_bining$combination_id=c(1:nrow(data_bining))

  #overall
  #composition
  data_df_cooperation=data_df[data_df$Mij > 0 & data_df$Mji > 0 ,]
  data_df_competition=data_df[data_df$Mij < 0 & data_df$Mji < 0 ,]
  data_df_exploitation=rbind(data_df[data_df$Mij > 0 & data_df$Mji < 0 ,],data_df[data_df$Mij < 0 & data_df$Mji > 0 ,])
  data_df_commensalism=rbind(data_df[data_df$Mij > 0 & data_df$Mji == 0 ,],data_df[data_df$Mij == 0 & data_df$Mji > 0 ,])
  data_df_amensalism=rbind(data_df[data_df$Mij < 0 & data_df$Mji == 0 ,],data_df[data_df$Mij == 0 & data_df$Mji < 0 ,])
  data_df_neutral=data_df[data_df$Mij == 0 & data_df$Mji == 0 ,]
  
  cooperation=nrow(data_df_cooperation)/(nrow(data_df))*100
  competition=nrow(data_df_competition)/(nrow(data_df))*100
  exploitation=nrow(data_df_exploitation)/(nrow(data_df))*100
  commensalism=nrow(data_df_commensalism)/(nrow(data_df))*100
  amensalism=nrow(data_df_amensalism)/(nrow(data_df))*100
  neutral=(nrow(data_df_neutral))/(nrow(data_df))*100
  
  #strength
  mean_efficiency_cooperation=sum(as.numeric(data_df_cooperation$efficiency)/nrow(data_df_cooperation))
  mean_efficiency_competition=sum(as.numeric(data_df_competition$efficiency)/nrow(data_df_competition))
  mean_efficiency_exploitation=sum(as.numeric(data_df_exploitation$efficiency)/nrow(data_df_exploitation))
  mean_efficiency_commensalism=sum(as.numeric(data_df_commensalism$efficiency)/nrow(data_df_commensalism))
  mean_efficiency_amensalism=sum(as.numeric(data_df_amensalism$efficiency)/nrow(data_df_amensalism))
  mean_efficiency_neutral=sum(as.numeric(data_df_neutral$efficiency)/nrow(data_df_neutral))
  
  #FB_SB
  #composition
  data_df_cooperation_FB_SB=data_df_FB_SB[data_df_FB_SB$Mij > 0 & data_df_FB_SB$Mji > 0 ,]
  data_df_competition_FB_SB=data_df_FB_SB[data_df_FB_SB$Mij < 0 & data_df_FB_SB$Mji < 0 ,]
  data_df_exploitation_FB_SB=rbind(data_df_FB_SB[data_df_FB_SB$Mij > 0 & data_df_FB_SB$Mji < 0 ,],data_df_FB_SB[data_df_FB_SB$Mij < 0 & data_df_FB_SB$Mji > 0 ,])
  data_df_commensalism_FB_SB=rbind(data_df_FB_SB[data_df_FB_SB$Mij > 0 & data_df_FB_SB$Mji == 0 ,],data_df_FB_SB[data_df_FB_SB$Mij == 0 & data_df_FB_SB$Mji > 0 ,])
  data_df_amensalism_FB_SB=rbind(data_df_FB_SB[data_df_FB_SB$Mij < 0 & data_df_FB_SB$Mji == 0 ,],data_df_FB_SB[data_df_FB_SB$Mij == 0 & data_df_FB_SB$Mji < 0 ,])
  data_df_neutral_FB_SB=data_df_FB_SB[data_df_FB_SB$Mij == 0 & data_df_FB_SB$Mji == 0 ,]
  
  cooperation_FB_SB=nrow(data_df_cooperation_FB_SB)/(nrow(data_df_FB_SB))*100
  competition_FB_SB=nrow(data_df_competition_FB_SB)/(nrow(data_df_FB_SB))*100
  exploitation_FB_SB=nrow(data_df_exploitation_FB_SB)/(nrow(data_df_FB_SB))*100
  commensalism_FB_SB=nrow(data_df_commensalism_FB_SB)/(nrow(data_df_FB_SB))*100
  amensalism_FB_SB=nrow(data_df_amensalism_FB_SB)/(nrow(data_df_FB_SB))*100
  neutral_FB_SB=(nrow(data_df_neutral_FB_SB))/(nrow(data_df_FB_SB))*100
  
  #strength
  mean_efficiency_cooperation_FB_SB=sum(as.numeric(data_df_cooperation_FB_SB$efficiency)/nrow(data_df_cooperation_FB_SB))
  mean_efficiency_competition_FB_SB=sum(as.numeric(data_df_competition_FB_SB$efficiency)/nrow(data_df_competition_FB_SB))
  mean_efficiency_exploitation_FB_SB=sum(as.numeric(data_df_exploitation_FB_SB$efficiency)/nrow(data_df_exploitation_FB_SB))
  mean_efficiency_commensalism_FB_SB=sum(as.numeric(data_df_commensalism_FB_SB$efficiency)/nrow(data_df_commensalism_FB_SB))
  mean_efficiency_amensalism_FB_SB=sum(as.numeric(data_df_amensalism_FB_SB$efficiency)/nrow(data_df_amensalism_FB_SB))
  mean_efficiency_neutral_FB_SB=sum(as.numeric(data_df_neutral_FB_SB$efficiency)/nrow(data_df_neutral_FB_SB))
  
  #FB_MA
  #composition
  data_df_cooperation_FB_MA=data_df_FB_MA[data_df_FB_MA$Mij > 0 & data_df_FB_MA$Mji > 0 ,]
  data_df_competition_FB_MA=data_df_FB_MA[data_df_FB_MA$Mij < 0 & data_df_FB_MA$Mji < 0 ,]
  data_df_exploitation_FB_MA=rbind(data_df_FB_MA[data_df_FB_MA$Mij > 0 & data_df_FB_MA$Mji < 0 ,],data_df_FB_MA[data_df_FB_MA$Mij < 0 & data_df_FB_MA$Mji > 0 ,])
  data_df_commensalism_FB_MA=rbind(data_df_FB_MA[data_df_FB_MA$Mij > 0 & data_df_FB_MA$Mji == 0 ,],data_df_FB_MA[data_df_FB_MA$Mij == 0 & data_df_FB_MA$Mji > 0 ,])
  data_df_amensalism_FB_MA=rbind(data_df_FB_MA[data_df_FB_MA$Mij < 0 & data_df_FB_MA$Mji == 0 ,],data_df_FB_MA[data_df_FB_MA$Mij == 0 & data_df_FB_MA$Mji < 0 ,])
  data_df_neutral_FB_MA=data_df_FB_MA[data_df_FB_MA$Mij == 0 & data_df_FB_MA$Mji == 0 ,]
  
  cooperation_FB_MA=nrow(data_df_cooperation_FB_MA)/(nrow(data_df_FB_MA))*100
  competition_FB_MA=nrow(data_df_competition_FB_MA)/(nrow(data_df_FB_MA))*100
  exploitation_FB_MA=nrow(data_df_exploitation_FB_MA)/(nrow(data_df_FB_MA))*100
  commensalism_FB_MA=nrow(data_df_commensalism_FB_MA)/(nrow(data_df_FB_MA))*100
  amensalism_FB_MA=nrow(data_df_amensalism_FB_MA)/(nrow(data_df_FB_MA))*100
  neutral_FB_MA=(nrow(data_df_neutral_FB_MA))/(nrow(data_df_FB_MA))*100
  
  #strength
  mean_efficiency_cooperation_FB_MA=sum(as.numeric(data_df_cooperation_FB_MA$efficiency)/nrow(data_df_cooperation_FB_MA))
  mean_efficiency_competition_FB_MA=sum(as.numeric(data_df_competition_FB_MA$efficiency)/nrow(data_df_competition_FB_MA))
  mean_efficiency_exploitation_FB_MA=sum(as.numeric(data_df_exploitation_FB_MA$efficiency)/nrow(data_df_exploitation_FB_MA))
  mean_efficiency_commensalism_FB_MA=sum(as.numeric(data_df_commensalism_FB_MA$efficiency)/nrow(data_df_commensalism_FB_MA))
  mean_efficiency_amensalism_FB_MA=sum(as.numeric(data_df_amensalism_FB_MA$efficiency)/nrow(data_df_amensalism_FB_MA))
  mean_efficiency_neutral_FB_MA=sum(as.numeric(data_df_neutral_FB_MA$efficiency)/nrow(data_df_neutral_FB_MA))
  
  #SB_MA
  #composition
  data_df_cooperation_SB_MA=data_df_SB_MA[data_df_SB_MA$Mij > 0 & data_df_SB_MA$Mji > 0 ,]
  data_df_competition_SB_MA=data_df_SB_MA[data_df_SB_MA$Mij < 0 & data_df_SB_MA$Mji < 0 ,]
  data_df_exploitation_SB_MA=rbind(data_df_SB_MA[data_df_SB_MA$Mij > 0 & data_df_SB_MA$Mji < 0 ,],data_df_SB_MA[data_df_SB_MA$Mij < 0 & data_df_SB_MA$Mji > 0 ,])
  data_df_commensalism_SB_MA=rbind(data_df_SB_MA[data_df_SB_MA$Mij > 0 & data_df_SB_MA$Mji == 0 ,],data_df_SB_MA[data_df_SB_MA$Mij == 0 & data_df_SB_MA$Mji > 0 ,])
  data_df_amensalism_SB_MA=rbind(data_df_SB_MA[data_df_SB_MA$Mij < 0 & data_df_SB_MA$Mji == 0 ,],data_df_SB_MA[data_df_SB_MA$Mij == 0 & data_df_SB_MA$Mji < 0 ,])
  data_df_neutral_SB_MA=data_df_SB_MA[data_df_SB_MA$Mij == 0 & data_df_SB_MA$Mji == 0 ,]
  
  cooperation_SB_MA=nrow(data_df_cooperation_SB_MA)/(nrow(data_df_SB_MA))*100
  competition_SB_MA=nrow(data_df_competition_SB_MA)/(nrow(data_df_SB_MA))*100
  exploitation_SB_MA=nrow(data_df_exploitation_SB_MA)/(nrow(data_df_SB_MA))*100
  commensalism_SB_MA=nrow(data_df_commensalism_SB_MA)/(nrow(data_df_SB_MA))*100
  amensalism_SB_MA=nrow(data_df_amensalism_SB_MA)/(nrow(data_df_SB_MA))*100
  neutral_SB_MA=(nrow(data_df_neutral_SB_MA))/(nrow(data_df_SB_MA))*100
  
  #strength
  mean_efficiency_cooperation_SB_MA=sum(as.numeric(data_df_cooperation_SB_MA$efficiency)/nrow(data_df_cooperation_SB_MA))
  mean_efficiency_competition_SB_MA=sum(as.numeric(data_df_competition_SB_MA$efficiency)/nrow(data_df_competition_SB_MA))
  mean_efficiency_exploitation_SB_MA=sum(as.numeric(data_df_exploitation_SB_MA$efficiency)/nrow(data_df_exploitation_SB_MA))
  mean_efficiency_commensalism_SB_MA=sum(as.numeric(data_df_commensalism_SB_MA$efficiency)/nrow(data_df_commensalism_SB_MA))
  mean_efficiency_amensalism_SB_MA=sum(as.numeric(data_df_amensalism_SB_MA$efficiency)/nrow(data_df_amensalism_SB_MA))
  mean_efficiency_neutral_SB_MA=sum(as.numeric(data_df_neutral_SB_MA$efficiency)/nrow(data_df_neutral_SB_MA))
  
  #FB_FB
  #composition
  data_df_cooperation_FB_FB=data_df_FB_FB[data_df_FB_FB$Mij > 0 & data_df_FB_FB$Mji > 0 ,]
  data_df_competition_FB_FB=data_df_FB_FB[data_df_FB_FB$Mij < 0 & data_df_FB_FB$Mji < 0 ,]
  data_df_exploitation_FB_FB=rbind(data_df_FB_FB[data_df_FB_FB$Mij > 0 & data_df_FB_FB$Mji < 0 ,],data_df_FB_FB[data_df_FB_FB$Mij < 0 & data_df_FB_FB$Mji > 0 ,])
  data_df_commensalism_FB_FB=rbind(data_df_FB_FB[data_df_FB_FB$Mij > 0 & data_df_FB_FB$Mji == 0 ,],data_df_FB_FB[data_df_FB_FB$Mij == 0 & data_df_FB_FB$Mji > 0 ,])
  data_df_amensalism_FB_FB=rbind(data_df_FB_FB[data_df_FB_FB$Mij < 0 & data_df_FB_FB$Mji == 0 ,],data_df_FB_FB[data_df_FB_FB$Mij == 0 & data_df_FB_FB$Mji < 0 ,])
  data_df_neutral_FB_FB=data_df_FB_FB[data_df_FB_FB$Mij == 0 & data_df_FB_FB$Mji == 0 ,]
  
  cooperation_FB_FB=nrow(data_df_cooperation_FB_FB)/(nrow(data_df_FB_FB))*100
  competition_FB_FB=nrow(data_df_competition_FB_FB)/(nrow(data_df_FB_FB))*100
  exploitation_FB_FB=nrow(data_df_exploitation_FB_FB)/(nrow(data_df_FB_FB))*100
  commensalism_FB_FB=nrow(data_df_commensalism_FB_FB)/(nrow(data_df_FB_FB))*100
  amensalism_FB_FB=nrow(data_df_amensalism_FB_FB)/(nrow(data_df_FB_FB))*100
  neutral_FB_FB=(nrow(data_df_neutral_FB_FB))/(nrow(data_df_FB_FB))*100
  
  #strength
  mean_efficiency_cooperation_FB_FB=sum(as.numeric(data_df_cooperation_FB_FB$efficiency)/nrow(data_df_cooperation_FB_FB))
  mean_efficiency_competition_FB_FB=sum(as.numeric(data_df_competition_FB_FB$efficiency)/nrow(data_df_competition_FB_FB))
  mean_efficiency_exploitation_FB_FB=sum(as.numeric(data_df_exploitation_FB_FB$efficiency)/nrow(data_df_exploitation_FB_FB))
  mean_efficiency_commensalism_FB_FB=sum(as.numeric(data_df_commensalism_FB_FB$efficiency)/nrow(data_df_commensalism_FB_FB))
  mean_efficiency_amensalism_FB_FB=sum(as.numeric(data_df_amensalism_FB_FB$efficiency)/nrow(data_df_amensalism_FB_FB))
  mean_efficiency_neutral_FB_FB=sum(as.numeric(data_df_neutral_FB_FB$efficiency)/nrow(data_df_neutral_FB_FB))
  
  #SB_SB
  #composition
  data_df_cooperation_SB_SB=data_df_SB_SB[data_df_SB_SB$Mij > 0 & data_df_SB_SB$Mji > 0 ,]
  data_df_competition_SB_SB=data_df_SB_SB[data_df_SB_SB$Mij < 0 & data_df_SB_SB$Mji < 0 ,]
  data_df_exploitation_SB_SB=rbind(data_df_SB_SB[data_df_SB_SB$Mij > 0 & data_df_SB_SB$Mji < 0 ,],data_df_SB_SB[data_df_SB_SB$Mij < 0 & data_df_SB_SB$Mji > 0 ,])
  data_df_commensalism_SB_SB=rbind(data_df_SB_SB[data_df_SB_SB$Mij > 0 & data_df_SB_SB$Mji == 0 ,],data_df_SB_SB[data_df_SB_SB$Mij == 0 & data_df_SB_SB$Mji > 0 ,])
  data_df_amensalism_SB_SB=rbind(data_df_SB_SB[data_df_SB_SB$Mij < 0 & data_df_SB_SB$Mji == 0 ,],data_df_SB_SB[data_df_SB_SB$Mij == 0 & data_df_SB_SB$Mji < 0 ,])
  data_df_neutral_SB_SB=data_df_SB_SB[data_df_SB_SB$Mij == 0 & data_df_SB_SB$Mji == 0 ,]
  
  cooperation_SB_SB=nrow(data_df_cooperation_SB_SB)/(nrow(data_df_SB_SB))*100
  competition_SB_SB=nrow(data_df_competition_SB_SB)/(nrow(data_df_SB_SB))*100
  exploitation_SB_SB=nrow(data_df_exploitation_SB_SB)/(nrow(data_df_SB_SB))*100
  commensalism_SB_SB=nrow(data_df_commensalism_SB_SB)/(nrow(data_df_SB_SB))*100
  amensalism_SB_SB=nrow(data_df_amensalism_SB_SB)/(nrow(data_df_SB_SB))*100
  neutral_SB_SB=(nrow(data_df_neutral_SB_SB))/(nrow(data_df_SB_SB))*100
  
  #strength
  mean_efficiency_cooperation_SB_SB=sum(as.numeric(data_df_cooperation_SB_SB$efficiency)/nrow(data_df_cooperation_SB_SB))
  mean_efficiency_competition_SB_SB=sum(as.numeric(data_df_competition_SB_SB$efficiency)/nrow(data_df_competition_SB_SB))
  mean_efficiency_exploitation_SB_SB=sum(as.numeric(data_df_exploitation_SB_SB$efficiency)/nrow(data_df_exploitation_SB_SB))
  mean_efficiency_commensalism_SB_SB=sum(as.numeric(data_df_commensalism_SB_SB$efficiency)/nrow(data_df_commensalism_SB_SB))
  mean_efficiency_amensalism_SB_SB=sum(as.numeric(data_df_amensalism_SB_SB$efficiency)/nrow(data_df_amensalism_SB_SB))
  mean_efficiency_neutral_SB_SB=sum(as.numeric(data_df_neutral_SB_SB$efficiency)/nrow(data_df_neutral_SB_SB))
  
  #MA_MA
  #composition
  data_df_cooperation_MA_MA=data_df_MA_MA[data_df_MA_MA$Mij > 0 & data_df_MA_MA$Mji > 0 ,]
  data_df_competition_MA_MA=data_df_MA_MA[data_df_MA_MA$Mij < 0 & data_df_MA_MA$Mji < 0 ,]
  data_df_exploitation_MA_MA=rbind(data_df_MA_MA[data_df_MA_MA$Mij > 0 & data_df_MA_MA$Mji < 0 ,],data_df_MA_MA[data_df_MA_MA$Mij < 0 & data_df_MA_MA$Mji > 0 ,])
  data_df_commensalism_MA_MA=rbind(data_df_MA_MA[data_df_MA_MA$Mij > 0 & data_df_MA_MA$Mji == 0 ,],data_df_MA_MA[data_df_MA_MA$Mij == 0 & data_df_MA_MA$Mji > 0 ,])
  data_df_amensalism_MA_MA=rbind(data_df_MA_MA[data_df_MA_MA$Mij < 0 & data_df_MA_MA$Mji == 0 ,],data_df_MA_MA[data_df_MA_MA$Mij == 0 & data_df_MA_MA$Mji < 0 ,])
  data_df_neutral_MA_MA=data_df_MA_MA[data_df_MA_MA$Mij == 0 & data_df_MA_MA$Mji == 0 ,]
  
  cooperation_MA_MA=nrow(data_df_cooperation_MA_MA)/(nrow(data_df_MA_MA))*100
  competition_MA_MA=nrow(data_df_competition_MA_MA)/(nrow(data_df_MA_MA))*100
  exploitation_MA_MA=nrow(data_df_exploitation_MA_MA)/(nrow(data_df_MA_MA))*100
  commensalism_MA_MA=nrow(data_df_commensalism_MA_MA)/(nrow(data_df_MA_MA))*100
  amensalism_MA_MA=nrow(data_df_amensalism_MA_MA)/(nrow(data_df_MA_MA))*100
  neutral_MA_MA=(nrow(data_df_neutral_MA_MA))/(nrow(data_df_MA_MA))*100
  
  #strength
  mean_efficiency_cooperation_MA_MA=sum(as.numeric(data_df_cooperation_MA_MA$efficiency)/nrow(data_df_cooperation_MA_MA))
  mean_efficiency_competition_MA_MA=sum(as.numeric(data_df_competition_MA_MA$efficiency)/nrow(data_df_competition_MA_MA))
  mean_efficiency_exploitation_MA_MA=sum(as.numeric(data_df_exploitation_MA_MA$efficiency)/nrow(data_df_exploitation_MA_MA))
  mean_efficiency_commensalism_MA_MA=sum(as.numeric(data_df_commensalism_MA_MA$efficiency)/nrow(data_df_commensalism_MA_MA))
  mean_efficiency_amensalism_MA_MA=sum(as.numeric(data_df_amensalism_MA_MA$efficiency)/nrow(data_df_amensalism_MA_MA))
  mean_efficiency_neutral_MA_MA=sum(as.numeric(data_df_neutral_MA_MA$efficiency)/nrow(data_df_neutral_MA_MA))
  
  #OM_OM
  #composition
  data_df_cooperation_OM_OM=data_df_OM_OM[data_df_OM_OM$Mij > 0 & data_df_OM_OM$Mji > 0 ,]
  data_df_competition_OM_OM=data_df_OM_OM[data_df_OM_OM$Mij < 0 & data_df_OM_OM$Mji < 0 ,]
  data_df_exploitation_OM_OM=rbind(data_df_OM_OM[data_df_OM_OM$Mij > 0 & data_df_OM_OM$Mji < 0 ,],data_df_OM_OM[data_df_OM_OM$Mij < 0 & data_df_OM_OM$Mji > 0 ,])
  data_df_commensalism_OM_OM=rbind(data_df_OM_OM[data_df_OM_OM$Mij > 0 & data_df_OM_OM$Mji == 0 ,],data_df_OM_OM[data_df_OM_OM$Mij == 0 & data_df_OM_OM$Mji > 0 ,])
  data_df_amensalism_OM_OM=rbind(data_df_OM_OM[data_df_OM_OM$Mij < 0 & data_df_OM_OM$Mji == 0 ,],data_df_OM_OM[data_df_OM_OM$Mij == 0 & data_df_OM_OM$Mji < 0 ,])
  data_df_neutral_OM_OM=data_df_OM_OM[data_df_OM_OM$Mij == 0 & data_df_OM_OM$Mji == 0 ,]
  
  cooperation_OM_OM=nrow(data_df_cooperation_OM_OM)/(nrow(data_df_OM_OM))*100
  competition_OM_OM=nrow(data_df_competition_OM_OM)/(nrow(data_df_OM_OM))*100
  exploitation_OM_OM=nrow(data_df_exploitation_OM_OM)/(nrow(data_df_OM_OM))*100
  commensalism_OM_OM=nrow(data_df_commensalism_OM_OM)/(nrow(data_df_OM_OM))*100
  amensalism_OM_OM=nrow(data_df_amensalism_OM_OM)/(nrow(data_df_OM_OM))*100
  neutral_OM_OM=(nrow(data_df_neutral_OM_OM))/(nrow(data_df_OM_OM))*100
  
  #strength
  mean_efficiency_cooperation_OM_OM=sum(as.numeric(data_df_cooperation_OM_OM$efficiency)/nrow(data_df_cooperation_OM_OM))
  mean_efficiency_competition_OM_OM=sum(as.numeric(data_df_competition_OM_OM$efficiency)/nrow(data_df_competition_OM_OM))
  mean_efficiency_exploitation_OM_OM=sum(as.numeric(data_df_exploitation_OM_OM$efficiency)/nrow(data_df_exploitation_OM_OM))
  mean_efficiency_commensalism_OM_OM=sum(as.numeric(data_df_commensalism_OM_OM$efficiency)/nrow(data_df_commensalism_OM_OM))
  mean_efficiency_amensalism_OM_OM=sum(as.numeric(data_df_amensalism_OM_OM$efficiency)/nrow(data_df_amensalism_OM_OM))
  mean_efficiency_neutral_OM_OM=sum(as.numeric(data_df_neutral_OM_OM$efficiency)/nrow(data_df_neutral_OM_OM))
  
  #FB_OM
  #composition
  data_df_cooperation_FB_OM=data_df_FB_OM[data_df_FB_OM$Mij > 0 & data_df_FB_OM$Mji > 0 ,]
  data_df_competition_FB_OM=data_df_FB_OM[data_df_FB_OM$Mij < 0 & data_df_FB_OM$Mji < 0 ,]
  data_df_exploitation_FB_OM=rbind(data_df_FB_OM[data_df_FB_OM$Mij > 0 & data_df_FB_OM$Mji < 0 ,],data_df_FB_OM[data_df_FB_OM$Mij < 0 & data_df_FB_OM$Mji > 0 ,])
  data_df_commensalism_FB_OM=rbind(data_df_FB_OM[data_df_FB_OM$Mij > 0 & data_df_FB_OM$Mji == 0 ,],data_df_FB_OM[data_df_FB_OM$Mij == 0 & data_df_FB_OM$Mji > 0 ,])
  data_df_amensalism_FB_OM=rbind(data_df_FB_OM[data_df_FB_OM$Mij < 0 & data_df_FB_OM$Mji == 0 ,],data_df_FB_OM[data_df_FB_OM$Mij == 0 & data_df_FB_OM$Mji < 0 ,])
  data_df_neutral_FB_OM=data_df_FB_OM[data_df_FB_OM$Mij == 0 & data_df_FB_OM$Mji == 0 ,]
  
  cooperation_FB_OM=nrow(data_df_cooperation_FB_OM)/(nrow(data_df_FB_OM))*100
  competition_FB_OM=nrow(data_df_competition_FB_OM)/(nrow(data_df_FB_OM))*100
  exploitation_FB_OM=nrow(data_df_exploitation_FB_OM)/(nrow(data_df_FB_OM))*100
  commensalism_FB_OM=nrow(data_df_commensalism_FB_OM)/(nrow(data_df_FB_OM))*100
  amensalism_FB_OM=nrow(data_df_amensalism_FB_OM)/(nrow(data_df_FB_OM))*100
  neutral_FB_OM=(nrow(data_df_neutral_FB_OM))/(nrow(data_df_FB_OM))*100
  
  #strength
  mean_efficiency_cooperation_FB_OM=sum(as.numeric(data_df_cooperation_FB_OM$efficiency)/nrow(data_df_cooperation_FB_OM))
  mean_efficiency_competition_FB_OM=sum(as.numeric(data_df_competition_FB_OM$efficiency)/nrow(data_df_competition_FB_OM))
  mean_efficiency_exploitation_FB_OM=sum(as.numeric(data_df_exploitation_FB_OM$efficiency)/nrow(data_df_exploitation_FB_OM))
  mean_efficiency_commensalism_FB_OM=sum(as.numeric(data_df_commensalism_FB_OM$efficiency)/nrow(data_df_commensalism_FB_OM))
  mean_efficiency_amensalism_FB_OM=sum(as.numeric(data_df_amensalism_FB_OM$efficiency)/nrow(data_df_amensalism_FB_OM))
  mean_efficiency_neutral_FB_OM=sum(as.numeric(data_df_neutral_FB_OM$efficiency)/nrow(data_df_neutral_FB_OM))
  
  #SB_OM
  #composition
  data_df_cooperation_SB_OM=data_df_SB_OM[data_df_SB_OM$Mij > 0 & data_df_SB_OM$Mji > 0 ,]
  data_df_competition_SB_OM=data_df_SB_OM[data_df_SB_OM$Mij < 0 & data_df_SB_OM$Mji < 0 ,]
  data_df_exploitation_SB_OM=rbind(data_df_SB_OM[data_df_SB_OM$Mij > 0 & data_df_SB_OM$Mji < 0 ,],data_df_SB_OM[data_df_SB_OM$Mij < 0 & data_df_SB_OM$Mji > 0 ,])
  data_df_commensalism_SB_OM=rbind(data_df_SB_OM[data_df_SB_OM$Mij > 0 & data_df_SB_OM$Mji == 0 ,],data_df_SB_OM[data_df_SB_OM$Mij == 0 & data_df_SB_OM$Mji > 0 ,])
  data_df_amensalism_SB_OM=rbind(data_df_SB_OM[data_df_SB_OM$Mij < 0 & data_df_SB_OM$Mji == 0 ,],data_df_SB_OM[data_df_SB_OM$Mij == 0 & data_df_SB_OM$Mji < 0 ,])
  data_df_neutral_SB_OM=data_df_SB_OM[data_df_SB_OM$Mij == 0 & data_df_SB_OM$Mji == 0 ,]
  
  cooperation_SB_OM=nrow(data_df_cooperation_SB_OM)/(nrow(data_df_SB_OM))*100
  competition_SB_OM=nrow(data_df_competition_SB_OM)/(nrow(data_df_SB_OM))*100
  exploitation_SB_OM=nrow(data_df_exploitation_SB_OM)/(nrow(data_df_SB_OM))*100
  commensalism_SB_OM=nrow(data_df_commensalism_SB_OM)/(nrow(data_df_SB_OM))*100
  amensalism_SB_OM=nrow(data_df_amensalism_SB_OM)/(nrow(data_df_SB_OM))*100
  neutral_SB_OM=(nrow(data_df_neutral_SB_OM))/(nrow(data_df_SB_OM))*100
  
  #strength
  mean_efficiency_cooperation_SB_OM=sum(as.numeric(data_df_cooperation_SB_OM$efficiency)/nrow(data_df_cooperation_SB_OM))
  mean_efficiency_competition_SB_OM=sum(as.numeric(data_df_competition_SB_OM$efficiency)/nrow(data_df_competition_SB_OM))
  mean_efficiency_exploitation_SB_OM=sum(as.numeric(data_df_exploitation_SB_OM$efficiency)/nrow(data_df_exploitation_SB_OM))
  mean_efficiency_commensalism_SB_OM=sum(as.numeric(data_df_commensalism_SB_OM$efficiency)/nrow(data_df_commensalism_SB_OM))
  mean_efficiency_amensalism_SB_OM=sum(as.numeric(data_df_amensalism_SB_OM$efficiency)/nrow(data_df_amensalism_SB_OM))
  mean_efficiency_neutral_SB_OM=sum(as.numeric(data_df_neutral_SB_OM$efficiency)/nrow(data_df_neutral_SB_OM))
  
  #MA_OM
  #composition
  data_df_cooperation_MA_OM=data_df_MA_OM[data_df_MA_OM$Mij > 0 & data_df_MA_OM$Mji > 0 ,]
  data_df_competition_MA_OM=data_df_MA_OM[data_df_MA_OM$Mij < 0 & data_df_MA_OM$Mji < 0 ,]
  data_df_exploitation_MA_OM=rbind(data_df_MA_OM[data_df_MA_OM$Mij > 0 & data_df_MA_OM$Mji < 0 ,],data_df_MA_OM[data_df_MA_OM$Mij < 0 & data_df_MA_OM$Mji > 0 ,])
  data_df_commensalism_MA_OM=rbind(data_df_MA_OM[data_df_MA_OM$Mij > 0 & data_df_MA_OM$Mji == 0 ,],data_df_MA_OM[data_df_MA_OM$Mij == 0 & data_df_MA_OM$Mji > 0 ,])
  data_df_amensalism_MA_OM=rbind(data_df_MA_OM[data_df_MA_OM$Mij < 0 & data_df_MA_OM$Mji == 0 ,],data_df_MA_OM[data_df_MA_OM$Mij == 0 & data_df_MA_OM$Mji < 0 ,])
  data_df_neutral_MA_OM=data_df_MA_OM[data_df_MA_OM$Mij == 0 & data_df_MA_OM$Mji == 0 ,]
  
  cooperation_MA_OM=nrow(data_df_cooperation_MA_OM)/(nrow(data_df_MA_OM))*100
  competition_MA_OM=nrow(data_df_competition_MA_OM)/(nrow(data_df_MA_OM))*100
  exploitation_MA_OM=nrow(data_df_exploitation_MA_OM)/(nrow(data_df_MA_OM))*100
  commensalism_MA_OM=nrow(data_df_commensalism_MA_OM)/(nrow(data_df_MA_OM))*100
  amensalism_MA_OM=nrow(data_df_amensalism_MA_OM)/(nrow(data_df_MA_OM))*100
  neutral_MA_OM=(nrow(data_df_neutral_MA_OM))/(nrow(data_df_MA_OM))*100
  
  #strength
  mean_efficiency_cooperation_MA_OM=sum(as.numeric(data_df_cooperation_MA_OM$efficiency)/nrow(data_df_cooperation_MA_OM))
  mean_efficiency_competition_MA_OM=sum(as.numeric(data_df_competition_MA_OM$efficiency)/nrow(data_df_competition_MA_OM))
  mean_efficiency_exploitation_MA_OM=sum(as.numeric(data_df_exploitation_MA_OM$efficiency)/nrow(data_df_exploitation_MA_OM))
  mean_efficiency_commensalism_MA_OM=sum(as.numeric(data_df_commensalism_MA_OM$efficiency)/nrow(data_df_commensalism_MA_OM))
  mean_efficiency_amensalism_MA_OM=sum(as.numeric(data_df_amensalism_MA_OM$efficiency)/nrow(data_df_amensalism_MA_OM))
  mean_efficiency_neutral_MA_OM=sum(as.numeric(data_df_neutral_MA_OM$efficiency)/nrow(data_df_neutral_MA_OM))
  
  #Distribution
  #cooperation
  #
  Distribution_data_df_cooperation_FB_FB=data_df_cooperation[data_df_cooperation$i_data_type == "FB" & data_df_cooperation$j_data_type == "FB" ,]
  Distribution_data_df_cooperation_SB_SB=data_df_cooperation[data_df_cooperation$i_data_type == "SB" & data_df_cooperation$j_data_type == "SB" ,]
  Distribution_data_df_cooperation_MA_MA=data_df_cooperation[data_df_cooperation$i_data_type == "MA" & data_df_cooperation$j_data_type == "MA" ,]
  Distribution_data_df_cooperation_OM_OM=data_df_cooperation[data_df_cooperation$i_data_type == "OM" & data_df_cooperation$j_data_type == "OM" ,]
  #
  Distribution_data_df_cooperation_FB_SB=data_df_cooperation[data_df_cooperation$i_data_type == "FB" & data_df_cooperation$j_data_type == "SB" ,]
  Distribution_data_df_cooperation_SB_FB=data_df_cooperation[data_df_cooperation$i_data_type == "SB" & data_df_cooperation$j_data_type == "FB" ,]
  #
  Distribution_data_df_cooperation_FB_MA=data_df_cooperation[data_df_cooperation$i_data_type == "FB" & data_df_cooperation$j_data_type == "MA" ,]
  Distribution_data_df_cooperation_MA_FB=data_df_cooperation[data_df_cooperation$i_data_type == "MA" & data_df_cooperation$j_data_type == "FB" ,]
  #
  Distribution_data_df_cooperation_FB_OM=data_df_cooperation[data_df_cooperation$i_data_type == "FB" & data_df_cooperation$j_data_type == "OM" ,]
  Distribution_data_df_cooperation_OM_FB=data_df_cooperation[data_df_cooperation$i_data_type == "OM" & data_df_cooperation$j_data_type == "FB" ,]
  #
  Distribution_data_df_cooperation_SB_MA=data_df_cooperation[data_df_cooperation$i_data_type == "SB" & data_df_cooperation$j_data_type == "MA" ,]
  Distribution_data_df_cooperation_MA_SB=data_df_cooperation[data_df_cooperation$i_data_type == "MA" & data_df_cooperation$j_data_type == "SB" ,]
  #
  Distribution_data_df_cooperation_SB_OM=data_df_cooperation[data_df_cooperation$i_data_type == "SB" & data_df_cooperation$j_data_type == "OM" ,]
  Distribution_data_df_cooperation_OM_SB=data_df_cooperation[data_df_cooperation$i_data_type == "OM" & data_df_cooperation$j_data_type == "SB" ,]
  #
  Distribution_data_df_cooperation_MA_OM=data_df_cooperation[data_df_cooperation$i_data_type == "MA" & data_df_cooperation$j_data_type == "OM" ,]
  Distribution_data_df_cooperation_OM_MA=data_df_cooperation[data_df_cooperation$i_data_type == "OM" & data_df_cooperation$j_data_type == "MA" ,]
  ###
  Distribution_output_cooperation_FB_FB=(nrow(Distribution_data_df_cooperation_FB_FB))/(nrow(data_df_cooperation))*100
  Distribution_output_cooperation_SB_SB=(nrow(Distribution_data_df_cooperation_SB_SB))/(nrow(data_df_cooperation))*100
  Distribution_output_cooperation_MA_MA=(nrow(Distribution_data_df_cooperation_MA_MA))/(nrow(data_df_cooperation))*100
  Distribution_output_cooperation_OM_OM=(nrow(Distribution_data_df_cooperation_OM_OM))/(nrow(data_df_cooperation))*100
  Distribution_output_cooperation_FB_SB=((nrow(Distribution_data_df_cooperation_FB_SB)+nrow(Distribution_data_df_cooperation_SB_FB)))/(nrow(data_df_cooperation))*100
  Distribution_output_cooperation_FB_MA=((nrow(Distribution_data_df_cooperation_FB_MA)+nrow(Distribution_data_df_cooperation_MA_FB)))/(nrow(data_df_cooperation))*100
  Distribution_output_cooperation_FB_OM=((nrow(Distribution_data_df_cooperation_FB_OM)+nrow(Distribution_data_df_cooperation_OM_FB)))/(nrow(data_df_cooperation))*100
  Distribution_output_cooperation_SB_MA=((nrow(Distribution_data_df_cooperation_SB_MA)+nrow(Distribution_data_df_cooperation_MA_SB)))/(nrow(data_df_cooperation))*100
  Distribution_output_cooperation_SB_OM=((nrow(Distribution_data_df_cooperation_SB_OM)+nrow(Distribution_data_df_cooperation_OM_SB)))/(nrow(data_df_cooperation))*100
  Distribution_output_cooperation_MA_OM=((nrow(Distribution_data_df_cooperation_MA_OM)+nrow(Distribution_data_df_cooperation_OM_MA)))/(nrow(data_df_cooperation))*100
  #competition
  #
  Distribution_data_df_competition_FB_FB=data_df_competition[data_df_competition$i_data_type == "FB" & data_df_competition$j_data_type == "FB" ,]
  Distribution_data_df_competition_SB_SB=data_df_competition[data_df_competition$i_data_type == "SB" & data_df_competition$j_data_type == "SB" ,]
  Distribution_data_df_competition_MA_MA=data_df_competition[data_df_competition$i_data_type == "MA" & data_df_competition$j_data_type == "MA" ,]
  Distribution_data_df_competition_OM_OM=data_df_competition[data_df_competition$i_data_type == "OM" & data_df_competition$j_data_type == "OM" ,]
  #
  Distribution_data_df_competition_FB_SB=data_df_competition[data_df_competition$i_data_type == "FB" & data_df_competition$j_data_type == "SB" ,]
  Distribution_data_df_competition_SB_FB=data_df_competition[data_df_competition$i_data_type == "SB" & data_df_competition$j_data_type == "FB" ,]
  #
  Distribution_data_df_competition_FB_MA=data_df_competition[data_df_competition$i_data_type == "FB" & data_df_competition$j_data_type == "MA" ,]
  Distribution_data_df_competition_MA_FB=data_df_competition[data_df_competition$i_data_type == "MA" & data_df_competition$j_data_type == "FB" ,]
  #
  Distribution_data_df_competition_FB_OM=data_df_competition[data_df_competition$i_data_type == "FB" & data_df_competition$j_data_type == "OM" ,]
  Distribution_data_df_competition_OM_FB=data_df_competition[data_df_competition$i_data_type == "OM" & data_df_competition$j_data_type == "FB" ,]
  #
  Distribution_data_df_competition_SB_MA=data_df_competition[data_df_competition$i_data_type == "SB" & data_df_competition$j_data_type == "MA" ,]
  Distribution_data_df_competition_MA_SB=data_df_competition[data_df_competition$i_data_type == "MA" & data_df_competition$j_data_type == "SB" ,]
  #
  Distribution_data_df_competition_SB_OM=data_df_competition[data_df_competition$i_data_type == "SB" & data_df_competition$j_data_type == "OM" ,]
  Distribution_data_df_competition_OM_SB=data_df_competition[data_df_competition$i_data_type == "OM" & data_df_competition$j_data_type == "SB" ,]
  #
  Distribution_data_df_competition_MA_OM=data_df_competition[data_df_competition$i_data_type == "MA" & data_df_competition$j_data_type == "OM" ,]
  Distribution_data_df_competition_OM_MA=data_df_competition[data_df_competition$i_data_type == "OM" & data_df_competition$j_data_type == "MA" ,]
  ###
  Distribution_output_competition_FB_FB=(nrow(Distribution_data_df_competition_FB_FB))/(nrow(data_df_competition))*100
  Distribution_output_competition_SB_SB=(nrow(Distribution_data_df_competition_SB_SB))/(nrow(data_df_competition))*100
  Distribution_output_competition_MA_MA=(nrow(Distribution_data_df_competition_MA_MA))/(nrow(data_df_competition))*100
  Distribution_output_competition_OM_OM=(nrow(Distribution_data_df_competition_OM_OM))/(nrow(data_df_competition))*100
  Distribution_output_competition_FB_SB=((nrow(Distribution_data_df_competition_FB_SB)+nrow(Distribution_data_df_competition_SB_FB)))/(nrow(data_df_competition))*100
  Distribution_output_competition_FB_MA=((nrow(Distribution_data_df_competition_FB_MA)+nrow(Distribution_data_df_competition_MA_FB)))/(nrow(data_df_competition))*100
  Distribution_output_competition_FB_OM=((nrow(Distribution_data_df_competition_FB_OM)+nrow(Distribution_data_df_competition_OM_FB)))/(nrow(data_df_competition))*100
  Distribution_output_competition_SB_MA=((nrow(Distribution_data_df_competition_SB_MA)+nrow(Distribution_data_df_competition_MA_SB)))/(nrow(data_df_competition))*100
  Distribution_output_competition_SB_OM=((nrow(Distribution_data_df_competition_SB_OM)+nrow(Distribution_data_df_competition_OM_SB)))/(nrow(data_df_competition))*100
  Distribution_output_competition_MA_OM=((nrow(Distribution_data_df_competition_MA_OM)+nrow(Distribution_data_df_competition_OM_MA)))/(nrow(data_df_competition))*100
  #exploitation
  #
  Distribution_data_df_exploitation_FB_FB=data_df_exploitation[data_df_exploitation$i_data_type == "FB" & data_df_exploitation$j_data_type == "FB" ,]
  Distribution_data_df_exploitation_SB_SB=data_df_exploitation[data_df_exploitation$i_data_type == "SB" & data_df_exploitation$j_data_type == "SB" ,]
  Distribution_data_df_exploitation_MA_MA=data_df_exploitation[data_df_exploitation$i_data_type == "MA" & data_df_exploitation$j_data_type == "MA" ,]
  Distribution_data_df_exploitation_OM_OM=data_df_exploitation[data_df_exploitation$i_data_type == "OM" & data_df_exploitation$j_data_type == "OM" ,]
  #
  Distribution_data_df_exploitation_FB_SB=data_df_exploitation[data_df_exploitation$i_data_type == "FB" & data_df_exploitation$j_data_type == "SB" ,]
  Distribution_data_df_exploitation_SB_FB=data_df_exploitation[data_df_exploitation$i_data_type == "SB" & data_df_exploitation$j_data_type == "FB" ,]
  #
  Distribution_data_df_exploitation_FB_MA=data_df_exploitation[data_df_exploitation$i_data_type == "FB" & data_df_exploitation$j_data_type == "MA" ,]
  Distribution_data_df_exploitation_MA_FB=data_df_exploitation[data_df_exploitation$i_data_type == "MA" & data_df_exploitation$j_data_type == "FB" ,]
  #
  Distribution_data_df_exploitation_FB_OM=data_df_exploitation[data_df_exploitation$i_data_type == "FB" & data_df_exploitation$j_data_type == "OM" ,]
  Distribution_data_df_exploitation_OM_FB=data_df_exploitation[data_df_exploitation$i_data_type == "OM" & data_df_exploitation$j_data_type == "FB" ,]
  #
  Distribution_data_df_exploitation_SB_MA=data_df_exploitation[data_df_exploitation$i_data_type == "SB" & data_df_exploitation$j_data_type == "MA" ,]
  Distribution_data_df_exploitation_MA_SB=data_df_exploitation[data_df_exploitation$i_data_type == "MA" & data_df_exploitation$j_data_type == "SB" ,]
  #
  Distribution_data_df_exploitation_SB_OM=data_df_exploitation[data_df_exploitation$i_data_type == "SB" & data_df_exploitation$j_data_type == "OM" ,]
  Distribution_data_df_exploitation_OM_SB=data_df_exploitation[data_df_exploitation$i_data_type == "OM" & data_df_exploitation$j_data_type == "SB" ,]
  #
  Distribution_data_df_exploitation_MA_OM=data_df_exploitation[data_df_exploitation$i_data_type == "MA" & data_df_exploitation$j_data_type == "OM" ,]
  Distribution_data_df_exploitation_OM_MA=data_df_exploitation[data_df_exploitation$i_data_type == "OM" & data_df_exploitation$j_data_type == "MA" ,]
  ###
  Distribution_output_exploitation_FB_FB=(nrow(Distribution_data_df_exploitation_FB_FB))/(nrow(data_df_exploitation))*100
  Distribution_output_exploitation_SB_SB=(nrow(Distribution_data_df_exploitation_SB_SB))/(nrow(data_df_exploitation))*100
  Distribution_output_exploitation_MA_MA=(nrow(Distribution_data_df_exploitation_MA_MA))/(nrow(data_df_exploitation))*100
  Distribution_output_exploitation_OM_OM=(nrow(Distribution_data_df_exploitation_OM_OM))/(nrow(data_df_exploitation))*100
  Distribution_output_exploitation_FB_SB=((nrow(Distribution_data_df_exploitation_FB_SB)+nrow(Distribution_data_df_exploitation_SB_FB)))/(nrow(data_df_exploitation))*100
  Distribution_output_exploitation_FB_MA=((nrow(Distribution_data_df_exploitation_FB_MA)+nrow(Distribution_data_df_exploitation_MA_FB)))/(nrow(data_df_exploitation))*100
  Distribution_output_exploitation_FB_OM=((nrow(Distribution_data_df_exploitation_FB_OM)+nrow(Distribution_data_df_exploitation_OM_FB)))/(nrow(data_df_exploitation))*100
  Distribution_output_exploitation_SB_MA=((nrow(Distribution_data_df_exploitation_SB_MA)+nrow(Distribution_data_df_exploitation_MA_SB)))/(nrow(data_df_exploitation))*100
  Distribution_output_exploitation_SB_OM=((nrow(Distribution_data_df_exploitation_SB_OM)+nrow(Distribution_data_df_exploitation_OM_SB)))/(nrow(data_df_exploitation))*100
  Distribution_output_exploitation_MA_OM=((nrow(Distribution_data_df_exploitation_MA_OM)+nrow(Distribution_data_df_exploitation_OM_MA)))/(nrow(data_df_exploitation))*100
  #commensalism
  #
  Distribution_data_df_commensalism_FB_FB=data_df_commensalism[data_df_commensalism$i_data_type == "FB" & data_df_commensalism$j_data_type == "FB" ,]
  Distribution_data_df_commensalism_SB_SB=data_df_commensalism[data_df_commensalism$i_data_type == "SB" & data_df_commensalism$j_data_type == "SB" ,]
  Distribution_data_df_commensalism_MA_MA=data_df_commensalism[data_df_commensalism$i_data_type == "MA" & data_df_commensalism$j_data_type == "MA" ,]
  Distribution_data_df_commensalism_OM_OM=data_df_commensalism[data_df_commensalism$i_data_type == "OM" & data_df_commensalism$j_data_type == "OM" ,]
  #
  Distribution_data_df_commensalism_FB_SB=data_df_commensalism[data_df_commensalism$i_data_type == "FB" & data_df_commensalism$j_data_type == "SB" ,]
  Distribution_data_df_commensalism_SB_FB=data_df_commensalism[data_df_commensalism$i_data_type == "SB" & data_df_commensalism$j_data_type == "FB" ,]
  #
  Distribution_data_df_commensalism_FB_MA=data_df_commensalism[data_df_commensalism$i_data_type == "FB" & data_df_commensalism$j_data_type == "MA" ,]
  Distribution_data_df_commensalism_MA_FB=data_df_commensalism[data_df_commensalism$i_data_type == "MA" & data_df_commensalism$j_data_type == "FB" ,]
  #
  Distribution_data_df_commensalism_FB_OM=data_df_commensalism[data_df_commensalism$i_data_type == "FB" & data_df_commensalism$j_data_type == "OM" ,]
  Distribution_data_df_commensalism_OM_FB=data_df_commensalism[data_df_commensalism$i_data_type == "OM" & data_df_commensalism$j_data_type == "FB" ,]
  #
  Distribution_data_df_commensalism_SB_MA=data_df_commensalism[data_df_commensalism$i_data_type == "SB" & data_df_commensalism$j_data_type == "MA" ,]
  Distribution_data_df_commensalism_MA_SB=data_df_commensalism[data_df_commensalism$i_data_type == "MA" & data_df_commensalism$j_data_type == "SB" ,]
  #
  Distribution_data_df_commensalism_SB_OM=data_df_commensalism[data_df_commensalism$i_data_type == "SB" & data_df_commensalism$j_data_type == "OM" ,]
  Distribution_data_df_commensalism_OM_SB=data_df_commensalism[data_df_commensalism$i_data_type == "OM" & data_df_commensalism$j_data_type == "SB" ,]
  #
  Distribution_data_df_commensalism_MA_OM=data_df_commensalism[data_df_commensalism$i_data_type == "MA" & data_df_commensalism$j_data_type == "OM" ,]
  Distribution_data_df_commensalism_OM_MA=data_df_commensalism[data_df_commensalism$i_data_type == "OM" & data_df_commensalism$j_data_type == "MA" ,]
  ###
  Distribution_output_commensalism_FB_FB=(nrow(Distribution_data_df_commensalism_FB_FB))/(nrow(data_df_commensalism))*100
  Distribution_output_commensalism_SB_SB=(nrow(Distribution_data_df_commensalism_SB_SB))/(nrow(data_df_commensalism))*100
  Distribution_output_commensalism_MA_MA=(nrow(Distribution_data_df_commensalism_MA_MA))/(nrow(data_df_commensalism))*100
  Distribution_output_commensalism_OM_OM=(nrow(Distribution_data_df_commensalism_OM_OM))/(nrow(data_df_commensalism))*100
  Distribution_output_commensalism_FB_SB=((nrow(Distribution_data_df_commensalism_FB_SB)+nrow(Distribution_data_df_commensalism_SB_FB)))/(nrow(data_df_commensalism))*100
  Distribution_output_commensalism_FB_MA=((nrow(Distribution_data_df_commensalism_FB_MA)+nrow(Distribution_data_df_commensalism_MA_FB)))/(nrow(data_df_commensalism))*100
  Distribution_output_commensalism_FB_OM=((nrow(Distribution_data_df_commensalism_FB_OM)+nrow(Distribution_data_df_commensalism_OM_FB)))/(nrow(data_df_commensalism))*100
  Distribution_output_commensalism_SB_MA=((nrow(Distribution_data_df_commensalism_SB_MA)+nrow(Distribution_data_df_commensalism_MA_SB)))/(nrow(data_df_commensalism))*100
  Distribution_output_commensalism_SB_OM=((nrow(Distribution_data_df_commensalism_SB_OM)+nrow(Distribution_data_df_commensalism_OM_SB)))/(nrow(data_df_commensalism))*100
  Distribution_output_commensalism_MA_OM=((nrow(Distribution_data_df_commensalism_MA_OM)+nrow(Distribution_data_df_commensalism_OM_MA)))/(nrow(data_df_commensalism))*100
  #amensalism
  #
  Distribution_data_df_amensalism_FB_FB=data_df_amensalism[data_df_amensalism$i_data_type == "FB" & data_df_amensalism$j_data_type == "FB" ,]
  Distribution_data_df_amensalism_SB_SB=data_df_amensalism[data_df_amensalism$i_data_type == "SB" & data_df_amensalism$j_data_type == "SB" ,]
  Distribution_data_df_amensalism_MA_MA=data_df_amensalism[data_df_amensalism$i_data_type == "MA" & data_df_amensalism$j_data_type == "MA" ,]
  Distribution_data_df_amensalism_OM_OM=data_df_amensalism[data_df_amensalism$i_data_type == "OM" & data_df_amensalism$j_data_type == "OM" ,]
  #
  Distribution_data_df_amensalism_FB_SB=data_df_amensalism[data_df_amensalism$i_data_type == "FB" & data_df_amensalism$j_data_type == "SB" ,]
  Distribution_data_df_amensalism_SB_FB=data_df_amensalism[data_df_amensalism$i_data_type == "SB" & data_df_amensalism$j_data_type == "FB" ,]
  #
  Distribution_data_df_amensalism_FB_MA=data_df_amensalism[data_df_amensalism$i_data_type == "FB" & data_df_amensalism$j_data_type == "MA" ,]
  Distribution_data_df_amensalism_MA_FB=data_df_amensalism[data_df_amensalism$i_data_type == "MA" & data_df_amensalism$j_data_type == "FB" ,]
  #
  Distribution_data_df_amensalism_FB_OM=data_df_amensalism[data_df_amensalism$i_data_type == "FB" & data_df_amensalism$j_data_type == "OM" ,]
  Distribution_data_df_amensalism_OM_FB=data_df_amensalism[data_df_amensalism$i_data_type == "OM" & data_df_amensalism$j_data_type == "FB" ,]
  #
  Distribution_data_df_amensalism_SB_MA=data_df_amensalism[data_df_amensalism$i_data_type == "SB" & data_df_amensalism$j_data_type == "MA" ,]
  Distribution_data_df_amensalism_MA_SB=data_df_amensalism[data_df_amensalism$i_data_type == "MA" & data_df_amensalism$j_data_type == "SB" ,]
  #
  Distribution_data_df_amensalism_SB_OM=data_df_amensalism[data_df_amensalism$i_data_type == "SB" & data_df_amensalism$j_data_type == "OM" ,]
  Distribution_data_df_amensalism_OM_SB=data_df_amensalism[data_df_amensalism$i_data_type == "OM" & data_df_amensalism$j_data_type == "SB" ,]
  #
  Distribution_data_df_amensalism_MA_OM=data_df_amensalism[data_df_amensalism$i_data_type == "MA" & data_df_amensalism$j_data_type == "OM" ,]
  Distribution_data_df_amensalism_OM_MA=data_df_amensalism[data_df_amensalism$i_data_type == "OM" & data_df_amensalism$j_data_type == "MA" ,]
  ###
  Distribution_output_amensalism_FB_FB=(nrow(Distribution_data_df_amensalism_FB_FB))/(nrow(data_df_amensalism))*100
  Distribution_output_amensalism_SB_SB=(nrow(Distribution_data_df_amensalism_SB_SB))/(nrow(data_df_amensalism))*100
  Distribution_output_amensalism_MA_MA=(nrow(Distribution_data_df_amensalism_MA_MA))/(nrow(data_df_amensalism))*100
  Distribution_output_amensalism_OM_OM=(nrow(Distribution_data_df_amensalism_OM_OM))/(nrow(data_df_amensalism))*100
  Distribution_output_amensalism_FB_SB=((nrow(Distribution_data_df_amensalism_FB_SB)+nrow(Distribution_data_df_amensalism_SB_FB)))/(nrow(data_df_amensalism))*100
  Distribution_output_amensalism_FB_MA=((nrow(Distribution_data_df_amensalism_FB_MA)+nrow(Distribution_data_df_amensalism_MA_FB)))/(nrow(data_df_amensalism))*100
  Distribution_output_amensalism_FB_OM=((nrow(Distribution_data_df_amensalism_FB_OM)+nrow(Distribution_data_df_amensalism_OM_FB)))/(nrow(data_df_amensalism))*100
  Distribution_output_amensalism_SB_MA=((nrow(Distribution_data_df_amensalism_SB_MA)+nrow(Distribution_data_df_amensalism_MA_SB)))/(nrow(data_df_amensalism))*100
  Distribution_output_amensalism_SB_OM=((nrow(Distribution_data_df_amensalism_SB_OM)+nrow(Distribution_data_df_amensalism_OM_SB)))/(nrow(data_df_amensalism))*100
  Distribution_output_amensalism_MA_OM=((nrow(Distribution_data_df_amensalism_MA_OM)+nrow(Distribution_data_df_amensalism_OM_MA)))/(nrow(data_df_amensalism))*100
  #neutral
  #
  Distribution_data_df_neutral_FB_FB=data_df_neutral[data_df_neutral$i_data_type == "FB" & data_df_neutral$j_data_type == "FB" ,]
  Distribution_data_df_neutral_SB_SB=data_df_neutral[data_df_neutral$i_data_type == "SB" & data_df_neutral$j_data_type == "SB" ,]
  Distribution_data_df_neutral_MA_MA=data_df_neutral[data_df_neutral$i_data_type == "MA" & data_df_neutral$j_data_type == "MA" ,]
  Distribution_data_df_neutral_OM_OM=data_df_neutral[data_df_neutral$i_data_type == "OM" & data_df_neutral$j_data_type == "OM" ,]
  #
  Distribution_data_df_neutral_FB_SB=data_df_neutral[data_df_neutral$i_data_type == "FB" & data_df_neutral$j_data_type == "SB" ,]
  Distribution_data_df_neutral_SB_FB=data_df_neutral[data_df_neutral$i_data_type == "SB" & data_df_neutral$j_data_type == "FB" ,]
  #
  Distribution_data_df_neutral_FB_MA=data_df_neutral[data_df_neutral$i_data_type == "FB" & data_df_neutral$j_data_type == "MA" ,]
  Distribution_data_df_neutral_MA_FB=data_df_neutral[data_df_neutral$i_data_type == "MA" & data_df_neutral$j_data_type == "FB" ,]
  #
  Distribution_data_df_neutral_FB_OM=data_df_neutral[data_df_neutral$i_data_type == "FB" & data_df_neutral$j_data_type == "OM" ,]
  Distribution_data_df_neutral_OM_FB=data_df_neutral[data_df_neutral$i_data_type == "OM" & data_df_neutral$j_data_type == "FB" ,]
  #
  Distribution_data_df_neutral_SB_MA=data_df_neutral[data_df_neutral$i_data_type == "SB" & data_df_neutral$j_data_type == "MA" ,]
  Distribution_data_df_neutral_MA_SB=data_df_neutral[data_df_neutral$i_data_type == "MA" & data_df_neutral$j_data_type == "SB" ,]
  #
  Distribution_data_df_neutral_SB_OM=data_df_neutral[data_df_neutral$i_data_type == "SB" & data_df_neutral$j_data_type == "OM" ,]
  Distribution_data_df_neutral_OM_SB=data_df_neutral[data_df_neutral$i_data_type == "OM" & data_df_neutral$j_data_type == "SB" ,]
  #
  Distribution_data_df_neutral_MA_OM=data_df_neutral[data_df_neutral$i_data_type == "MA" & data_df_neutral$j_data_type == "OM" ,]
  Distribution_data_df_neutral_OM_MA=data_df_neutral[data_df_neutral$i_data_type == "OM" & data_df_neutral$j_data_type == "MA" ,]
  ###
  Distribution_output_neutral_FB_FB=(nrow(Distribution_data_df_neutral_FB_FB))/(nrow(data_df_neutral))*100
  Distribution_output_neutral_SB_SB=(nrow(Distribution_data_df_neutral_SB_SB))/(nrow(data_df_neutral))*100
  Distribution_output_neutral_MA_MA=(nrow(Distribution_data_df_neutral_MA_MA))/(nrow(data_df_neutral))*100
  Distribution_output_neutral_OM_OM=(nrow(Distribution_data_df_neutral_OM_OM))/(nrow(data_df_neutral))*100
  Distribution_output_neutral_FB_SB=((nrow(Distribution_data_df_neutral_FB_SB)+nrow(Distribution_data_df_neutral_SB_FB)))/(nrow(data_df_neutral))*100
  Distribution_output_neutral_FB_MA=((nrow(Distribution_data_df_neutral_FB_MA)+nrow(Distribution_data_df_neutral_MA_FB)))/(nrow(data_df_neutral))*100
  Distribution_output_neutral_FB_OM=((nrow(Distribution_data_df_neutral_FB_OM)+nrow(Distribution_data_df_neutral_OM_FB)))/(nrow(data_df_neutral))*100
  Distribution_output_neutral_SB_MA=((nrow(Distribution_data_df_neutral_SB_MA)+nrow(Distribution_data_df_neutral_MA_SB)))/(nrow(data_df_neutral))*100
  Distribution_output_neutral_SB_OM=((nrow(Distribution_data_df_neutral_SB_OM)+nrow(Distribution_data_df_neutral_OM_SB)))/(nrow(data_df_neutral))*100
  Distribution_output_neutral_MA_OM=((nrow(Distribution_data_df_neutral_MA_OM)+nrow(Distribution_data_df_neutral_OM_MA)))/(nrow(data_df_neutral))*100
  
  
  #OUTPUT
  reaction_type=c(cooperation,competition,exploitation,commensalism,amensalism,neutral,
                  mean_efficiency_cooperation,mean_efficiency_competition,mean_efficiency_exploitation,mean_efficiency_commensalism,mean_efficiency_amensalism,mean_efficiency_neutral,
                  cooperation_FB_SB,competition_FB_SB,exploitation_FB_SB,commensalism_FB_SB,amensalism_FB_SB,neutral_FB_SB,
                  mean_efficiency_cooperation_FB_SB,mean_efficiency_competition_FB_SB,mean_efficiency_exploitation_FB_SB,mean_efficiency_commensalism_FB_SB,mean_efficiency_amensalism_FB_SB,mean_efficiency_neutral_FB_SB,
                  cooperation_FB_MA,competition_FB_MA,exploitation_FB_MA,commensalism_FB_MA,amensalism_FB_MA,neutral_FB_MA,
                  mean_efficiency_cooperation_FB_MA,mean_efficiency_competition_FB_MA,mean_efficiency_exploitation_FB_MA,mean_efficiency_commensalism_FB_MA,mean_efficiency_amensalism_FB_MA,mean_efficiency_neutral_FB_MA,
                  cooperation_FB_OM,competition_FB_OM,exploitation_FB_OM,commensalism_FB_OM,amensalism_FB_OM,neutral_FB_OM,
                  mean_efficiency_cooperation_FB_OM,mean_efficiency_competition_FB_OM,mean_efficiency_exploitation_FB_OM,mean_efficiency_commensalism_FB_OM,mean_efficiency_amensalism_FB_OM,mean_efficiency_neutral_FB_OM,
                  cooperation_SB_MA,competition_SB_MA,exploitation_SB_MA,commensalism_SB_MA,amensalism_SB_MA,neutral_SB_MA,
                  mean_efficiency_cooperation_SB_MA,mean_efficiency_competition_SB_MA,mean_efficiency_exploitation_SB_MA,mean_efficiency_commensalism_SB_MA,mean_efficiency_amensalism_SB_MA,mean_efficiency_neutral_SB_MA,
                  cooperation_SB_OM,competition_SB_OM,exploitation_SB_OM,commensalism_SB_OM,amensalism_SB_OM,neutral_SB_OM,
                  mean_efficiency_cooperation_SB_OM,mean_efficiency_competition_SB_OM,mean_efficiency_exploitation_SB_OM,mean_efficiency_commensalism_SB_OM,mean_efficiency_amensalism_SB_OM,mean_efficiency_neutral_SB_OM,
                  cooperation_MA_OM,competition_MA_OM,exploitation_MA_OM,commensalism_MA_OM,amensalism_MA_OM,neutral_MA_OM,
                  mean_efficiency_cooperation_MA_OM,mean_efficiency_competition_MA_OM,mean_efficiency_exploitation_MA_OM,mean_efficiency_commensalism_MA_OM,mean_efficiency_amensalism_MA_OM,mean_efficiency_neutral_MA_OM,
                  cooperation_FB_FB,competition_FB_FB,exploitation_FB_FB,commensalism_FB_FB,amensalism_FB_FB,neutral_FB_FB,
                  mean_efficiency_cooperation_FB_FB,mean_efficiency_competition_FB_FB,mean_efficiency_exploitation_FB_FB,mean_efficiency_commensalism_FB_FB,mean_efficiency_amensalism_FB_FB,mean_efficiency_neutral_FB_FB,
                  cooperation_SB_SB,competition_SB_SB,exploitation_SB_SB,commensalism_SB_SB,amensalism_SB_SB,neutral_SB_SB,
                  mean_efficiency_cooperation_SB_SB,mean_efficiency_competition_SB_SB,mean_efficiency_exploitation_SB_SB,mean_efficiency_commensalism_SB_SB,mean_efficiency_amensalism_SB_SB,mean_efficiency_neutral_SB_SB,
                  cooperation_MA_MA,competition_MA_MA,exploitation_MA_MA,commensalism_MA_MA,amensalism_MA_MA,neutral_MA_MA,
                  mean_efficiency_cooperation_MA_MA,mean_efficiency_competition_MA_MA,mean_efficiency_exploitation_MA_MA,mean_efficiency_commensalism_MA_MA,mean_efficiency_amensalism_MA_MA,mean_efficiency_neutral_MA_MA,
                  cooperation_OM_OM,competition_OM_OM,exploitation_OM_OM,commensalism_OM_OM,amensalism_OM_OM,neutral_OM_OM,
                  mean_efficiency_cooperation_OM_OM,mean_efficiency_competition_OM_OM,mean_efficiency_exploitation_OM_OM,mean_efficiency_commensalism_OM_OM,mean_efficiency_amensalism_OM_OM,mean_efficiency_neutral_OM_OM,
                  Distribution_output_cooperation_FB_FB,Distribution_output_cooperation_SB_SB,Distribution_output_cooperation_MA_MA,Distribution_output_cooperation_OM_OM,Distribution_output_cooperation_FB_SB,Distribution_output_cooperation_FB_MA,Distribution_output_cooperation_FB_OM,Distribution_output_cooperation_SB_MA,Distribution_output_cooperation_SB_OM,Distribution_output_cooperation_MA_OM,
                  Distribution_output_competition_FB_FB,Distribution_output_competition_SB_SB,Distribution_output_competition_MA_MA,Distribution_output_competition_OM_OM,Distribution_output_competition_FB_SB,Distribution_output_competition_FB_MA,Distribution_output_competition_FB_OM,Distribution_output_competition_SB_MA,Distribution_output_competition_SB_OM,Distribution_output_competition_MA_OM,
                  Distribution_output_exploitation_FB_FB,Distribution_output_exploitation_SB_SB,Distribution_output_exploitation_MA_MA,Distribution_output_exploitation_OM_OM,Distribution_output_exploitation_FB_SB,Distribution_output_exploitation_FB_MA,Distribution_output_exploitation_FB_OM,Distribution_output_exploitation_SB_MA,Distribution_output_exploitation_SB_OM,Distribution_output_exploitation_MA_OM,
                  Distribution_output_commensalism_FB_FB,Distribution_output_commensalism_SB_SB,Distribution_output_commensalism_MA_MA,Distribution_output_commensalism_OM_OM,Distribution_output_commensalism_FB_SB,Distribution_output_commensalism_FB_MA,Distribution_output_commensalism_FB_OM,Distribution_output_commensalism_SB_MA,Distribution_output_commensalism_SB_OM,Distribution_output_commensalism_MA_OM,
                  Distribution_output_amensalism_FB_FB,Distribution_output_amensalism_SB_SB,Distribution_output_amensalism_MA_MA,Distribution_output_amensalism_OM_OM,Distribution_output_amensalism_FB_SB,Distribution_output_amensalism_FB_MA,Distribution_output_amensalism_FB_OM,Distribution_output_amensalism_SB_MA,Distribution_output_amensalism_SB_OM,Distribution_output_amensalism_MA_OM,
                  Distribution_output_neutral_FB_FB,Distribution_output_neutral_SB_SB,Distribution_output_neutral_MA_MA,Distribution_output_neutral_OM_OM,Distribution_output_neutral_FB_SB,Distribution_output_neutral_FB_MA,Distribution_output_neutral_FB_OM,Distribution_output_neutral_SB_MA,Distribution_output_neutral_SB_OM,Distribution_output_neutral_MA_OM
                  
                  
  )
  
  return(list(reaction_combination=data_bining,reaction_type=reaction_type))
  }

#計算
#####
result3<- intertype(data3,3)
result4<- intertype(data4,4)
result5<- intertype(data5,5)
result6<- intertype(data6,6)
result7<- intertype(data7,7)
result8<- intertype(data8,8)
result9<- intertype(data9,9)
result10<- intertype(data10,10)
result11<- intertype(data11,11)
result12<- intertype(data12,12)
result13<- intertype(data13,13)
result14<- intertype(data14,14)
result15<- intertype(data15,15)
result16<- intertype(data16,16)
result17<- intertype(data17,17)
result18<- intertype(data18,18)
result19<- intertype(data19,19)
result20<- intertype(data20,20)
result21<- intertype(data21,21)
result22<- intertype(data22,22)
result23<- intertype(data23,23)
result24<- intertype(data24,24)
result25<- intertype(data25,25)
result26<- intertype(data26,26)
result27<- intertype(data27,27)
result28<- intertype(data28,28)
result29<- intertype(data29,29)
result30<- intertype(data30,30)
result31<- intertype(data31,31)
result32<- intertype(data32,32)
result33<- intertype(data33,33)
result34<- intertype(data34,34)
result35<- intertype(data35,35)
result36<- intertype(data36,36)
result37<- intertype(data37,37)
result38<- intertype(data38,38)
result39<- intertype(data39,39)
result40<- intertype(data40,40)
result41<- intertype(data41,41)
result42<- intertype(data42,42)
result43<- intertype(data43,43)
result44<- intertype(data44,44)
result45<- intertype(data45,45)
result46<- intertype(data46,46)
result47<- intertype(data47,47)
result48<- intertype(data48,48)
result49<- intertype(data49,49)
result50<- intertype(data50,50)
result51<- intertype(data51,51)
result52<- intertype(data52,52)
result53<- intertype(data53,53)
result54<- intertype(data54,54)
result55<- intertype(data55,55)
result56<- intertype(data56,56)
result57<- intertype(data57,57)
result58<- intertype(data58,58)
result59<- intertype(data59,59)
result60<- intertype(data60,60)
result61<- intertype(data61,61)
result62<- intertype(data62,62)
result63<- intertype(data63,63)
result64<- intertype(data64,64)
result65<- intertype(data65,65)
result66<- intertype(data66,66)
result67<- intertype(data67,67)
result68<- intertype(data68,68)
result69<- intertype(data69,69)
result70<- intertype(data70,70)
result71<- intertype(data71,71)
result72<- intertype(data72,72)
result73<- intertype(data73,73)
result74<- intertype(data74,74)
result75<- intertype(data75,75)
result76<- intertype(data76,76)
result77<- intertype(data77,77)
result78<- intertype(data78,78)
result79<- intertype(data79,79)
result80<- intertype(data80,80)
result81<- intertype(data81,81)
result82<- intertype(data82,82)
result83<- intertype(data83,83)
result84<- intertype(data84,84)
result85<- intertype(data85,85)
result86<- intertype(data86,86)
result87<- intertype(data87,87)
result88<- intertype(data88,88)
result89<- intertype(data89,89)
result90<- intertype(data90,90)
result91<- intertype(data91,91)
result92<- intertype(data92,92)
result93<- intertype(data93,93)
result94<- intertype(data94,94)
result95<- intertype(data95,95)
result96<- intertype(data96,96)
result97<- intertype(data97,97)
result98<- intertype(data98,98)
result99<- intertype(data99,99)
result100<- intertype(data100,100)
result101<- intertype(data101,101)
result102<- intertype(data102,102)
result103<- intertype(data103,103)
result104<- intertype(data104,104)
result105<- intertype(data105,105)
result106<- intertype(data106,106)
result107<- intertype(data107,107)
result108<- intertype(data108,108)
result109<- intertype(data109,109)




#
save.wd="D:/xxxxxx/output_v2" # folder path, where to save the output_v2 files
setwd(save.wd)


######
#column is species;row is day ;t() refer to inverse matrix
interaction_type = (t(cbind(result3$reaction_type,
                            result4$reaction_type,
                            result5$reaction_type,
                            result6$reaction_type,
                            result7$reaction_type,
                            result8$reaction_type,
                            result9$reaction_type,
                            result10$reaction_type,
                            result11$reaction_type,
                            result12$reaction_type,
                            result13$reaction_type,
                            result14$reaction_type,
                            result15$reaction_type,
                            result16$reaction_type,
                            result17$reaction_type,
                            result18$reaction_type,
                            result19$reaction_type,
                            result20$reaction_type,
                            result21$reaction_type,
                            result22$reaction_type,
                            result23$reaction_type,
                            result24$reaction_type,
                            result25$reaction_type,
                            result26$reaction_type,
                            result27$reaction_type,
                            result28$reaction_type,
                            result29$reaction_type,
                            result30$reaction_type,
                            result31$reaction_type,
                            result32$reaction_type,
                            result33$reaction_type,
                            result34$reaction_type,
                            result35$reaction_type,
                            result36$reaction_type,
                            result37$reaction_type,
                            result38$reaction_type,
                            result39$reaction_type,
                            result40$reaction_type,
                            result41$reaction_type,
                            result42$reaction_type,
                            result43$reaction_type,
                            result44$reaction_type,
                            result45$reaction_type,
                            result46$reaction_type,
                            result47$reaction_type,
                            result48$reaction_type,
                            result49$reaction_type,
                            result50$reaction_type,
                            result51$reaction_type,
                            result52$reaction_type,
                            result53$reaction_type,
                            result54$reaction_type,
                            result55$reaction_type,
                            result56$reaction_type,
                            result57$reaction_type,
                            result58$reaction_type,
                            result59$reaction_type,
                            result60$reaction_type,
                            result61$reaction_type,
                            result62$reaction_type,
                            result63$reaction_type,
                            result64$reaction_type,
                            result65$reaction_type,
                            result66$reaction_type,
                            result67$reaction_type,
                            result68$reaction_type,
                            result69$reaction_type,
                            result70$reaction_type,
                            result71$reaction_type,
                            result72$reaction_type,
                            result73$reaction_type,
                            result74$reaction_type,
                            result75$reaction_type,
                            result76$reaction_type,
                            result77$reaction_type,
                            result78$reaction_type,
                            result79$reaction_type,
                            result80$reaction_type,
                            result81$reaction_type,
                            result82$reaction_type,
                            result83$reaction_type,
                            result84$reaction_type,
                            result85$reaction_type,
                            result86$reaction_type,
                            result87$reaction_type,
                            result88$reaction_type,
                            result89$reaction_type,
                            result90$reaction_type,
                            result91$reaction_type,
                            result92$reaction_type,
                            result93$reaction_type,
                            result94$reaction_type,
                            result95$reaction_type,
                            result96$reaction_type,
                            result97$reaction_type,
                            result98$reaction_type,
                            result99$reaction_type,
                            result100$reaction_type,
                            result101$reaction_type,
                            result102$reaction_type,
                            result103$reaction_type,
                            result104$reaction_type,
                            result105$reaction_type,
                            result106$reaction_type,
                            result107$reaction_type,
                            result108$reaction_type,
                            result109$reaction_type)))

colnames(interaction_type)=c("cooperation","competition","exploitation","commensalism","amensalism","neutral",
                             "mean_efficiency_cooperation","mean_efficiency_competition","mean_efficiency_exploitation","mean_efficiency_commensalism","mean_efficiency_amensalism","mean_efficiency_neutral",
                             "cooperation_FB_SB","competition_FB_SB","exploitation_FB_SB","commensalism_FB_SB","amensalism_FB_SB","neutral_FB_SB",
                             "mean_efficiency_cooperation_FB_SB","mean_efficiency_competition_FB_SB","mean_efficiency_exploitation_FB_SB","mean_efficiency_commensalism_FB_SB","mean_efficiency_amensalism_FB_SB","mean_efficiency_neutral_FB_SB",
                             "cooperation_FB_MA","competition_FB_MA","exploitation_FB_MA","commensalism_FB_MA","amensalism_FB_MA","neutral_FB_MA",
                             "mean_efficiency_cooperation_FB_MA","mean_efficiency_competition_FB_MA","mean_efficiency_exploitation_FB_MA","mean_efficiency_commensalism_FB_MA","mean_efficiency_amensalism_FB_MA","mean_efficiency_neutral_FB_MA",
                             "cooperation_FB_OM","competition_FB_OM","exploitation_FB_OM","commensalism_FB_OM","amensalism_FB_OM","neutral_FB_OM",
                             "mean_efficiency_cooperation_FB_OM","mean_efficiency_competition_FB_OM","mean_efficiency_exploitation_FB_OM","mean_efficiency_commensalism_FB_OM","mean_efficiency_amensalism_FB_OM","mean_efficiency_neutral_FB_OM",
                             "cooperation_SB_MA","competition_SB_MA","exploitation_SB_MA","commensalism_SB_MA","amensalism_SB_MA","neutral_SB_MA",
                             "mean_efficiency_cooperation_SB_MA","mean_efficiency_competition_SB_MA","mean_efficiency_exploitation_SB_MA","mean_efficiency_commensalism_SB_MA","mean_efficiency_amensalism_SB_MA","mean_efficiency_neutral_SB_MA",
                             "cooperation_SB_OM","competition_SB_OM","exploitation_SB_OM","commensalism_SB_OM","amensalism_SB_OM","neutral_SB_OM",
                             "mean_efficiency_cooperation_SB_OM","mean_efficiency_competition_SB_OM","mean_efficiency_exploitation_SB_OM","mean_efficiency_commensalism_SB_OM","mean_efficiency_amensalism_SB_OM","mean_efficiency_neutral_SB_OM",
                             "cooperation_MA_OM","competition_MA_OM","exploitation_MA_OM","commensalism_MA_OM","amensalism_MA_OM","neutral_MA_OM",
                             "mean_efficiency_cooperation_MA_OM","mean_efficiency_competition_MA_OM","mean_efficiency_exploitation_MA_OM","mean_efficiency_commensalism_MA_OM","mean_efficiency_amensalism_MA_OM","mean_efficiency_neutral_MA_OM",
                             "cooperation_FB_FB","competition_FB_FB","exploitation_FB_FB","commensalism_FB_FB","amensalism_FB_FB","neutral_FB_FB",
                             "mean_efficiency_cooperation_FB_FB","mean_efficiency_competition_FB_FB","mean_efficiency_exploitation_FB_FB","mean_efficiency_commensalism_FB_FB","mean_efficiency_amensalism_FB_FB","mean_efficiency_neutral_FB_FB",
                             "cooperation_SB_SB","competition_SB_SB","exploitation_SB_SB","commensalism_SB_SB","amensalism_SB_SB","neutral_SB_SB",
                             "mean_efficiency_cooperation_SB_SB","mean_efficiency_competition_SB_SB","mean_efficiency_exploitation_SB_SB","mean_efficiency_commensalism_SB_SB","mean_efficiency_amensalism_SB_SB","mean_efficiency_neutral_SB_SB",
                             "cooperation_MA_MA","competition_MA_MA","exploitation_MA_MA","commensalism_MA_MA","amensalism_MA_MA","neutral_MA_MA",
                             "mean_efficiency_cooperation_MA_MA","mean_efficiency_competition_MA_MA","mean_efficiency_exploitation_MA_MA","mean_efficiency_commensalism_MA_MA","mean_efficiency_amensalism_MA_MA","mean_efficiency_neutral_MA_MA",
                             "cooperation_OM_OM","competition_OM_OM","exploitation_OM_OM","commensalism_OM_OM","amensalism_OM_OM","neutral_OM_OM",
                             "mean_efficiency_cooperation_OM_OM","mean_efficiency_competition_OM_OM","mean_efficiency_exploitation_OM_OM","mean_efficiency_commensalism_OM_OM","mean_efficiency_amensalism_OM_OM","mean_efficiency_neutral_OM_OM",
                             "cooperation_FB_FB","cooperation_SB_SB","cooperation_MA_MA","cooperation_OM_OM","cooperation_FB_SB","cooperation_FB_MA","cooperation_FB_OM","cooperation_SB_MA","cooperation_SB_OM","cooperation_MA_OM",
                             "competition_FB_FB","competition_SB_SB","competition_MA_MA","competition_OM_OM","competition_FB_SB","competition_FB_MA","competition_FB_OM","competition_SB_MA","competition_SB_OM","competition_MA_OM",
                             "exploitation_FB_FB","exploitation_SB_SB","exploitation_MA_MA","exploitation_OM_OM","exploitation_FB_SB","exploitation_FB_MA","exploitation_FB_OM","exploitation_SB_MA","exploitation_SB_OM","exploitation_MA_OM",
                             "commensalism_FB_FB","commensalism_SB_SB","commensalism_MA_MA","commensalism_OM_OM","commensalism_FB_SB","commensalism_FB_MA","commensalism_FB_OM","commensalism_SB_MA","commensalism_SB_OM","commensalism_MA_OM",
                             "amensalism_FB_FB","amensalism_SB_SB","amensalism_MA_MA","amensalism_OM_OM","amensalism_FB_SB","amensalism_FB_MA","amensalism_FB_OM","amensalism_SB_MA","amensalism_SB_OM","amensalism_MA_OM",
                             "neutral_FB_FB","neutral_SB_SB","neutral_MA_MA","neutral_OM_OM","neutral_FB_SB","neutral_FB_MA","neutral_FB_OM","neutral_SB_MA","neutral_SB_OM","neutral_MA_OM"
                             )
rownames(interaction_type)=c(3:109)


write.csv(interaction_type,"interaction_type_20231010_v5_three_functional_group_subset_all_Mij_revised_H2_final_(modified_function).csv")



interaction_bining = (rbind(result3$reaction_combination,
                            result4$reaction_combination,
                            result5$reaction_combination,
                            result6$reaction_combination,
                            result7$reaction_combination,
                            result8$reaction_combination,
                            result9$reaction_combination,
                            result10$reaction_combination,
                            result11$reaction_combination,
                            result12$reaction_combination,
                            result13$reaction_combination,
                            result14$reaction_combination,
                            result15$reaction_combination,
                            result16$reaction_combination,
                            result17$reaction_combination,
                            result18$reaction_combination,
                            result19$reaction_combination,
                            result20$reaction_combination,
                            result21$reaction_combination,
                            result22$reaction_combination,
                            result23$reaction_combination,
                            result24$reaction_combination,
                            result25$reaction_combination,
                            result26$reaction_combination,
                            result27$reaction_combination,
                            result28$reaction_combination,
                            result29$reaction_combination,
                            result30$reaction_combination,
                            result31$reaction_combination,
                            result32$reaction_combination,
                            result33$reaction_combination,
                            result34$reaction_combination,
                            result35$reaction_combination,
                            result36$reaction_combination,
                            result37$reaction_combination,
                            result38$reaction_combination,
                            result39$reaction_combination,
                            result40$reaction_combination,
                            result41$reaction_combination,
                            result42$reaction_combination,
                            result43$reaction_combination,
                            result44$reaction_combination,
                            result45$reaction_combination,
                            result46$reaction_combination,
                            result47$reaction_combination,
                            result48$reaction_combination,
                            result49$reaction_combination,
                            result50$reaction_combination,
                            result51$reaction_combination,
                            result52$reaction_combination,
                            result53$reaction_combination,
                            result54$reaction_combination,
                            result55$reaction_combination,
                            result56$reaction_combination,
                            result57$reaction_combination,
                            result58$reaction_combination,
                            result59$reaction_combination,
                            result60$reaction_combination,
                            result61$reaction_combination,
                            result62$reaction_combination,
                            result63$reaction_combination,
                            result64$reaction_combination,
                            result65$reaction_combination,
                            result66$reaction_combination,
                            result67$reaction_combination,
                            result68$reaction_combination,
                            result69$reaction_combination,
                            result70$reaction_combination,
                            result71$reaction_combination,
                            result72$reaction_combination,
                            result73$reaction_combination,
                            result74$reaction_combination,
                            result75$reaction_combination,
                            result76$reaction_combination,
                            result77$reaction_combination,
                            result78$reaction_combination,
                            result79$reaction_combination,
                            result80$reaction_combination,
                            result81$reaction_combination,
                            result82$reaction_combination,
                            result83$reaction_combination,
                            result84$reaction_combination,
                            result85$reaction_combination,
                            result86$reaction_combination,
                            result87$reaction_combination,
                            result88$reaction_combination,
                            result89$reaction_combination,
                            result90$reaction_combination,
                            result91$reaction_combination,
                            result92$reaction_combination,
                            result93$reaction_combination,
                            result94$reaction_combination,
                            result95$reaction_combination,
                            result96$reaction_combination,
                            result97$reaction_combination,
                            result98$reaction_combination,
                            result99$reaction_combination,
                            result100$reaction_combination,
                            result101$reaction_combination,
                            result102$reaction_combination,
                            result103$reaction_combination,
                            result104$reaction_combination,
                            result105$reaction_combination,
                            result106$reaction_combination,
                            result107$reaction_combination,
                            result108$reaction_combination,
                            result109$reaction_combination))
write.csv(interaction_bining,"interaction_bining_20231010_v5_three_functional_group_subset_all_Mij_revised_H2_final_(modified_function).csv")
