rm(list=ls()) 


#data in Figure4_data.csv is collected from 
#D:/xxxxxx/output_H2_final/UASB_trace.csv
#D:/xxxxxx/output_v2/melt_summary_20231030_v4_H2_revised.csv
#D:/xxxxxx/output_v2/interaction_complexity.csv

data.plot <- read.csv("D:/xxxxxx/Figure4_data.csv", header=T, sep=",")



library(ggplot2)

#p_Tr
p_Tr = 
  ggplot(data.plot,aes(x=day)) + 
  geom_line(aes(y=Tr_Level6),color="black",size=1.2) +
  xlab("Day")+
  ylab("Instability (Trace)") +     
  geom_vline(xintercept=40,color="gray45",size=1,linetype = "dashed")+ 
  geom_vline(xintercept=80,color="gray45",size=1,linetype = "dashed")+ 
  theme(panel.grid = element_blank(), 
        panel.background = element_rect(size = 1,color = 'black',linetype = "solid", fill = 'transparent'), 
        legend.title = element_blank(), 
        legend.key = element_rect(fill = 'transparent'))+
  scale_x_continuous(limits = c(0, 110),breaks=seq(0,110,20)) + 
  scale_y_continuous(limits = c(44, 77),breaks=seq(45,75,5)) + 
  theme(axis.text.y = element_text(colour = "black", size = 16), 
        axis.text.x = element_text(colour = "black", size = 16), 
        legend.text = element_text(size = 20, colour ="black"), 
        axis.title.y = element_text( size = 20), 
        axis.title.x = element_text( size = 20, colour = "black"), 
        #axis.title.x = element_blank(),#hide x axis label
        legend.title = element_text(size = 24, colour = "black"), 
        axis.ticks=element_line(colour="black",size=1,linetype=1), #Modify the size and color of the line label on the axis
        axis.ticks.length=unit(0.4,"lines"),
        panel.background = element_blank(), panel.border = element_rect(colour = "black", fill = NA, size = 2),#框線
        legend.key=element_blank())


#P_MIS_TIME

p_shannon = 
  ggplot(data.plot,aes(x=day)) + 
  geom_line(aes(y=shannon_interaction_type),color="black",size=1.2) +
  xlab("Day")+
  #ylab(expression(atop("Shannon", paste("(Interaction type)"))))+
  ylab("Interaction complexity") + 
  geom_vline(xintercept=40,color="gray45",size=1,linetype = "dashed")+ 
  geom_vline(xintercept=80,color="gray45",size=1,linetype = "dashed")+ 
  theme(panel.grid = element_blank(), 
        panel.background = element_rect(size = 1,color = 'black',linetype = "solid", fill = 'transparent'), 
        legend.title = element_blank(), 
        legend.key = element_rect(fill = 'transparent'))+
  scale_x_continuous(limits = c(0, 110),breaks=seq(0,110,20)) + 
  #scale_y_continuous(limits = c(0, 0.02),breaks=seq(0,0.02,0.01)) + 
  theme(axis.text.y = element_text(colour = "black", size = 16), 
        axis.text.x = element_text(colour = "black", size = 16), 
        legend.text = element_text(size = 20, colour ="black"), 
        #legend.position = c(0.9, 0.85), 
        axis.title.y = element_text( size = 20), 
        axis.title.x = element_text( size = 20, colour = "black"), 
        #axis.title.x = element_blank(),#hide x axis label
        legend.title = element_text(size = 24, colour = "black"), 
        axis.ticks=element_line(colour="black",size=1,linetype=1), #Modify the size and color of the line label on the axis
        axis.ticks.length=unit(0.4,"lines"),
        panel.background = element_blank(), panel.border = element_rect(colour = "black", fill = NA, size = 2),#框線
        legend.key=element_blank())


#p_strength
library(reshape2) #package for melt function 
data.plot.weak=data.plot[,c("day",'MeanIS_Positive','MeanIS_Negative')]
colnames(data.plot.weak)=c("day","Positive","Negative")
melt_data.data.plot.weak <- melt(data.plot.weak,id = c("day")) 

