% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/blocks.R
\name{SEResNeXtBlock}
\alias{SEResNeXtBlock}
\title{SEResNeXtBlock}
\usage{
SEResNeXtBlock(
  expansion,
  ni,
  nf,
  groups = 32,
  reduction = 16,
  stride = 1,
  base_width = 4
)
}
\arguments{
\item{expansion}{decoder}

\item{ni}{number of linear inputs}

\item{nf}{number of features}

\item{groups}{groups number}

\item{reduction}{reduction number}

\item{stride}{stride number}

\item{base_width}{int, base width}
}
\value{
Block object
}
\description{
SEResNeXtBlock
}
