% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/icevision_albumentations.R
\name{icevision_HistogramMatching}
\alias{icevision_HistogramMatching}
\title{HistogramMatching}
\usage{
icevision_HistogramMatching(
  reference_images,
  blend_ratio = list(0.5, 1),
  read_fn = icevision_read_rgb_image(),
  always_apply = FALSE,
  p = 0.5
)
}
\arguments{
\item{reference_images}{reference_images}

\item{blend_ratio}{blend_ratio}

\item{read_fn}{read_fn}

\item{always_apply}{always_apply}

\item{p}{p}
}
\value{
None
}
\description{
Apply histogram matching. It manipulates the pixels of an input image so that its histogram matches
}
\details{
the histogram of the reference image. If the images have multiple channels, the matching is done independently
for each channel, as long as the number of channels is equal in the input image and the reference. Histogram matching can be used as a lightweight normalisation for image processing,
such as feature matching, especially in circumstances where the images have been taken from different
sources or in different conditions (i.e. lighting). See: https://scikit-image.org/docs/dev/auto_examples/color_exposure/plot_histogram_matching.html
}
\section{See}{

https://scikit-image.org/docs/dev/auto_examples/color_exposure/plot_histogram_matching.html
}

\section{Targets}{

image
}

\section{Image types}{

uint8, uint16, float32
}