library(ggplot2)

p_strength = 
  ggplot(melt_data.data.plot.weak, aes(x=as.numeric(day), y=as.numeric(value), color=as.factor(variable))) + 
  geom_line(size=1.2) +
  xlab("Day")+
  ylab("Mean Strength") +      
  geom_vline(xintercept=40,color="gray45",size=1,linetype = "dashed")+ 
  geom_vline(xintercept=80,color="gray45",size=1,linetype = "dashed")+ 
  theme(panel.grid = element_blank(), 
        panel.background = element_rect(size = 1,color = 'black',linetype = "solid", fill = 'transparent'), 
        legend.title = element_blank(), 
        legend.key = element_rect(fill = 'transparent'))+
  scale_x_continuous(limits = c(0, 110),breaks=seq(0,110,20)) + 
  #scale_y_continuous(limits = c(90, 98),breaks=seq(90,98,2)) + 
  theme(axis.text.y = element_text(colour = "black", size = 16), 
        axis.text.x = element_text(colour = "black", size = 16), 
        legend.text = element_text(size = 16, colour ="black"), 
        legend.position = c(0.75, 0.2), 
        axis.title.y = element_text( size = 20), 
        axis.title.x = element_text( size = 20, colour = "black"), 
        #axis.title.x = element_blank(),#hide x axis label
        legend.title = element_text(size = 24, colour = "black"), 
        axis.ticks=element_line(colour="black",size=1,linetype=1), #Modify the size and color of the line label on the axis
        axis.ticks.length=unit(0.4,"lines"),
        panel.background = element_blank(), panel.border = element_rect(colour = "black", fill = NA, size = 2),#框線
        legend.key=element_blank())+
  scale_colour_manual(name = "",values = c("Positive"="black","Negative"="red"))
#theme(legend.position = "none")

#
library(reshape2) #package for melt function
data.plot.ratio=data.plot[,c("day",'positive_IS','negative_IS')]
colnames(data.plot.ratio)=c("day","Positive","Negative")
melt_data.data.plot.ratio <- melt(data.plot.ratio,id = c("day")) 

p_IS_ratio = 
  ggplot(melt_data.data.plot.ratio, aes(x=as.numeric(day), y=as.numeric(value), color=as.factor(variable))) + 
  geom_line(size=1.2) +
  xlab("Day")+
  ylab("Interaction proportion (%)") +     
  geom_vline(xintercept=40,color="gray45",size=1,linetype = "dashed")+ 
  geom_vline(xintercept=80,color="gray45",size=1,linetype = "dashed")+ 
  theme(panel.grid = element_blank(), 
        panel.background = element_rect(size = 1,color = 'black',linetype = "solid", fill = 'transparent'), 
        legend.title = element_blank(), 
        legend.key = element_rect(fill = 'transparent'))+
  scale_x_continuous(limits = c(0, 110),breaks=seq(0,110,20)) + 
  #scale_y_continuous(limits = c(2, 10),breaks=seq(2,10,2)) + 
  theme(axis.text.y = element_text(colour = "black", size = 16), 
        axis.text.x = element_text(colour = "black", size = 16), 
        legend.text = element_text(size = 16, colour ="black"), 
        legend.position = c(0.75, 0.2), 
        axis.title.y = element_text( size = 20), 
        axis.title.x = element_text( size = 20, colour = "black"), 
        #axis.title.x = element_blank(),#hide x axis label
        legend.title = element_text(size = 24, colour = "black"), 
        axis.ticks=element_line(colour="black",size=1,linetype=1), #Modify the size and color of the line label on the axis
        axis.ticks.length=unit(0.4,"lines"),
        panel.background = element_blank(), panel.border = element_rect(colour = "black", fill = NA, size = 2),#框線
        legend.key=element_blank())+
  scale_colour_manual(name = "",values = c("Positive"="black","Negative"="red"))


