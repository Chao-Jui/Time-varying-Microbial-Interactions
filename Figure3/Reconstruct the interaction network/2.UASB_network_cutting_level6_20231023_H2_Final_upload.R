rm(list=ls())

library(tidyverse)
#Set path
wd="D:/xxxxxx/level_6_H2_final_adjust" # change to folder path in your computer, where the input files are saved
setwd(wd)

#input data
UASB_network <- read.csv("Bioreator_level_6_H2_final_adjust_nin108_cvunit0.025_aenet_jcof_Nmvx_Rallx_demo_NEW.csv", header=T)
#remove the column which is not going to the next analysis
UASB_network <- UASB_network[-1] #remove Insample 
UASB_network <- UASB_network[-1] #remove time  
UASB_network <- UASB_network[-2] #remove j0
head(UASB_network)
UASB_network <- as_tibble(UASB_network) 

#seeting the output path
save.wd="D:/xxxxxx/daily_matrix_H2_Final" # folder path, where to save the output files
setwd(save.wd)


# n = 118 (111genus+3GAS+4VFA) 
# n = the number of the row and column in the interaction matrix

n = 118

(UASB_network <- UASB_network %>%
    mutate(group = ceiling(row_number()/n)) |> 
    group_split(group))
# save the daily interaction matrix 
# the file name suggested the day date of the interaction matrix
# in this study, we reconstruct the time-varying interaction from day3

for (i in 1:length(UASB_network)) {
  write_csv(select(UASB_network[[i]], -group), paste0(i+2, ".csv"))
}


