df <- read.csv("D:/R_analysis/UASB_Mother/mother_draft_v2/lineplot/interaction_bining_20231023_v6_three_functional_group_subset_all_with_VFA_H2_Final_Mij_adjust.csv", header=T, sep=",") 


library(dplyr)
library(zoo)
library(reshape2)
library(ggplot2)
library(ggpubr)
library(ggplot2)
library(ggsci)      # 修改配色

##g__Methanosaeta
data_test=df[df$type=="FB_MA"&df$j_data_lable=="g__Methanosaeta", ]

#先合併，算10日平均後再溶解 data plot 圖
tttij=dcast(data_test, day_id ~ i_data_lable, value.var="Mij",fun.aggregate = mean, na.rm = TRUE)
#fun.aggregate = mean https://www.twblogs.net/a/5c0ac4d3bd9eee6fb21397c2
tttijr=as.data.frame(rollmean(tttij, k = 5, fill = NA))
tttijr$day_id=c(3:109)
tttijrr=melt(tttijr,id=c("day_id"))

tttji=dcast(data_test, day_id ~ i_data_lable, value.var="Mji",fun.aggregate = mean, na.rm = TRUE)
#fun.aggregate = mean https://www.twblogs.net/a/5c0ac4d3bd9eee6fb21397c2
tttjir=as.data.frame(rollmean(tttji, k = 5, fill = NA))
tttjir$day_id=c(3:109)
tttjirr=melt(tttjir,id=c("day_id"))
head(tttjirr)
head(tttijrr)