library(cowplot)
library(ggpubr)

p_IS=ggarrange(
  p_Tr,p_IS_ratio,p_strength,p_shannon,
  labels = c("A", "B", "C","D"),
  align="hv",ncol=4, nrow=1,
  font.label = list(size = 24)
)
p_IS


## interaction composition------
data.plot <- read.csv("D:/xxxxxx/output_v2/interaction_type_20231010_v5_three_functional_group_subset_all_Mij_revised_H2_final_(modified_function).csv", header=T, sep=",")

data.plot$day=c(3:109)


library(ggplot2)


#comm
data.plot.ratio=data.plot[,c("day",'commensalism_FB_SB','commensalism_FB_MA','commensalism_SB_MA','commensalism_FB_FB','commensalism_SB_SB','commensalism_MA_MA','commensalism_FB_OM','commensalism_SB_OM','commensalism_MA_OM','commensalism_OM_OM','commensalism')]
colnames(data.plot.ratio)=c("day",'FB_SB','FB_MA','SB_MA','FB_FB','SB_SB','MA_MA','FB_OM','SB_OM','MA_OM','OM_OM','Overall')
#moving average
library(zoo)            # working with time series data
data.plot.ratio$FB_SB=rollmean(data.plot.ratio$FB_SB, k = 5, fill = NA)
data.plot.ratio$FB_MA=rollmean(data.plot.ratio$FB_MA, k = 5, fill = NA)
data.plot.ratio$SB_MA=rollmean(data.plot.ratio$SB_MA, k = 5, fill = NA)
data.plot.ratio$FB_FB=rollmean(data.plot.ratio$FB_FB, k = 5, fill = NA)
data.plot.ratio$SB_SB=rollmean(data.plot.ratio$SB_SB, k = 5, fill = NA)
data.plot.ratio$MA_MA=rollmean(data.plot.ratio$MA_MA, k = 5, fill = NA)
data.plot.ratio$FB_OM=rollmean(data.plot.ratio$FB_OM, k = 5, fill = NA)
data.plot.ratio$SB_OM=rollmean(data.plot.ratio$SB_OM, k = 5, fill = NA)
data.plot.ratio$MA_OM=rollmean(data.plot.ratio$MA_OM, k = 5, fill = NA)
data.plot.ratio$OM_OM=rollmean(data.plot.ratio$OM_OM, k = 5, fill = NA)
data.plot.ratio$Overall=rollmean(data.plot.ratio$Overall, k = 5, fill = NA)


data.plot.ratio_Overall=data.plot.ratio[,c("day",'Overall')]
data.plot.ratio_within_group=data.plot.ratio[,c("day",'FB_FB','SB_SB','MA_MA','OM_OM')]
data.plot.ratio_between_group=data.plot.ratio[,c("day",'FB_SB','FB_MA','SB_MA','FB_OM','SB_OM','MA_OM')]

#melt data
library(reshape2) #package for melt function 
melt_data.data.plot.ratio_Overall <- melt(data.plot.ratio_Overall,id = c("day")) #This square (day) will fixed, the rest will be merged
melt_data.data.plot.ratio_within_group <- melt(data.plot.ratio_within_group,id = c("day")) #This square (day) will fixed, the rest will be merged
melt_data.data.plot.ratio_between_group <- melt(data.plot.ratio_between_group,id = c("day")) #This square (day) will fixed, the rest will be merged



