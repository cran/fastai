% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/text_data.R
\name{TextBlock_from_df}
\alias{TextBlock_from_df}
\title{TextBlock_from_df}
\usage{
TextBlock_from_df(
  text_cols,
  vocab = NULL,
  is_lm = FALSE,
  seq_len = 72,
  backwards = FALSE,
  min_freq = 3,
  max_vocab = 60000,
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

\item{vocab}{vocabulary}

\item{is_lm}{is_lm}

\item{seq_len}{sequence length}

\item{backwards}{backwards}

\item{min_freq}{minimum frequency}

\item{max_vocab}{max vocabulary}

\item{tok}{tokenizer}

\item{rules}{rules}

\item{sep}{separator}

\item{n_workers}{number workers}

\item{mark_fields}{mark_fields}

\item{tok_text_col}{result column name}
}
\value{
None
}
\description{
Build a `TextBlock` from a dataframe using `text_cols`
}
