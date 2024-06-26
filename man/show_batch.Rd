% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/test.R
\name{show_batch}
\alias{show_batch}
\title{Show_batch}
\usage{
show_batch(
  dls,
  b = NULL,
  max_n = 9,
  ctxs = NULL,
  figsize = c(6, 6),
  show = TRUE,
  unique = FALSE,
  dpi = 120,
  ...
)
}
\arguments{
\item{dls}{dataloader object}

\item{b}{defaults to one_batch}

\item{max_n}{maximum images}

\item{ctxs}{ctxs parameter}

\item{figsize}{figure size}

\item{show}{show or not}

\item{unique}{unique images}

\item{dpi}{dots per inch}

\item{...}{additional arguments to pass}
}
\value{
None
}
\description{
Show_batch
}
\examples{

\dontrun{

dls \%>\% show_batch()

}

}
