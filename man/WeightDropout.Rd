% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/text_models.R
\name{WeightDropout}
\alias{WeightDropout}
\title{WeightDropout}
\usage{
WeightDropout(module, weight_p, layer_names = "weight_hh_l0")
}
\arguments{
\item{module}{module}

\item{weight_p}{weight_p}

\item{layer_names}{layer_names}
}
\value{
None
}
\description{
A module that wraps another layer in which some weights will be replaced by 0 during training.
}
