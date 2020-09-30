library(MplusAutomation)
library(tidyverse)

get_bias_pwr = function(model_name) {
  runModels(paste0(getwd(),"/Logistic Regression/",model_name,".inp"))
  readModels(paste0(getwd(),"/Logistic Regression/",model_name,".out"))$parameters[[1]] %>%
    data.frame() %>%
    filter(grepl("ON",paramHeader)) %>%
    mutate(par_bias = (average - population)/population,
           se_bias = (average_se - population_sd)/population_sd) %>%
    summarise(av_par_bias = mean(par_bias),
              av_se_bias = mean(se_bias),
              av_pwr = mean(pct_sig_coef)) 
}

mc_100 = get_bias_pwr("MR_100")
mc_200 = get_bias_pwr("MR_200")
mc_115_3p = get_bias_pwr("MR_3p_115")
