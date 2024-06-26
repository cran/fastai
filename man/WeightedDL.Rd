% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/callbacks_data.R
\name{WeightedDL}
\alias{WeightedDL}
\title{WeightedDL}
\usage{
WeightedDL(
  dataset = NULL,
  bs = NULL,
  wgts = NULL,
  shuffle = FALSE,
  num_workers = NULL,
  verbose = FALSE,
  do_setup = TRUE,
  pin_memory = FALSE,
  timeout = 0,
  batch_size = NULL,
  drop_last = FALSE,
  indexed = NULL,
  n = NULL,
  device = NULL,
  persistent_workers = FALSE
)
}
\arguments{
\item{dataset}{dataset}

\item{bs}{bs}

\item{wgts}{weights}

\item{shuffle}{shuffle}

\item{num_workers}{number of workers}

\item{verbose}{verbose}

\item{do_setup}{do_setup}

\item{pin_memory}{pin_memory}

\item{timeout}{timeout}

\item{batch_size}{batch_size}

\item{drop_last}{drop_last}

\item{indexed}{indexed}

\item{n}{n}

\item{device}{device}

\item{persistent_workers}{persistent_workers}
}
\value{
None
}
\description{
Transformed `DataLoader`
}
