## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(echo = TRUE,eval = FALSE,echo = T)

## -----------------------------------------------------------------------------
#  library(fastai)
#  library(magrittr)
#  
#  model = LitModel()
#  
#  data = Data_Loaders(model$train_dataloader(), model$val_dataloader())$cuda()
#  
#  nn = nn()
#  learn = Learner(data, model, loss_func = nn$functional$cross_entropy, opt_func = Adam,
#                  metrics = accuracy)
#  learn %>% fit_one_cycle(1, 0.001)

