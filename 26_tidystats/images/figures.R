library(tidyverse)
library(gt)

d <- tibble::tribble(
                         ~Question,                             ~Analysis,                                ~Formula,
  "不同的健康状态下，认知水平是否存在显著不同（忽视药物方法）?",                       "One-way ANOVA",                  "mmse ~ health_status",
  "不同的药物方法下，认知水平是否存在显著不同（忽视健康状态）?",                       "One-way ANOVA",                 "mmse ~ drug_treatment",
             "药物方法和健康状态，是否影响认知水平?",                       "Two-way ANOVA", "mmse ~ health_status + drug_treatment",
                   "药物作用是否依赖健康状态?", "Two-way ANOVA with interaction term", "mmse ~ health_status * drug_treatment"
  )



gt_table <- d %>% 
  gt() %>%
  cols_width(
    Question ~ px(360),
    Analysis ~ px(200),
    Formula ~ px(300)
  )
gt_table


gtsave(gt_table, filename = 'four-questions.png')




