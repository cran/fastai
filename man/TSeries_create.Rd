% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/time_series_core.R
\name{TSeries_create}
\alias{TSeries_create}
\title{TSeries_create}
\usage{
TSeries_create(x, ...)
}
\arguments{
\item{x}{tensor}

\item{...}{additional parameters}
}
\value{
tensor
}
\description{
TSeries_create
}
\examples{

\dontrun{

res = TSeries_create(as.array(runif(100)))
res \%>\% show(title = 'R array') \%>\% plot(dpi = 200)

}


}
