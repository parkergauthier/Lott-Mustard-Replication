if (!("librarian" %in% rownames(utils::installed.packages()))) {
  utils::install.packages("librarian")
}

librarian::shelf( 
  cran_repo = "https://cran.microsoft.com/",
  ask = FALSE,
  stats, 
  here,
  kableExtra,
  ggthemes,
  tidyverse,
  lubridate,
  haven,
  lmtest,
  gganimate,
  gapminder,
  stargazer,
  snakecase,
  mosaic,
  dplyr,
  esquisse,
  plotly,
  modelr,
  rsample,
  caret,
  foreach,
  parallel,
  gamlr,
  glmnet,
  rpart,
  rpart.plot,
  rsample,
  randomForest,
  gbm,
  pdp,
  ggmap,
  devtools,
)

here::i_am("include.R")