p_comm_g = 
  ggplot(melt_data.data.plot.ratio_Overall, aes(x=as.numeric(day), y=as.numeric(value), color=as.factor(variable),linetype = as.factor(variable))) + 
  geom_line(size=1) +
  xlab("Day")+
  ylab("Commensalism (%)") +      #Y-axis label text
  geom_vline(xintercept=40,color="gray45",size=1,linetype = "dashed")+ #dotted line
  geom_vline(xintercept=80,color="gray45",size=1,linetype = "dashed")+ #dotted line
  theme(panel.grid = element_blank(), 
        panel.background = element_rect(size = 1,color = 'black',linetype = "solid", fill = 'transparent'), 
        legend.title = element_blank(), 
        legend.key = element_rect(fill = 'transparent'))+
  scale_x_continuous(limits = c(0, 110),breaks=seq(0,110,20)) + 
  scale_y_continuous(limits = c(-0.01, 31),breaks=seq(0,30,10)) + 
  theme(axis.text.y = element_text(colour = "black", size = 20), 
        axis.text.x = element_text(colour = "black", size = 20), 
        legend.text = element_text(size = 20, colour ="black"),
        #axis.title.y = element_blank(),#hide y-axis text
        #legend.position = "bottom", 
        legend.position="none", 
        axis.title.y = element_text( size = 24), 
        #axis.title.x = element_text( size = 24, colour = "black"), 
        axis.title.x = element_blank(),#hide x-axis text
        legend.title = element_text(size = 24, colour = "black"), 
        axis.ticks=element_line(colour="black",size=1,linetype=1), #Modify the size and color of the line label on the axis
        axis.ticks.length=unit(0.4,"lines"),
        panel.background = element_blank(), panel.border = element_rect(colour = "black", fill = NA, size = 2),#框線
        legend.key=element_blank())+
  scale_colour_manual(name = "",values = c("Overall"="black","FB_SB"="navyblue","FB_MA"="#00b7e9","SB_MA"="#FC6F35","FB_FB"="orange","SB_SB"="darkgreen","MA_MA"="red","FB_OM"="orange","SB_OM"="darkgreen","MA_OM"="red","OM_OM"="gray10"))+
  scale_linetype_manual(name = "",values=c("Overall"="solid", "FB_SB"="solid","FB_MA"="solid", "SB_MA"="solid","FB_FB"="solid", "SB_SB"="solid","MA_MA"="solid","FB_OM"="solid", "SB_OM"="solid","MA_OM"="solid", "OM_OM"="solid"))+
  theme(legend.key.size =  unit(0.5, "in"))+
  guides(color = guide_legend(nrow = 2))

p_comm_within_group = 
  ggplot(melt_data.data.plot.ratio_within_group, aes(x=as.numeric(day), y=as.numeric(value), color=as.factor(variable),linetype = as.factor(variable))) + 
  geom_line(size=1) +
  xlab("Day")+
  ylab("Commensalism (%)") +      #Y-axis label text
  geom_vline(xintercept=40,color="gray45",size=1,linetype = "dashed")+ #dotted line
  geom_vline(xintercept=80,color="gray45",size=1,linetype = "dashed")+ #dotted line
  theme(panel.grid = element_blank(), 
        panel.background = element_rect(size = 1,color = 'black',linetype = "solid", fill = 'transparent'), 
        legend.title = element_blank(), 
        legend.key = element_rect(fill = 'transparent'))+
  scale_x_continuous(limits = c(0, 110),breaks=seq(0,110,20)) + 
  scale_y_continuous(limits = c(-0.01, 31),breaks=seq(0,30,10)) + 
  theme(axis.text.y = element_text(colour = "black", size = 20), 
        axis.text.x = element_text(colour = "black", size = 20), 
        legend.text = element_text(size = 20, colour ="black"), 
        #legend.position = "bottom", 
        legend.position="none",
        #axis.title.y = element_text( size = 24),
        axis.title.y = element_blank(),#hide y-axis text
        #axis.title.x = element_text( size = 24, colour = "black"), 
        axis.title.x = element_blank(),#hide x-axis text
        legend.title = element_text(size = 24, colour = "black"), 
        axis.ticks=element_line(colour="black",size=1,linetype=1), #Modify the size and color of the line label on the axis
        axis.ticks.length=unit(0.4,"lines"),
        panel.background = element_blank(), panel.border = element_rect(colour = "black", fill = NA, size = 2),#框線
        legend.key=element_blank())+
  scale_colour_manual(name = "",values = c("Overall"="black","FB_SB"="navyblue","FB_MA"="#00b7e9","SB_MA"="#FC6F35","FB_FB"="orange","SB_SB"="darkgreen","MA_MA"="red","FB_OM"="orange","SB_OM"="darkgreen","MA_OM"="red","OM_OM"="gray10"))+
  scale_linetype_manual(name = "",values=c("Overall"="solid", "FB_SB"="solid","FB_MA"="solid", "SB_MA"="solid","FB_FB"="solid", "SB_SB"="solid","MA_MA"="solid","FB_OM"="solid", "SB_OM"="solid","MA_OM"="solid", "OM_OM"="solid"))+
  theme(legend.key.size =  unit(0.5, "in"))+
  guides(color = guide_legend(nrow = 2))

