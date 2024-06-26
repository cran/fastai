% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/vision_augment.R
\name{RandomResizedCropGPU}
\alias{RandomResizedCropGPU}
\title{RandomResizedCropGPU}
\usage{
RandomResizedCropGPU(
  size,
  min_scale = 0.08,
  ratio = list(0.75, 1.33333333333333),
  mode = "bilinear",
  valid_scale = 1
)
}
\arguments{
\item{size}{size}

\item{min_scale}{minimum scale}

\item{ratio}{ratio}

\item{mode}{mode}

\item{valid_scale}{validation scale}
}
\value{
None
}
\description{
Picks a random scaled crop of an image and resize it to `size`
}
