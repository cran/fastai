% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cycleGAN_models.R
\name{ResnetBlock}
\alias{ResnetBlock}
\title{ResnetBlock}
\usage{
ResnetBlock(
  dim,
  pad_mode = "reflection",
  norm_layer = NULL,
  dropout = 0,
  bias = TRUE
)
}
\arguments{
\item{dim}{dimension}

\item{pad_mode}{padding mode}

\item{norm_layer}{normalization layer}

\item{dropout}{dropout rate}

\item{bias}{bias or not}
}
\value{
None
}
\description{
nn()$Module for the ResNet Block
}
