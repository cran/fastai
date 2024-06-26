% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/vision_augment.R
\name{Contrast}
\alias{Contrast}
\title{Contrast}
\usage{
Contrast(max_lighting = 0.2, p = 0.75, draw = NULL, batch = FALSE)
}
\arguments{
\item{max_lighting}{maximum lighting}

\item{p}{probability}

\item{draw}{draw}

\item{batch}{batch}
}
\value{
None
}
\description{
Apply change in contrast of `max_lighting` to batch of images with probability `p`.
}
