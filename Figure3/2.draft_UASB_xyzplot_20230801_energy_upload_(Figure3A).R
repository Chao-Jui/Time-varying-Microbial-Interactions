save.wd="D:/xxxxxx/Figure3" # folder path, where to save the output files
setwd(save.wd)

#datainput
#Data of Axis 1-2 is extracted from D:/xxxxxx/Figure3/pcoa.plot_axis_level6.csv
#Data of G_real is from Figure 2D 

data.plot <- read.csv("sum_uasb_xyz_Figure3.csv", header=T, sep=",",row.names = 1)
library(ggplot2)
library(hrbrthemes)
library(rayshader)
library(viridis)


library("scatterplot3d") # load

save.wd="D:/xxxxxx/MAIN_FIGURE" # folder path, where to save the output files
setwd(save.wd)
#output figure
#pdf("Figure3-b-UASB_oderation&energentic_3Dplot.pdf",width=8,height=6)
#layout form
layout(matrix(1:2, ncol=2), width = c(3, 1), height = c(1, 1))


data.plot$rank = rank(data.plot$day) #Rank the targets (i.e. Day) according to size
gradient <- colorRampPalette(colors = c("red","gray99","navyblue")) #gradient color distribution
colors <- gradient(length(data.plot$day)) #Create functions for ranking RANK and color
data.plot$label = colors[data.plot$rank] #Color-mark the data of each day according to the ranking RANK
#3D圖
p=scatterplot3d(x=data.plot$Axis.1,z=data.plot$G_real,y=data.plot$Axis.1, #data
                xlab = "PC1 (77.31%)", zlab = "", ylab = "PC2 (8.49%)", #label
                #xlab = "", zlab = "", ylab = "", #label
                pch = 16, #point type
                #type = "h", 
                color=data.plot$label,
                angle = 30,
                grid=TRUE, 
                box=FALSE 
                )
#label
plot(x = rep(1,length(data.plot$label)), y = seq_along(data.plot$label), #color = 矩陣長度
     pch = 15, cex = 2.5, 
     col = gradient(length(data.plot$label)), 
     ann = F, axes = F, xlim = c(1, 2))

dev.off()




