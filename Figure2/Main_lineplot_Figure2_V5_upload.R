rm(list=ls())

## VFA + GAS
wd="D:/xxxxxx/Figure2" # folder path, where the input files

#pvfa
setwd(wd)
library(reshape)

df <- read.csv("Figure2_data.csv", header=T, sep=",")  
df = cbind.data.frame(df) 
rownames(df) <- 1:nrow(df)

library(reshape2) #package for melt function
df.VFA=df[,c("day",'Acetate','Propionate','Butyrate')]
melt_data <- melt(df.VFA,id = c("day")) 
melt_data
library(ggplot2)
p.vfa=ggplot(melt_data, aes(x=day, y=value, color=as.factor(variable))) + 
  geom_line(size=1.2) +
  theme(panel.grid = element_blank(), 
        panel.background = element_rect(size = 1,color = 'black',linetype = "solid", fill = 'transparent'), 
        legend.title = element_blank(), 
        legend.key = element_rect(fill = 'transparent'))+
  scale_x_continuous(limits = c(0, 110),breaks=seq(0,110,20)) + 
  scale_y_continuous(limits = c(0, 200),breaks=seq(0,200,50)) + 
  #geom_vline(xintercept=35,color="gray45",size=1,linetype = "dashed")+ 
  #geom_vline(xintercept=72,color="gray45",size=1,linetype = "dashed")+ 
  ylab("Concentration (mg/L)") +      
  xlab("Day") +
  theme(axis.text.y = element_text(colour = "black", size = 18), #, 1face = "bold"
        axis.text.x = element_text(colour = "black", size = 18), 
        legend.text = element_text(size = 20, colour ="black"), 
        legend.position = c(0.6,0.88), 
        legend.direction = "horizontal", ##Vertical  #horizontal
        axis.title.y = element_text( size = 22), 
        axis.title.x = element_text( size = 20, colour = "black"),
        #axis.title.x = element_blank(),#hide label of x axis
        legend.title = element_text(size = 10, colour = "black"), 
        axis.ticks=element_line(colour="black",size=1,linetype=1), #Modify the size and color of the line label on the axis
        axis.ticks.length=unit(0.4,"lines"),
        panel.background = element_blank(), panel.border = element_rect(colour = "black", fill = NA, size = 2),#框線
        legend.key=element_blank())+
  scale_colour_manual(name = "",values = c("orange","red","blue","darkgreen"))+
  guides(color = guide_legend(nrow = 2)) # set legend into 2 rows

#Pgas
df <- read.csv("Figure2_data.csv", header=T, sep=",")  
df = cbind.data.frame(df) 
rownames(df) <- 1:nrow(df)

library(reshape2) #package for melt function
df.gas=df[,c("day",'log_H2','log_CO2','log_CH4')]
colnames(df.gas)=c("day",'H2','CO2','CH4')
lab_gas <- c(expression(H[2]),
          expression(CO[2]), 
          expression(CH[4]))
melt_data <- melt(df.gas,id = c("day")) 
melt_data
library(ggplot2)
p.gas=ggplot(melt_data, aes(x=day, y=value, color=as.factor(variable))) + 
  geom_line(size=1.2) +
  theme(panel.grid = element_blank(), 
        panel.background = element_rect(size = 1,color = 'black',linetype = "solid", fill = 'transparent'), 
        legend.title = element_blank(), 
        legend.key = element_rect(fill = 'transparent'))+
  scale_x_continuous(limits = c(0, 110),breaks=seq(0,110,20)) + 
  scale_y_continuous(limits = c(-0.1, 5),breaks=seq(-1,5,1)) + 
  #geom_vline(xintercept=35,color="gray45",size=1,linetype = "dashed")+ 
  #geom_vline(xintercept=72,color="gray45",size=1,linetype = "dashed")+ 
  ylab("Log partial pressure (Pa)") +      
  xlab("Day") +
  theme(axis.text.y = element_text(colour = "black", size = 18), 
        axis.text.x = element_text(colour = "black", size = 18), 
        legend.text = element_text(size = 20, colour ="black"), 
        legend.position = c(0.70,0.75), 
        legend.direction = "horizontal", ##Vertical  #horizontal
        axis.title.y = element_text( size = 22), 
        axis.title.x = element_text( size = 20, colour = "black"), 
        #axis.title.x = element_blank(),#hide label of x axis
        legend.title = element_text(size = 10, colour = "black"), 
        axis.ticks=element_line(colour="black",size=1,linetype=1), #Modify the size and color of the line label on the axis
        axis.ticks.length=unit(0.4,"lines"),
        panel.background = element_blank(), panel.border = element_rect(colour = "black", fill = NA, size = 2),#框線
        legend.key=element_blank())+
  scale_colour_manual(labels = lab_gas,name = "",values = c("orange","red","blue","darkgreen"))


