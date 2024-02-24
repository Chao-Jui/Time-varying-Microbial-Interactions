
data_df=read.csv("D:/xxxxxx/output_v2/interaction_type_20231010_v5_three_functional_group_subset_all_Mij_revised_H2_final_(modified_function).csv")
data_df=data_df[,2:7]
data_df=data_df/100
data_df$interaction_complexity= -(data_df$cooperation*log(data_df$cooperation)+
                data_df$competition*log(data_df$competition)+
                data_df$exploitation*log(data_df$exploitation)+
                data_df$commensalism*log(data_df$commensalism)+
                data_df$amensalism*log(data_df$amensalism)+
                data_df$neutral*log(data_df$neutral))

write.csv(data_df, file = "D:/xxxxxx/output_v2/interaction_complexity.csv", row.names = FALSE)

  
