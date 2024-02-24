rm(list=ls())

library(ggplot2)

wd="D:/xxxxxx/Figure3" #  where the input files are saved
setwd(wd)

Distance <- read.csv("braycurtis.dist.csv",row.names = 1,sep = ",",fill = TRUE)
Distance <- as.matrix(Distance)

daily_different <- matrix(NA, nrow = 107, ncol = 1)

for(x in 1:107){
  Value <- Distance[x+1,x]  #[i,j] i no of row ; j no of column 
  daily_different[x,1]=Value
}

daily_different=as.data.frame(daily_different)
colnames(daily_different)=c("daily_different")
daily_different$day=c(3:109)
#write.csv(daily_different,"D:/R_analysis/UASB_Mother/mother_draft_v2/xyplot/turnover.csv")
p_turnover = 
  ggplot(daily_different,aes(x=day)) + 
  geom_line(aes(y=daily_different),color="black",size=1.2) +
  xlab("Day")+
  ylab("Bray-Curtis distance") +      
  #geom_vline(xintercept=35,color="gray45",size=1,linetype = "dashed")+ 
  #geom_vline(xintercept=72,color="gray45",size=1,linetype = "dashed")+ 
  theme(panel.grid = element_blank(), 
        panel.background = element_rect(size = 1,color = 'black',linetype = "solid", fill = 'transparent'), 
        legend.title = element_blank(), 
        legend.key = element_rect(fill = 'transparent'))+
  scale_x_continuous(limits = c(0, 110),breaks=seq(0,110,20)) + 
  scale_y_continuous(limits = c(0.05, 0.25),breaks=seq(0.05,0.25,0.05)) + 
  theme(axis.text.y = element_text(colour = "black", size = 16), 
        axis.text.x = element_text(colour = "black", size = 16), 
        legend.text = element_text(size = 12, colour ="black"), 
        #legend.position = c(0.9, 0.85), 
        axis.title.y = element_text( size = 22), 
        #axis.title.x = element_text( size = 18, colour = "black"), 
        axis.title.x = element_blank(),#hide label of x axis
        #legend.title = element_text(size = 14, colour = "black"), 
        axis.ticks=element_line(colour="black",size=1,linetype=1), #Modify the size and color of the line label on the axis
        axis.ticks.length=unit(0.4,"lines"),
        panel.background = element_blank(), panel.border = element_rect(colour = "black", fill = NA, size = 2),#框線
        legend.key=element_blank())


data.plot <- read.csv("D:/xxxxxx/Figure3/Figure3_Shannon.csv", header=T, sep=",")

library(ggplot2)
p_shannon = 
  ggplot(data.plot,aes(x=day)) + 
  geom_line(aes(y=shannon_entropy_genus),color="black",size=1.2) +
  xlab("Day")+
  ylab("Shannon") +     
  #geom_vline(xintercept=35,color="gray45",size=1,linetype = "dashed")+ 
  #geom_vline(xintercept=72,color="gray45",size=1,linetype = "dashed")+ 
  theme(panel.grid = element_blank(), 
        panel.background = element_rect(size = 1,color = 'black',linetype = "solid", fill = 'transparent'), 
        legend.title = element_blank(), 
        legend.key = element_rect(fill = 'transparent'))+
  scale_x_continuous(limits = c(0, 110),breaks=seq(0,110,20)) + # x從0到110 間隔10
  scale_y_continuous(limits = c(1.5, 3.5),breaks=seq(1,4,0.5)) + # x從0到110 間隔10
  theme(axis.text.y = element_text(colour = "black", size = 16), 
        axis.text.x = element_text(colour = "black", size = 16),
        #axis.text.x = element_blank(),#hide label of x axis
        legend.text = element_text(size = 12, colour ="black"), 
        legend.position = c(0.9, 0.85), 
        axis.title.y = element_text( size = 22), 
        axis.title.x = element_text( size = 18, colour = "black"), 
        #axis.title.x = element_blank(),#hide label of x axis
        legend.title = element_text(size = 14, colour = "black"), 
        axis.ticks=element_line(colour="black",size=1,linetype=1), #Modify the size and color of the line label on the axis
        axis.ticks.length=unit(0.4,"lines"),
        panel.background = element_blank(), panel.border = element_rect(colour = "black", fill = NA, size = 2),#框線
        legend.key=element_blank())
p_shannon

library(cowplot)
p_sum=plot_grid(
  p_turnover,p_shannon,
  #labels = c("A", "B", "C", "D", "E", "F"),
  align="hv",ncol = 1)
p_sum

save.wd="D:/xxxxxx/MAIN_FIGURE" # folder path, where to save the output files
setwd(save.wd)
ggsave("Figure3_b-c.png", width = 5, height = 8.3)