##COD and ΔG

data.plot <- read.csv("Figure2_data.csv", header=T, sep=",")
library(ggplot2)

pG = 
  ggplot(data.plot,aes(x=day)) + 
  geom_line(aes(y=G_real),color="black",size=1.2) +
  xlab("Day")+
  ylab(expression(paste(ΔG[33],"'", " (kJ/reaction)"))) +      
  #geom_vline(xintercept=35,color="gray45",size=1,linetype = "dashed")+ 
  #geom_vline(xintercept=72,color="gray45",size=1,linetype = "dashed")+ 
  theme(panel.grid = element_blank(), 
        panel.background = element_rect(size = 1,color = 'black',linetype = "solid", fill = 'transparent'), 
        legend.title = element_blank(), 
        legend.key = element_rect(fill = 'transparent'))+
  scale_x_continuous(limits = c(0, 110),breaks=seq(0,110,20)) + 
  scale_y_continuous(limits = c(-900, -800),breaks=seq(-900,-800,20)) + 
  theme(axis.text.y = element_text(colour = "black", size = 18), 
        axis.text.x = element_text(colour = "black", size = 18), 
        legend.text = element_text(size = 20, colour ="black"), 
        legend.position = c(0.9, 0.85), 
        axis.title.y = element_text( size = 22), 
        axis.title.x = element_text( size = 20, colour = "black"), 
        #axis.title.x = element_blank(),#hide label of x axis
        legend.title = element_text(size = 18, colour = "black"), 
        axis.ticks=element_line(colour="black",size=1,linetype=1), #Modify the size and color of the line label on the axis
        axis.ticks.length=unit(0.4,"lines"),
        panel.background = element_blank(), panel.border = element_rect(colour = "black", fill = NA, size = 2),#框線
        legend.key=element_blank())

pr = 
  ggplot(data.plot,aes(x=day)) + 
  geom_line(aes(y=removal),color="black",size=1.2) +
  xlab("Day")+
  ylab("COD removal (%)") +      
  #geom_vline(xintercept=35,color="gray45",size=1,linetype = "dashed")+ 
  #geom_vline(xintercept=72,color="gray45",size=1,linetype = "dashed")+ 
  theme(panel.grid = element_blank(), 
        panel.background = element_rect(size = 1,color = 'black',linetype = "solid", fill = 'transparent'), 
        legend.title = element_blank(), 
        legend.key = element_rect(fill = 'transparent'))+
  scale_x_continuous(limits = c(0, 110),breaks=seq(0,110,20)) + 
  scale_y_continuous(limits = c(75, 100),breaks=seq(70,100,10)) + 
  theme(axis.text.y = element_text(colour = "black", size = 18), 
        axis.text.x = element_text(colour = "black", size = 18), 
        legend.text = element_text(size = 20, colour ="black"), 
        legend.position = c(0.9, 0.85), 
        axis.title.y = element_text( size = 22), 
        axis.title.x = element_text( size = 20, colour = "black"), 
        #axis.title.x = element_blank(),#hide label of x axis
        legend.title = element_text(size = 18, colour = "black"), 
        axis.ticks=element_line(colour="black",size=1,linetype=1), #Modify the size and color of the line label on the axis
        axis.ticks.length=unit(0.4,"lines"),
        panel.background = element_blank(), panel.border = element_rect(colour = "black", fill = NA, size = 2),#框線
        legend.key=element_blank())


