% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Loss.R
\name{LabelSmoothingCrossEntropy}
\alias{LabelSmoothingCrossEntropy}
\title{LabelSmoothingCrossEntropy}
\usage{
LabelSmoothingCrossEntropy(eps = 0.1, reduction = "mean")
}
\arguments{
\item{eps}{epsilon}

\item{reduction}{reduction, defaults to mean}
}
\value{
Loss object
}
\description{
Same as `nn$Module`, but no need for subclasses to call `super()$__init__`
}
