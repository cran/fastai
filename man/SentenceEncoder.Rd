% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/text_models.R
\name{SentenceEncoder}
\alias{SentenceEncoder}
\title{SentenceEncoder}
\usage{
SentenceEncoder(bptt, module, pad_idx = 1, max_len = NULL)
}
\arguments{
\item{bptt}{bptt}

\item{module}{module}

\item{pad_idx}{pad_idx}

\item{max_len}{max_len}
}
\value{
None
}
\description{
Create an encoder over `module` that can process a full sentence.
}
