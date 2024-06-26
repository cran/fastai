% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/metric.R
\name{RocAucMulti}
\alias{RocAucMulti}
\title{RocAucMulti}
\usage{
RocAucMulti(
  sigmoid = TRUE,
  average = "macro",
  sample_weight = NULL,
  max_fpr = NULL
)
}
\arguments{
\item{sigmoid}{sigmoid}

\item{average}{average}

\item{sample_weight}{sample_weight}

\item{max_fpr}{max_fpr}
}
\value{
None
}
\description{
Area Under the Receiver Operating Characteristic Curve for multi-label binary classification problems
}
