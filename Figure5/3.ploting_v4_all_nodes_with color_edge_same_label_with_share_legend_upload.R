rm(list=ls())

library("qgraph")
library(igraph)
setwd("D:\\xxxxxx\\Figure5") 

#Input data
Edges=read.csv("ccmda_UASB_dtrend_T_dTtype_linear_v3_all_combination.csv",header=T,fill=T)
#
# Define edge colors based on the rho_Lmax values
edge_colors <- colorRampPalette(c("gray99", "navyblue"))(length(unique(Edges$rho_Lmax)))
Edges$edge_colors <- edge_colors[as.numeric(cut(Edges$rho_Lmax, length(edge_colors)))]


Edges=Edges[Edges$Convergence =="TRUE" ,] # remove result which is not conserve
#Edges=Edges[,c(2:4)]

# Round the rho_Lmax values to two decimal places
Edges$rounded_rho_Lmax <- round(Edges$rho_Lmax, 2) 

# Calculate edge widths based on the rho_Lmax values
edge_widths <- Edges$rho_Lmax

# # Normalize and rescale the edge widths to fit within a desired range (e.g., 1 to 5)
# min_width <- 1
# max_width <- 5
# Edges$edge_widths <- min_width + (max_width - min_width) * (edge_widths - min(edge_widths)) / (max(edge_widths) - min(edge_widths))

# # Define edge colors based on the rho_Lmax values
# edge_colors <- colorRampPalette(c("gray99", "navyblue"))(length(unique(Edges$rounded_rho_Lmax)))
# Edges$edge_colors <- edge_colors[as.numeric(cut(Edges$rounded_rho_Lmax, length(edge_colors)))]


#plot
layout(matrix(c(1)))


##Metabolotes
#
Edges_f=Edges[Edges$Cause_type == "Metabolites",] # chooseCause_type
Edges_ff=Edges_f[Edges_f$Effect_type == "Metabolites",] # chooseEffect_type
Edgesfff <- subset(Edges_ff,Cause!=Effect) #remove self loop
Edgesfff_s=Edgesfff[,c(2:4)] #select
write.csv(Edgesfff,"data_check_Metabolotes.csv")
# Create an igraph graph object
graph <- graph.data.frame(Edgesfff_s, directed = TRUE)

# Define a layout for the graph
layout <- layout.circle(graph)
#layout <- layout.fruchterman.reingold(graph)

# Set node colors based on categories
node_colors <- rep(c("lightgreen", "lightgreen", "lightgreen", "lightgreen","lightgreen","lightgreen", "lightgreen", "lightgreen"))

# Set label colors based on categories
label_colors <- rep(c("black", "black", "black","black", "black", "black", "black","black"))

jpeg("causality_v4_metabolites_with label.jpg", width = 1000, height = 1000)

# Plot the directed graph with edge widths proportional to rho_Lmax
plot(
  graph,
  layout = layout,
  #edge.label = Edgesfff$rounded_rho_Lmax,
  edge.label.cex = 1,
  edge.color = Edgesfff$edge_colors,
  #edge.width = Edgesfff$edge_widths,
  edge.width = 3,
  edge.label.dist = 5,  # Increase this value to adjust the distance between edge labels and edges
  edge.arrow.size = 2,  # Adjust arrow size as needed
  edge.curved = 0.2,     # Adjust edge curvature as needed
  vertex.label.dist = 0,  # Adjust label distance from nodes
  vertex.label.cex = 2,   # Adjust node label size as needed
  vertex.size = 30,  # Set the custom node size
  vertex.color = node_colors,  # Set the node color based on Cause values
  vertex.label.color = label_colors,  # Set the node label color based on Cause values
  #vertex.label = NA,  # Hide node labels
)

dev.off()


##Microbial community
#
Edges_f=Edges[Edges$Cause_type == "Community",] # chooseCause_type
Edges_ff=Edges_f[Edges_f$Effect_type == "Community",] # chooseEffect_type
Edgesfff <- subset(Edges_ff,Cause!=Effect) #去除 self loop
Edgesfff_s=Edgesfff[,c(2:4)] #select
write.csv(Edgesfff,"data_check_Microbial.csv")
# Create an igraph graph object
graph <- graph.data.frame(Edgesfff_s, directed = TRUE)

