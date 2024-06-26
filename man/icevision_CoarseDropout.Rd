% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/icevision_albumentations.R
\name{icevision_CoarseDropout}
\alias{icevision_CoarseDropout}
\title{CoarseDropout}
\usage{
icevision_CoarseDropout(
  max_holes = 8,
  max_height = 8,
  max_width = 8,
  min_holes = NULL,
  min_height = NULL,
  min_width = NULL,
  fill_value = 0,
  mask_fill_value = NULL,
  always_apply = FALSE,
  p = 0.5
)
}
\arguments{
\item{max_holes}{max_holes}

\item{max_height}{max_height}

\item{max_width}{max_width}

\item{min_holes}{min_holes}

\item{min_height}{min_height}

\item{min_width}{min_width}

\item{fill_value}{fill_value}

\item{mask_fill_value}{mask_fill_value}

\item{always_apply}{always_apply}

\item{p}{p}
}
\value{
None
}
\description{
CoarseDropout of the rectangular regions in the image.
}
\section{Targets}{

image, mask
}

\section{Image types}{

uint8, float32
}

\section{Reference}{

| https://arxiv.org/abs/1708.04552 | https://github.com/uoguelph-mlrg/Cutout/blob/master/util/cutout.py | https://github.com/aleju/imgaug/blob/master/imgaug/augmenters/arithmetic.py
}

