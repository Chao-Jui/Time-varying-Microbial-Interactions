

wd="D:/xxxxxx/Figure3" # folder path, where to save the output files
#save.wd="D:/R_analysis/UASB_Mother/mother_draft_v2/bubble/plot" # folder path, where to save the output files
setwd(wd)


pc <- read.csv("microbial_bubble_level6_v3_remove12andSB_upload.csv",header=T)

pc$Sample = as.factor(pc$Sample)


library(ggplot2)
library(reshape2)

#convert data frame from a "wide" format to a "long" format
pcm = melt(pc, id = c("Sample","Period"))
pcm$Sample <- factor(pcm$Sample,levels=unique(pcm$Sample))

#v1


fun_color_range <- colorRampPalette(c("red","gray99","navyblue"))
my_colors <- fun_color_range(10)  



xx = ggplot(pcm, aes(x = as.numeric(Sample), y = variable)) + 
  geom_point(aes(size = value, fill= as.numeric(Sample)), alpha = 1, shape = 21) + 
  scale_size_continuous(limits = c(0, 65), range = c(1,20), breaks = c(1,10,50)) + 
  labs( x= "", y = "", size = "Relative Abundance (%)", fill = "Day", color = "Day")  + 
  theme(legend.key=element_blank(), 
        #axis.text.x = element_text(colour = "black", size = 18, face = "bold", angle = 90, vjust = 0.3, hjust = 1), 
        axis.text.x = element_text(colour = "black", size = 18, face = "bold"),
        axis.title.x = element_text( size = 18, colour = "black"),
        #axis.text.x = element_blank(),
        #axis.text.y = element_blank(),
        axis.text.y = element_text(colour = "black", size = 16, face = "bold.italic"),
        legend.text = element_text(size = 28, colour ="black"), 
        #legend.title = element_text(size = 32, face = "bold"), 
        legend.title = element_text(size = 32),
        panel.background = element_blank(), 
        panel.border = element_rect(colour = "black", fill = NA, size = 1.2),
        axis.ticks=element_line(colour="black",size=1,linetype=1), 
        axis.ticks.length.x=unit(0.4,"lines"),
        axis.ticks.length.y=unit(0.2,"lines"),
        legend.position = "bottom", 
        panel.grid.major.y = element_line(colour = "grey95")) +
  scale_x_continuous(limits = c(0, 110),breaks=seq(0,110,20)) + 
  scale_y_discrete(limits = rev(levels(pcm$variable)))+ # reverse y axis
  scale_fill_gradientn(name="Day",colors = my_colors,limits = c(0, 110), 
                       breaks = c(0, 110),
                       labels = c(3,110))
xx

ggsave("Figure3a_v6_rmSB_width12.png", width = 12, height = 9)
