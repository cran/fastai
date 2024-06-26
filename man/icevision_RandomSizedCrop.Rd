% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/icevision_albumentations.R
\name{icevision_RandomSizedCrop}
\alias{icevision_RandomSizedCrop}
\title{RandomSizedCrop}
\usage{
icevision_RandomSizedCrop(
  min_max_height,
  height,
  width,
  w2h_ratio = 1,
  interpolation = 1,
  always_apply = FALSE,
  p = 1
)
}
\arguments{
\item{min_max_height}{min_max_height}

\item{height}{height}

\item{width}{width}

\item{w2h_ratio}{w2h_ratio}

\item{interpolation}{interpolation}

\item{always_apply}{always_apply}

\item{p}{p}
}
\value{
None
}
\description{
Crop a random part of the input and rescale it to some size.
}
\section{Targets}{

image, mask, bboxes, keypoints
}

\section{Image types}{

uint8, float32
}

