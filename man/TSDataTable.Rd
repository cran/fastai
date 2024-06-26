% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/time_series_tabular.R
\name{TSDataTable}
\alias{TSDataTable}
\title{TSDataTable}
\usage{
TSDataTable(
  df,
  procs = NULL,
  x_names = NULL,
  y_names = NULL,
  block_y = NULL,
  splits = NULL,
  do_setup = TRUE,
  device = NULL,
  inplace = FALSE
)
}
\arguments{
\item{df}{A DataFrame of your data}

\item{procs}{list of preprocess functions}

\item{x_names}{predictors names}

\item{y_names}{the names of the dependent variables}

\item{block_y}{the TransformBlock to use for the target}

\item{splits}{How to split your data}

\item{do_setup}{A parameter for if Tabular will run the data through the procs upon initialization}

\item{device}{device name}

\item{inplace}{If True, Tabular will not keep a separate copy of your original DataFrame in memory}
}
\value{
None
}
\description{
A `DataFrame` wrapper that knows which cols are x/y, and returns rows in `__getitem__`
}
