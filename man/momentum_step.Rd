% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/optimizers.R
\name{momentum_step}
\alias{momentum_step}
\title{Momentum_step}
\usage{
momentum_step(p, lr, grad_avg, ...)
}
\arguments{
\item{p}{p}

\item{lr}{learning rate}

\item{grad_avg}{grad average}

\item{...}{additional arguments to pass}
}
\value{
None
}
\description{
Step for SGD with momentum with `lr`
}