p_comm_between_group = 
  ggplot(melt_data.data.plot.ratio_between_group, aes(x=as.numeric(day), y=as.numeric(value), color=as.factor(variable),linetype = as.factor(variable))) + 
  geom_line(size=1) +
  xlab("Day")+
  ylab("Commensalism (%)") +      #Y-axis label text
  geom_vline(xintercept=40,color="gray45",size=1,linetype = "dashed")+ #dotted line
  geom_vline(xintercept=80,color="gray45",size=1,linetype = "dashed")+ #dotted line
  theme(panel.grid = element_blank(), 
        panel.background = element_rect(size = 1,color = 'black',linetype = "solid", fill = 'transparent'), 
        legend.title = element_blank(), 
        legend.key = element_rect(fill = 'transparent'))+
  scale_x_continuous(limits = c(0, 110),breaks=seq(0,110,20)) + 
  scale_y_continuous(limits = c(-0.01, 31),breaks=seq(0,30,10)) + 
  theme(axis.text.y = element_text(colour = "black", size = 20), 
        axis.text.x = element_text(colour = "black", size = 20), 
        legend.text = element_text(size = 20, colour ="black"), 
        #legend.position = "bottom", 
        legend.position="none",
        #axis.title.y = element_text( size = 24),
        axis.title.y = element_blank(),#hide y-axis text
        #axis.title.x = element_text( size = 24, colour = "black"), 
        axis.title.x = element_blank(),#hide x-axis text
        legend.title = element_text(size = 24, colour = "black"), 
        axis.ticks=element_line(colour="black",size=1,linetype=1), #Modify the size and color of the line label on the axis
        axis.ticks.length=unit(0.4,"lines"),
        panel.background = element_blank(), panel.border = element_rect(colour = "black", fill = NA, size = 2),#框線
        legend.key=element_blank())+
  scale_colour_manual(name = "",values = c("Overall"="black","FB_SB"="navyblue","FB_MA"="#00b7e9","SB_MA"="#FC6F35","FB_FB"="orange","SB_SB"="darkgreen","MA_MA"="red","FB_OM"="orange","SB_OM"="darkgreen","MA_OM"="red","OM_OM"="gray10"))+
  scale_linetype_manual(name = "",values=c("Overall"="solid", "FB_SB"="solid","FB_MA"="solid", "SB_MA"="solid","FB_FB"="solid", "SB_SB"="solid","MA_MA"="solid","FB_OM"="solid", "SB_OM"="solid","MA_OM"="solid", "OM_OM"="solid"))+
  guides(color = guide_legend(nrow = 2))+
  theme(legend.key.size =  unit(0.5, "in"))+
  theme(legend.position="none")