# Set node colors based on categories
node_colors <- rep(c("lightblue", "lightblue", "lightblue", "lightblue"))

# Set label colors based on categories
label_colors <- rep(c("black", "black", "black","black"))
# Define a layout for the graph
layout <- layout.circle(graph)
#layout <- layout.fruchterman.reingold(graph)

jpeg("causality_v4_microbial community_with label.jpg", width = 1000, height = 1000)

# Plot the directed graph with edge widths proportional to rho_Lmax
plot(
  graph,
  layout = layout,
  #edge.label = Edgesfff$rounded_rho_Lmax,
  edge.label.cex = 1,
  edge.color = Edgesfff$edge_colors,
  #edge.width = Edgesfff$edge_widths,
  edge.width = 3,
  edge.label.dist = 5,  # Increase this value to adjust the distance between edge labels and edges
  edge.arrow.size = 2,  # Adjust arrow size as needed
  edge.curved = 0.2,     # Adjust edge curvature as needed
  vertex.label.dist = 0,  # Adjust label distance from nodes
  vertex.label.cex = 2,   # Adjust node label size as needed
  vertex.size = 30,  # Set the custom node size
  vertex.color = node_colors,  # Set the node color based on Cause values
  vertex.label.color = label_colors,  # Set the node label color based on Cause values
  #vertex.label = NA,  # Hide node labels
)

dev.off()


##Microbial interaction
#
Edges_f=Edges[Edges$Cause_type == "Interaction",] # chooseCause_type
Edges_ff=Edges_f[Edges_f$Effect_type == "Interaction",] # chooseEffect_type
Edgesfff <- subset(Edges_ff,Cause!=Effect) #去除 self loop
Edgesfff_s=Edgesfff[,c(2:4)] #select
write.csv(Edgesfff,"data_check_Microbial.csv")
# Create an igraph graph object
graph <- graph.data.frame(Edgesfff_s, directed = TRUE)

# Set node colors based on categories
node_colors <- rep(c("pink", "pink", "pink", "pink","pink","pink", "pink"))

# Set label colors based on categories
label_colors <- rep(c("black", "black", "black","black", "black", "black","black"))
# Define a layout for the graph
layout <- layout.circle(graph)
#layout <- layout.fruchterman.reingold(graph)

jpeg("causality_v4_microbial Inertaction_with label.jpg", width = 1000, height = 1000)

# Plot the directed graph with edge widths proportional to rho_Lmax
plot(
  graph,
  layout = layout,
  #edge.label = Edgesfff$rounded_rho_Lmax,
  edge.label.cex = 1,
  edge.color = Edgesfff$edge_colors,
  #edge.width = Edgesfff$edge_widths,
  edge.width = 3,
  edge.label.dist = 5,  # Increase this value to adjust the distance between edge labels and edges
  edge.arrow.size = 2,  # Adjust arrow size as needed
  edge.curved = 0.2,     # Adjust edge curvature as needed
  vertex.label.dist = 0,  # Adjust label distance from nodes
  vertex.label.cex = 2,   # Adjust node label size as needed
  vertex.size = 30,  # Set the custom node size
  vertex.color = node_colors,  # Set the node color based on Cause values
  vertex.label.color = label_colors,  # Set the node label color based on Cause values
  #vertex.label = NA,  # Hide node labels
)

dev.off()



## two layer
#
Edges_f=Edges[,] # chooseCause_type
Edges_ff=Edges_f[,] # chooseEffect_type
Edgesfff <- subset(Edges_ff,Cause_type!=Effect_type) #去除 self loop
Edgesfff_s=Edgesfff[,c(2:4)] #select
write.csv(Edgesfff,"data_check_all.csv")
# Create an igraph graph object
graph <- graph.data.frame(Edgesfff_s, directed = TRUE)

# Define a layout for the graph
layout <- layout.circle(graph)
#layout <- layout.fruchterman.reingold(graph)

