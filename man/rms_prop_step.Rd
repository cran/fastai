% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/optimizers.R
\name{rms_prop_step}
\alias{rms_prop_step}
\title{Rms_prop_step}
\usage{
rms_prop_step(p, lr, sqr_avg, eps, grad_avg = NULL, ...)
}
\arguments{
\item{p}{p}

\item{lr}{learning rate}

\item{sqr_avg}{sqr average}

\item{eps}{epsilon}

\item{grad_avg}{grad average}

\item{...}{additional arguments to pass}
}
\value{
None
}
\description{
Step for SGD with momentum with `lr`
}
