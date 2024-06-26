% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/time_series_data.R
\name{TSDataLoaders_from_dfs}
\alias{TSDataLoaders_from_dfs}
\title{TSDataLoaders_from_dfs}
\usage{
TSDataLoaders_from_dfs(
  df_train,
  df_valid,
  path = ".",
  x_cols = NULL,
  label_col = NULL,
  y_block = NULL,
  item_tfms = NULL,
  batch_tfms = NULL,
  bs = 64,
  val_bs = NULL,
  shuffle_train = TRUE,
  device = NULL
)
}
\arguments{
\item{df_train}{train data}

\item{df_valid}{validation data}

\item{path}{path (optional)}

\item{x_cols}{predictors}

\item{label_col}{label/output column}

\item{y_block}{y_block}

\item{item_tfms}{item transformations}

\item{batch_tfms}{batch transformations}

\item{bs}{batch size}

\item{val_bs}{validation batch size}

\item{shuffle_train}{shuffle train data}

\item{device}{device name}
}
\value{
None
}
\description{
Create a DataLoader from a df_train and df_valid
}
