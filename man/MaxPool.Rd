% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/blocks.R
\name{MaxPool}
\alias{MaxPool}
\title{MaxPool}
\usage{
MaxPool(ks = 2, stride = NULL, padding = 0, ndim = 2, ceil_mode = FALSE)
}
\arguments{
\item{ks}{kernel size}

\item{stride}{the stride of the window. Default value is kernel_size}

\item{padding}{implicit zero padding to be added on both sides}

\item{ndim}{dimension number}

\item{ceil_mode}{when True, will use ceil instead of floor to compute the output shape}
}
\value{
None
}
\description{
nn.MaxPool layer for `ndim`
}
