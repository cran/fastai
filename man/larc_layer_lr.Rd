% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/optimizers.R
\name{larc_layer_lr}
\alias{larc_layer_lr}
\title{Larc_layer_lr}
\usage{
larc_layer_lr(p, lr, trust_coeff, wd, eps, clip = TRUE, ...)
}
\arguments{
\item{p}{p}

\item{lr}{learning rate}

\item{trust_coeff}{trust_coeff}

\item{wd}{weight decay}

\item{eps}{epsilon}

\item{clip}{clip}

\item{...}{additional arguments to pass}
}
\value{
None
}
\description{
Computes the local lr before weight decay is applied
}
