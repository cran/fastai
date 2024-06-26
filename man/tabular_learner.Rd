% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tabular.R
\name{tabular_learner}
\alias{tabular_learner}
\title{Tabular learner}
\usage{
tabular_learner(
  dls,
  layers = NULL,
  emb_szs = NULL,
  config = NULL,
  n_out = NULL,
  y_range = NULL,
  loss_func = NULL,
  opt_func = Adam(),
  lr = 0.001,
  splitter = trainable_params(),
  cbs = NULL,
  metrics = NULL,
  path = NULL,
  model_dir = "models",
  wd = NULL,
  wd_bn_bias = FALSE,
  train_bn = TRUE,
  moms = list(0.95, 0.85, 0.95)
)
}
\arguments{
\item{dls}{It is a DataLoaders object.}

\item{layers}{layers}

\item{emb_szs}{emb_szs}

\item{config}{config}

\item{n_out}{n_out}

\item{y_range}{y_range}

\item{loss_func}{It can be any loss function you like.}

\item{opt_func}{It will be used to create an optimizer when Learner.fit is called.}

\item{lr}{It is learning rate.}

\item{splitter}{It is a function that takes self.model and returns a list of parameter groups (or just one parameter group if there are no different parameter groups)}

\item{cbs}{It is one or a list of Callbacks to pass to the Learner.}

\item{metrics}{It is an optional list of metrics, that can be either functions or Metrics.}

\item{path}{İt is used to save and/or load models.Often path will be inferred from dls, but you can override it or pass a Path object to model_dir. Make sure you can write in path/model_dir!}

\item{model_dir}{İt is used to save and/or load models.Often path will be inferred from dls, but you can override it or pass a Path object to model_dir. Make sure you can write in path/model_dir!}

\item{wd}{It is the default weight decay used when training the model.}

\item{wd_bn_bias}{It controls if weight decay is applied to BatchNorm layers and bias.}

\item{train_bn}{It controls if BatchNorm layers are trained even when they are supposed to be frozen according to the splitter.}

\item{moms}{The default momentums used in Learner.fit_one_cycle.}
}
\value{
learner object
}
\description{
Get a `Learner` using `dls`, with `metrics`, including a `TabularModel` created using the remaining params.
}
