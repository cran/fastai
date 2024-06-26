% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/callbacks.R
\name{TrackerCallback}
\alias{TrackerCallback}
\title{TrackerCallback}
\usage{
TrackerCallback(monitor = "valid_loss", comp = NULL, min_delta = 0)
}
\arguments{
\item{monitor}{monitor the loss}

\item{comp}{comp}

\item{min_delta}{minimum delta}
}
\value{
None
}
\description{
A `Callback` that keeps track of the best value in `monitor`.
}