#ame
data.plot.ratio=data.plot[,c("day",'amensalism_FB_SB','amensalism_FB_MA','amensalism_SB_MA','amensalism_FB_FB','amensalism_SB_SB','amensalism_MA_MA','amensalism_FB_OM','amensalism_SB_OM','amensalism_MA_OM','amensalism_OM_OM','amensalism')]
colnames(data.plot.ratio)=c("day",'FB_SB','FB_MA','SB_MA','FB_FB','SB_SB','MA_MA','FB_OM','SB_OM','MA_OM','OM_OM','Overall')
#moving average
library(zoo)            # working with time series data
data.plot.ratio$FB_SB=rollmean(data.plot.ratio$FB_SB, k = 5, fill = NA)
data.plot.ratio$FB_MA=rollmean(data.plot.ratio$FB_MA, k = 5, fill = NA)
data.plot.ratio$SB_MA=rollmean(data.plot.ratio$SB_MA, k = 5, fill = NA)
data.plot.ratio$FB_FB=rollmean(data.plot.ratio$FB_FB, k = 5, fill = NA)
data.plot.ratio$SB_SB=rollmean(data.plot.ratio$SB_SB, k = 5, fill = NA)
data.plot.ratio$MA_MA=rollmean(data.plot.ratio$MA_MA, k = 5, fill = NA)
data.plot.ratio$FB_OM=rollmean(data.plot.ratio$FB_OM, k = 5, fill = NA)
data.plot.ratio$SB_OM=rollmean(data.plot.ratio$SB_OM, k = 5, fill = NA)
data.plot.ratio$MA_OM=rollmean(data.plot.ratio$MA_OM, k = 5, fill = NA)
data.plot.ratio$OM_OM=rollmean(data.plot.ratio$OM_OM, k = 5, fill = NA)
data.plot.ratio$Overall=rollmean(data.plot.ratio$Overall, k = 5, fill = NA)


data.plot.ratio_Overall=data.plot.ratio[,c("day",'Overall')]
data.plot.ratio_within_group=data.plot.ratio[,c("day",'FB_FB','SB_SB','MA_MA','OM_OM')]
data.plot.ratio_between_group=data.plot.ratio[,c("day",'FB_SB','FB_MA','SB_MA','FB_OM','SB_OM','MA_OM')]

#melt data
library(reshape2) #package for melt function 
melt_data.data.plot.ratio_Overall <- melt(data.plot.ratio_Overall,id = c("day")) #This square (day) will fixed, the rest will be merged
melt_data.data.plot.ratio_within_group <- melt(data.plot.ratio_within_group,id = c("day")) #This square (day) will fixed, the rest will be merged
melt_data.data.plot.ratio_between_group <- melt(data.plot.ratio_between_group,id = c("day")) #This square (day) will fixed, the rest will be merged



p_ame_g = 
  ggplot(melt_data.data.plot.ratio_Overall, aes(x=as.numeric(day), y=as.numeric(value), color=as.factor(variable),linetype = as.factor(variable))) + 
  geom_line(size=1) +
  xlab("Day")+
  ylab("Amensalism (%)") +      #Y-axis label text
  geom_vline(xintercept=40,color="gray45",size=1,linetype = "dashed")+ #dotted line
  geom_vline(xintercept=80,color="gray45",size=1,linetype = "dashed")+ #dotted line
  theme(panel.grid = element_blank(), 
        panel.background = element_rect(size = 1,color = 'black',linetype = "solid", fill = 'transparent'), 
        legend.title = element_blank(), 
        legend.key = element_rect(fill = 'transparent'))+
  scale_x_continuous(limits = c(0, 110),breaks=seq(0,110,20)) + 
  scale_y_continuous(limits = c(-0.01, 31),breaks=seq(0,30,10)) + 
  theme(axis.text.y = element_text(colour = "black", size = 20), 
        axis.text.x = element_text(colour = "black", size = 20), 
        legend.text = element_text(size = 20, colour ="black"), 
        legend.position = "bottom", 
        axis.title.y = element_text( size = 24),
        axis.title.x = element_text( size = 24, colour = "black"), 
        #axis.title.x = element_blank(),#hide x-axis text
        legend.title = element_text(size = 24, colour = "black"), 
        axis.ticks=element_line(colour="black",size=1,linetype=1), #Modify the size and color of the line label on the axis
        axis.ticks.length=unit(0.4,"lines"),
        panel.background = element_blank(), panel.border = element_rect(colour = "black", fill = NA, size = 2),#框線
        legend.key=element_blank())+
  scale_colour_manual(name = "",values = c("Overall"="black","FB_SB"="navyblue","FB_MA"="#00b7e9","SB_MA"="#FC6F35","FB_FB"="orange","SB_SB"="darkgreen","MA_MA"="red","FB_OM"="orange","SB_OM"="darkgreen","MA_OM"="red","OM_OM"="gray10"))+
  scale_linetype_manual(name = "",values=c("Overall"="solid", "FB_SB"="solid","FB_MA"="solid", "SB_MA"="solid","FB_FB"="solid", "SB_SB"="solid","MA_MA"="solid","FB_OM"="solid", "SB_OM"="solid","MA_OM"="solid", "OM_OM"="solid"))+
  theme(legend.key.size =  unit(0.5, "in"))+
  guides(color = guide_legend(nrow = 2))