##Energentic

#p.fer
setwd(wd)
library(reshape)

df <- read.csv("Figure2_data.csv", header=T, sep=",")  
df = cbind.data.frame(df) 
rownames(df) <- 1:nrow(df)

library(reshape2) #package for melt function
df.fer=df[,c("day",'Eq1','Eq2','Eq3')]
melt_data <- melt(df.fer,id = c("day")) 
melt_data
library(ggplot2)
p.fer=ggplot(melt_data, aes(x=day, y=value, color=as.factor(variable))) + 
  geom_line(size=1.2) +
  theme(panel.grid = element_blank(), 
        panel.background = element_rect(size = 1,color = 'black',linetype = "solid", fill = 'transparent'), 
        legend.title = element_blank(), 
        legend.key = element_rect(fill = 'transparent'))+
  scale_x_continuous(limits = c(0, 110),breaks=seq(0,110,20)) + 
  scale_y_continuous(limits = c(-800, -650),breaks=seq(-800, -650,50)) + 
  #geom_vline(xintercept=35,color="gray45",size=1,linetype = "dashed")+ 
  #geom_vline(xintercept=72,color="gray45",size=1,linetype = "dashed")+ 
  ylab(expression(paste(ΔG[33],"'", " (kJ/reaction)"))) +
  xlab("Day") +
  theme(axis.text.y = element_text(colour = "black", size = 18), 
        axis.text.x = element_text(colour = "black", size = 18), 
        legend.text = element_text(size = 20, colour ="black"), 
        legend.position = "bottom", 
        legend.direction = "horizontal", ##Vertical  #horizontal
        axis.title.y = element_text( size = 22), 
        axis.title.x = element_text( size = 20, colour = "black"), 
        legend.title = element_text(size = 10, colour = "black"), 
        axis.ticks=element_line(colour="black",size=1,linetype=1), #Modify the size and color of the line label on the axis
        axis.ticks.length=unit(0.4,"lines"),
        panel.background = element_blank(), panel.border = element_rect(colour = "black", fill = NA, size = 2),#框線
        legend.key=element_blank())+
  scale_colour_manual(name = "",values = c("orange","red","blue","darkgreen"))#+
  #guides(color = guide_legend(nrow = 2)) # set legend into 2 rows

#P.syn
df <- read.csv("Figure2_data.csv", header=T, sep=",")  

df = cbind.data.frame(df) 
rownames(df) <- 1:nrow(df)
library(reshape2) #package for melt function
df.syn=df[,c("day",'Eq4','Eq5','Eq6','Eq7')]
melt_data <- melt(df.syn,id = c("day")) 
melt_data
library(ggplot2)
p.syn=ggplot(melt_data, aes(x=day, y=value, color=as.factor(variable))) + 
  geom_line(size=1.2) +
  theme(panel.grid = element_blank(), 
        panel.background = element_rect(size = 1,color = 'black',linetype = "solid", fill = 'transparent'), 
        legend.title = element_blank(), 
        legend.key = element_rect(fill = 'transparent'))+
  scale_x_continuous(limits = c(0, 110),breaks=seq(0,110,20)) + 
  scale_y_continuous(limits = c(-40, 60),breaks=seq(-40, 60,20)) + 
  #geom_vline(xintercept=35,color="gray45",size=1,linetype = "dashed")+ 
  #geom_vline(xintercept=72,color="gray45",size=1,linetype = "dashed")+ 
  ylab(expression(paste(ΔG[33],"'", " (kJ/reaction)"))) +      
  xlab("Day") +
  theme(axis.text.y = element_text(colour = "black", size = 18), 
        axis.text.x = element_text(colour = "black", size = 18), 
        legend.text = element_text(size = 20, colour ="black"), 
        legend.position = "bottom", 
        legend.direction = "horizontal", ##Vertical  #horizontal
        axis.title.y = element_text( size = 22), 
        axis.title.x = element_text( size = 20, colour = "black"), 
        legend.title = element_text(size = 10, colour = "black"), 
        axis.ticks=element_line(colour="black",size=1,linetype=1), #Modify the size and color of the line label on the axis
        axis.ticks.length=unit(0.4,"lines"),
        panel.background = element_blank(), panel.border = element_rect(colour = "black", fill = NA, size = 2),#框線
        legend.key=element_blank())+
  guides(colour = guide_legend(nrow = 1))+ 
  scale_colour_manual(name = "",values = c("orange","red","blue","darkgreen", "purple","black"))#+
  #guides(color = guide_legend(nrow = 2)) # set legend into 2 rows

