rm(list=ls()) 

setwd("D:\\xxxxxx\\R_code_demo_20220203") 

#Input data
Edges=read.csv("ccmda_UASB_dtrend_T_dTtype_linear_v3_all_combination.csv",header=T,fill=T)
Edges=Edges[Edges$Convergence =="TRUE" ,] # remove result which is not conserve

#make a new label
Edges$Type_combination <- paste(Edges$Cause_type, "→", Edges$Effect_type, sep = " ")


library("ggplot2")
ggplot(Edges, aes(x = factor(Type_combination, levels = c("Metabolites → Community", "Community → Metabolites", 
                                                          "Community → Interaction", "Interaction → Community",
                                                          "Metabolites → Interaction", "Interaction → Metabolites",
                                                          "Metabolites → Metabolites", "Community → Community" , "Interaction → Interaction")), y = rho_Lmax, fill=Type_combination)) + #fill = factor
  #geom_density()+
  geom_violin(width=1)+
  geom_boxplot(width=0.2, color="black", alpha=1) +
  labs( x= "", y = "", fill = "Type")+
  #scale_x_continuous(breaks=seq(0,110,20)) + 
  scale_y_continuous(limits = c(0, 1.1),breaks=seq(-1,1,0.2)) + 
  #ylab("ρ (Lmax)")+
  ylab(expression(paste(ρ," (L"[max],")"))) +
  theme(legend.key=element_blank(), 
        axis.text.x = element_text(colour = "black", size = 14, angle = 90, vjust = 0.3, hjust = 1), 
        #axis.text.x = element_text(colour = "black", size = 18, face = "bold"),
        axis.title.x = element_text(size = 14, colour = "black"),
        axis.title.y = element_text(size = 18, colour = "black"),
        plot.title=element_text(size=18,face="bold"),
        #axis.text.x = element_blank(),
        #axis.text.y = element_blank(),
        axis.text.y = element_text(colour = "black", size = 18),
        legend.text = element_text(size = 18, colour ="black"), 
        legend.title = element_text(size = 18, face = "bold"), 
        panel.background = element_blank(), 
        panel.border = element_rect(colour = "black", fill = NA, size = 1.2),
        axis.ticks=element_line(colour="black",size=1,linetype=1), 
        axis.ticks.length.x=unit(0.4,"lines"),
        axis.ticks.length.y=unit(0.2,"lines"),
        legend.position = "bottom")+
  theme(legend.position = "none") +
  scale_fill_manual(values = c("Metabolites → Community"="green4", "Community → Metabolites"="green4",
                               "Community → Interaction"="yellow4", "Interaction → Community"="yellow4",
                               "Metabolites → Interaction"="lightblue4", "Interaction → Metabolites"="lightblue4",
                               "Metabolites → Metabolites"="pink4", "Community → Community"="pink4","Interaction → Interaction"="pink4"), guide = guide_legend(override.aes = list(size=5)))


ggsave("causality_violin_arrow.png", width = 6, height = 7)


## caculate the average variables between the three groups
# Load the dplyr package
library(dplyr)

# Create a custom ordering factor for Type_combination
custom_order <- c(
  "Metabolites → Community", "Community → Metabolites",
  "Community → Interaction", "Interaction → Community",
  "Metabolites → Interaction", "Interaction → Metabolites",
  "Metabolites → Metabolites", "Community → Community", "Interaction → Interaction"
)

# Count occurrences of each unique Type_combination
count_result <- Edges %>%
  group_by(Type_combination) %>%
  summarize(count = n())

# Calculate average and standard deviation of rho_Lmax for each Type_combination
summary_stats <- Edges %>%
  group_by(Type_combination) %>%
  summarize(
    average_rho_Lmax = mean(rho_Lmax),
    sd_rho_Lmax = sd(rho_Lmax)
  )

# Merge the count and summary_stats data frames based on Type_combination
result <- merge(count_result, summary_stats, by = "Type_combination")

# Order the result based on the custom ordering factor
result <- result[match(custom_order, result$Type_combination), ]

write.csv(result,"average_rho_Lmax.csv")