p_ame_within_group = 
  ggplot(melt_data.data.plot.ratio_within_group, aes(x=as.numeric(day), y=as.numeric(value), color=as.factor(variable),linetype = as.factor(variable))) + 
  geom_line(size=1) +
  xlab("Day")+
  ylab("Amensalism (%)") +      #Y-axis label text
  geom_vline(xintercept=40,color="gray45",size=1,linetype = "dashed")+ #dotted line
  geom_vline(xintercept=80,color="gray45",size=1,linetype = "dashed")+ #dotted line
  theme(panel.grid = element_blank(), 
        panel.background = element_rect(size = 1,color = 'black',linetype = "solid", fill = 'transparent'), 
        legend.title = element_blank(), 
        legend.key = element_rect(fill = 'transparent'))+
  scale_x_continuous(limits = c(0, 110),breaks=seq(0,110,20)) + 
  scale_y_continuous(limits = c(-0.01, 31),breaks=seq(0,30,10)) + 
  theme(axis.text.y = element_text(colour = "black", size = 20), 
        axis.text.x = element_text(colour = "black", size = 20), 
        legend.text = element_text(size = 20, colour ="black"), 
        legend.position = "bottom", 
        #axis.title.y = element_text( size = 24),
        axis.title.y = element_blank(),#hide y-axis text
        axis.title.x = element_text( size = 24, colour = "black"), 
        #axis.title.x = element_blank(),#hide x-axis text
        legend.title = element_text(size = 24, colour = "black"), 
        axis.ticks=element_line(colour="black",size=1,linetype=1), #Modify the size and color of the line label on the axis
        axis.ticks.length=unit(0.4,"lines"),
        panel.background = element_blank(), panel.border = element_rect(colour = "black", fill = NA, size = 2),#框線
        legend.key=element_blank())+
  scale_colour_manual(name = "",values = c("Overall"="black","FB_SB"="navyblue","FB_MA"="#00b7e9","SB_MA"="#FC6F35","FB_FB"="orange","SB_SB"="darkgreen","MA_MA"="red","FB_OM"="orange","SB_OM"="darkgreen","MA_OM"="red","OM_OM"="gray10"))+
  scale_linetype_manual(name = "",values=c("Overall"="solid", "FB_SB"="solid","FB_MA"="solid", "SB_MA"="solid","FB_FB"="solid", "SB_SB"="solid","MA_MA"="solid","FB_OM"="solid", "SB_OM"="solid","MA_OM"="solid", "OM_OM"="solid"))+
  theme(legend.key.size =  unit(0.5, "in"))+
  guides(color = guide_legend(nrow = 2))

