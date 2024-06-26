% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/text_data.R
\name{Tokenizer_from_df}
\alias{Tokenizer_from_df}
\title{Tokenizer_from_df}
\usage{
Tokenizer_from_df(
  text_cols,
  tok = NULL,
  rules = NULL,
  sep = " ",
  n_workers = 6,
  mark_fields = NULL,
  tok_text_col = "text"
)
}
\arguments{
\item{text_cols}{text columns}

\item{tok}{tokenizer}

\item{rules}{special rules}

\item{sep}{separator}

\item{n_workers}{number of workers}

\item{mark_fields}{mark fields}

\item{tok_text_col}{output column name}
}
\value{
None
}
\description{
Tokenizer_from_df
}