# # Define node colors based on the Cause values
# node_colors <- ifelse(Edges$Cause %in% c('COD',"dG",'Ac','Pr','Bu','H2','CH4','pH'), "lightgreen",
#                       ifelse(Edges$Cause %in% c('PC1','PC2','Div_a','Biomass'), "lightblue",
#                              ifelse(Edges$Cause %in% c('Instability','P_P_IS','P_N_IS','Complexity','Ave_P_IS','Ave_N_IS','Centrality'), "pink", NA)))
# 
# # Define label colors based on the Cause values
# label_colors <- ifelse(Edges$Cause %in% c('COD',"dG",'Ac','Pr','Bu','H2','CH4','pH'), "black",
#                        ifelse(Edges$Cause %in% c('PC1','PC2','Div_a','Biomass'), "black",
#                               ifelse(Edges$Cause %in% c('Instability','P_P_IS','P_N_IS','Complexity','Ave_P_IS','Ave_N_IS','Centrality'), "black", NA)))
# 
# Define a layout for the graph
layout <- layout.circle(graph)

# Set node colors based on categories
node_colors <- rep(c("lightblue", "lightblue", "lightblue", "lightblue", 
                     "pink", "pink", "pink", "pink","pink","pink", "pink", 
                     "lightgreen", "lightgreen", "lightgreen", "lightgreen", "lightgreen", "lightgreen", "lightgreen", "lightgreen"))

# Set label colors based on categories
label_colors <- rep(c("black", "black", "black", "black", 
                      "black", "black", "black", "black","black","black", "black", "black", 
                      "black", "black", "black", "black", "black", "black", "black"))

jpeg("causality_v4_all_with label.jpg", width = 1000, height = 1000)

# Plot the directed graph with edge widths proportional to rho_Lmax
plot(
  graph,
  layout = layout,
  #edge.label = Edgesfff$rounded_rho_Lmax,
  edge.label.cex = 1,
  edge.color = Edgesfff$edge_colors,
  #edge.width = Edgesfff$edge_widths,
  edge.width = 3,
  edge.label.dist = 5,  # Increase this value to adjust the distance between edge labels and edges
  edge.arrow.size = 1,  # Adjust arrow size as needed
  edge.curved = 0.2,     # Adjust edge curvature as needed
  vertex.label.dist = 0,  # Adjust label distance from nodes
  vertex.label.cex = 2,   # Adjust node label size as needed
  vertex.size = 30,
  vertex.color = node_colors,  # Set the node color based on Cause values
  vertex.label.color = label_colors,  # Set the node label color based on Cause values
  #vertex.label = NA,  # Hide node labels
)

dev.off()




#Input data
Edges_legend=read.csv("ccmda_UASB_dtrend_T_dTtype_linear_v3_all_combination_make legend.csv",header=T,fill=T)

# Define edge colors based on the rho_Lmax values
edge_colors <- colorRampPalette(c("gray99", "navyblue"))(length(unique(Edges$rho_Lmax)))
Edges_legend$edge_colors <- edge_colors[as.numeric(cut(Edges_legend$rho_Lmax, length(edge_colors)))]
write.csv(Edges_legend,"data_check_colar.csv")
#
#畫label
library("scatterplot3d")
library(hrbrthemes)
library(rayshader)
library(viridis)

pdf("causality_v4_legend.pdf", width = 5, height = 5)
gradient <- colorRampPalette(colors = c("gray99","navyblue")) #gradient顏色分布
plot(x = rep(1,length(Edges$edge_colors)), y = seq_along(Edges$edge_colors), #color = 矩陣長度
     pch = 15, cex = 2.5, 
     col = gradient(length(Edges$edge_colors)), 
     ann = F, axes = F, xlim = c(1, 2))
# axis(side = 2,
#     at = seq(1, nrow(as.matrix(Edges)),
#              length.out = round(max(Edges$rounded_rho_Lmax),0)-round(min(Edges$rounded_rho_Lmax),0)+1), #data.plot為輸入矩陣，length.out為range
#     labels = round(min(Edges$rounded_rho_Lmax),0):round(max(Edges$rounded_rho_Lmax),0), #label 大小
#     line = 0.6)
dev.off()