p_ame_between_group = 
  ggplot(melt_data.data.plot.ratio_between_group, aes(x=as.numeric(day), y=as.numeric(value), color=as.factor(variable),linetype = as.factor(variable))) + 
  geom_line(size=1) +
  xlab("Day")+
  ylab("Amensalism (%)") +      #Y-axis label text
  geom_vline(xintercept=40,color="gray45",size=1,linetype = "dashed")+ #dotted line
  geom_vline(xintercept=80,color="gray45",size=1,linetype = "dashed")+ #dotted line
  theme(panel.grid = element_blank(), 
        panel.background = element_rect(size = 1,color = 'black',linetype = "solid", fill = 'transparent'), 
        legend.title = element_blank(), 
        legend.key = element_rect(fill = 'transparent'))+
  scale_x_continuous(limits = c(0, 110),breaks=seq(0,110,20)) + 
  scale_y_continuous(limits = c(-0.01, 31),breaks=seq(0,30,10)) + 
  theme(axis.text.y = element_text(colour = "black", size = 20), 
        axis.text.x = element_text(colour = "black", size = 20), 
        legend.text = element_text(size = 20, colour ="black"), 
        legend.position = "bottom", 
        #axis.title.y = element_text( size = 24),
        axis.title.y = element_blank(),#hide y-axis text 
        axis.title.x = element_text( size = 24, colour = "black"), 
        #axis.title.x = element_blank(),#hide x-axis text
        legend.title = element_text(size = 24, colour = "black"), 
        axis.ticks=element_line(colour="black",size=1,linetype=1), #Modify the size and color of the line label on the axis
        axis.ticks.length=unit(0.4,"lines"),
        panel.background = element_blank(), panel.border = element_rect(colour = "black", fill = NA, size = 2),#框線
        legend.key=element_blank())+
  scale_colour_manual(name = "",values = c("Overall"="black","FB_SB"="navyblue","FB_MA"="#00b7e9","SB_MA"="#FC6F35","FB_FB"="orange","SB_SB"="darkgreen","MA_MA"="red","FB_OM"="orange","SB_OM"="darkgreen","MA_OM"="red","OM_OM"="gray10"))+
  scale_linetype_manual(name = "",values=c("Overall"="solid", "FB_SB"="solid","FB_MA"="solid", "SB_MA"="solid","FB_FB"="solid", "SB_SB"="solid","MA_MA"="solid","FB_OM"="solid", "SB_OM"="solid","MA_OM"="solid", "OM_OM"="solid"))+
  theme(legend.key.size =  unit(0.5, "in"))+
  guides(color = guide_legend(nrow = 2))



library(cowplot)
library(ggpubr)

p_IS=ggarrange(
  p_Tr,p_IS_ratio,p_strength,p_shannon,
  labels = c("A", "B", "C","D"),
  align="h",ncol=4, nrow=1,
  font.label = list(size = 24)
)
p_IS
save.wd="D:/R_analysis/UASB_Mother/mother_draft_v2/MAIN_FIGURE" # folder path, where to save the output files
setwd(save.wd)
ggsave("Figure4_a-d.png", width = 18, height = 5)



p_com_1=ggarrange(
  p_comm_g,
  p_ame_g,
  common.legend = T,
  legend="bottom",
  labels = c("E", "F"),
  align="hv",ncol=1, nrow=2,
  font.label = list(size = 20)
)
p_com_2=ggarrange(
  p_comm_within_group,
  p_ame_within_group,
  common.legend = T,
  legend="bottom",
  labels = c("", ""),
  align="hv",ncol=1, nrow=2,
  font.label = list(size = 20)
)
p_com_3=ggarrange(
  p_comm_between_group,
  p_ame_between_group,
  common.legend = T,
  legend="bottom",
  labels = c("", ""),
  align="hv",ncol=1, nrow=2,
  font.label = list(size = 20)
)

p_com=ggarrange(p_com_1,p_com_2,p_com_3,align="hv",ncol=3, nrow=1)



save.wd="D:/R_analysis/UASB_Mother/mother_draft_v2/MAIN_FIGURE" # folder path, where to save the output files
setwd(save.wd)
ggsave("Figure4_e-f.png", width = 18, height = 11)