#P.meth
df <- read.csv("Figure2_data.csv", header=T, sep=",")  

df = cbind.data.frame(df) 
rownames(df) <- 1:nrow(df)

library(reshape2) #package for melt function
df.meth=df[,c("day",'Eq8','Eq9')]
melt_data <- melt(df.meth,id = c("day")) 
melt_data
library(ggplot2)
p.meth=ggplot(melt_data, aes(x=day, y=value, color=as.factor(variable))) + 
  geom_line(size=1.2) +
  theme(panel.grid = element_blank(), 
        panel.background = element_rect(size = 1,color = 'black',linetype = "solid", fill = 'transparent'), 
        legend.title = element_blank(), 
        legend.key = element_rect(fill = 'transparent'))+
  scale_x_continuous(limits = c(0, 110),breaks=seq(0,110,20)) + 
  scale_y_continuous(limits = c(-85, 0),breaks=seq(-100,0,20)) + 
  #geom_vline(xintercept=35,color="gray45",size=1,linetype = "dashed")+ 
  #geom_vline(xintercept=72,color="gray45",size=1,linetype = "dashed")+ 
  ylab(expression(paste(ΔG[33],"'", " (kJ/reaction)"))) +      
  xlab("Day") +
  theme(axis.text.y = element_text(colour = "black", size = 18), 
        axis.text.x = element_text(colour = "black", size = 18), 
        legend.text = element_text(size = 20, colour ="black"), 
        legend.position = "bottom", 
        legend.direction = "horizontal", ##Vertical  #horizontal
        axis.title.y = element_text( size = 22), 
        axis.title.x = element_text( size = 20, colour = "black"), 
        legend.title = element_text(size = 10, colour = "black"), 
        axis.ticks=element_line(colour="black",size=1,linetype=1), #Modify the size and color of the line label on the axis
        axis.ticks.length=unit(0.4,"lines"),
        panel.background = element_blank(), panel.border = element_rect(colour = "black", fill = NA, size = 2),#框線
        legend.key=element_blank())+
  #guides(colour = guide_legend(nrow = 1))+ 
  scale_colour_manual(name = "",values = c("blue","red","orange","darkgreen", "purple","black"))







library(cowplot)

p_sum1=plot_grid(
  pr,p.vfa,p.gas,
  labels = c("A", "B", "C"),label_size = 24,
  align="hv",ncol = 3)
p_sum1
p_sum2=plot_grid(
  pG,p.fer,p.syn,p.meth,
  labels = c("D", "E", "F", "G"),label_size = 24,
  align="h",axis ="bt",ncol = 4) #axis ="bt"  b (bottom) and (top)
p_sum2

p_sum=plot_grid(
  p_sum1,p_sum2,
  align="h",axis ="bt",ncol = 1,nrow=2,
  rel_heights=(7:10)) 
p_sum



# save.wd="D:/xxxxxx/MAIN_FIGURE" # folder path, where to save the output files
# setwd(save.wd)
# ggsave("Figure2_V5.png", width = 18, height = 10.5)