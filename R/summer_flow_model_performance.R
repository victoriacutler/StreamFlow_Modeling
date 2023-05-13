#' Summer Flow Model Performance
#'
#' Calculates model performance based off of the summer flow prediction
#'
#' @param modeled_data A dataframe containing modeled streamflow data for the summer
#' @param observed_data A dataframe containing observed streamflow data for the summer
#'
#' @return A numeric value representing the model performance metric 
#'
#' @details The returned value is a product of the correlation coefficient and the normalized
#' coefficient of percent error (cper), both of which range from 0 to 1. Higher values indicate
#' better model performance. This performance metric combines NSE, relative error, and correlation. Together, #' this provides a comprehensive performance metric.
#'
#' @examples
#' summer_flow_model_performance(modeled_data, observed_data)
#'
#' @importFrom stats cor
#' @importFrom flowMetrics cper
#' 
summer_flow_model_performance <- function(modeled_data, observed_data) {
  
  # model metric between 0 and 1
  corr <- cor(as.matrix(modeled_data), as.matrix(observed_data))
  
  # model performance metric already normalized between 0 and 1
  cper <- cper(as.matrix(modeled_data), as.matrix(observed_data))
  multi_metric <- corr * cper
  
  return(multi_metric)
}






