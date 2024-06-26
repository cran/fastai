% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/icevision_albumentations.R
\name{icevision_Normalize}
\alias{icevision_Normalize}
\title{Normalize}
\usage{
icevision_Normalize(
  mean = list(0.485, 0.456, 0.406),
  std = list(0.229, 0.224, 0.225),
  max_pixel_value = 255,
  always_apply = FALSE,
  p = 1
)
}
\arguments{
\item{mean}{mean}

\item{std}{std}

\item{max_pixel_value}{max_pixel_value}

\item{always_apply}{always_apply}

\item{p}{p}
}
\value{
None
}
\description{
Divide pixel values by 255 = 2**8 - 1, subtract mean per channel and divide by std per channel.
}
\section{Targets}{

image
}

\section{Image types}{

uint8, float32
}

