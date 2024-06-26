% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/collab.R
\name{get_bias}
\alias{get_bias}
\title{Get bias}
\usage{
get_bias(object, arr, is_item = TRUE, convert = TRUE)
}
\arguments{
\item{object}{extract bias}

\item{arr}{R data frame}

\item{is_item}{logical, is item}

\item{convert}{to R matrix}
}
\value{
tensor
}
\description{
Bias for item or user (based on `is_item`) for all in `arr`
}
\examples{

\dontrun{

movie_bias = learn \%>\% get_bias(top_movies, is_item = TRUE)

}

}
