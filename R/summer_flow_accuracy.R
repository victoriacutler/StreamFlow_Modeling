summer_flow_accuracy <- function(streamflow_data_model, streamflow_data_obs) {
  
  corr <- cor(streamflow_data$average_flow_mod, streamflow_data$average_flow_obs)
  cper <- cper(streamflow_data$average_flow_mod, streamflow_data$average_flow_obs)
  multi_metric <- corr*cper
  
  return(multi_metric)
}