% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/layers.R
\name{ConvLayer}
\alias{ConvLayer}
\title{ConvLayer}
\usage{
ConvLayer(
  ni,
  nf,
  ks = 3,
  stride = 1,
  padding = NULL,
  bias = NULL,
  ndim = 2,
  norm_type = 1,
  bn_1st = TRUE,
  act_cls = nn()$ReLU,
  transpose = FALSE,
  init = "auto",
  xtra = NULL,
  bias_std = 0.01,
  dilation = 1,
  groups = 1,
  padding_mode = "zeros"
)
}
\arguments{
\item{ni}{number of inputs}

\item{nf}{outputs/ number of features}

\item{ks}{kernel size}

\item{stride}{stride}

\item{padding}{padding}

\item{bias}{bias}

\item{ndim}{dimension number}

\item{norm_type}{normalization type}

\item{bn_1st}{batch normalization 1st}

\item{act_cls}{activation}

\item{transpose}{transpose}

\item{init}{initializer}

\item{xtra}{xtra}

\item{bias_std}{bias standard deviation}

\item{dilation}{specify the dilation rate to use for dilated convolution}

\item{groups}{groups size}

\item{padding_mode}{padding mode, e.g 'zeros'}
}
\value{
None
}
\description{
Create a sequence of convolutional (`ni` to `nf`), ReLU (if `use_activ`) and `norm_type` layers.
}
