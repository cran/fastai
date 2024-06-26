% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/vision_augment.R
\name{DeterministicDihedral}
\alias{DeterministicDihedral}
\title{DeterministicDihedral}
\usage{
DeterministicDihedral(
  size = NULL,
  mode = "bilinear",
  pad_mode = "reflection",
  align_corners = NULL
)
}
\arguments{
\item{size}{size}

\item{mode}{mode}

\item{pad_mode}{padding mode}

\item{align_corners}{align corners}
}
\value{
None
}
\description{
Apply a random dihedral transformation to a batch of images with a probability `p`
}
