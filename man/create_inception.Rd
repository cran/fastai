% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/time_series_model.R
\name{create_inception}
\alias{create_inception}
\title{Create_inception}
\usage{
create_inception(
  ni,
  nout,
  kss = c(39, 19, 9),
  depth = 6,
  bottleneck_size = 32,
  nb_filters = 32,
  head = TRUE
)
}
\arguments{
\item{ni}{number of input channels}

\item{nout}{number of outputs, should be equal to the number of classes for classification tasks.}

\item{kss}{kernel sizes for the inception Block.}

\item{depth}{depth}

\item{bottleneck_size}{The number of channels on the convolution bottleneck.}

\item{nb_filters}{Channels on the convolution of each kernel.}

\item{head}{TRUE if we want a head attached.}
}
\value{
model
}
\description{
Creates an InceptionTime arch from `ni` channels to `nout` outputs.
}
