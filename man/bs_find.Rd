% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bs_finder.R
\name{bs_find}
\alias{bs_find}
\title{Bs_find}
\usage{
bs_find(
  object,
  lr,
  num_it = NULL,
  n_batch = 5,
  simulate_multi_gpus = TRUE,
  show_plot = TRUE
)
}
\arguments{
\item{object}{model/learner}

\item{lr}{learning rate}

\item{num_it}{number of iterations}

\item{n_batch}{number of batches}

\item{simulate_multi_gpus}{simulate on multi gpus or not}

\item{show_plot}{show plot or not}
}
\description{
Launch a mock training to find a good batch size to minimize training time.
}
\details{
However, it may not be a good batch size to minimize the validation loss. A good batch size is where the Simple Noise Scale converge ignoring the small growing trend with the number of iterations if exists. The optimal batch size is about an order the magnitud
where Simple Noise scale converge. Typically, the optimal batch size in image classification problems will be 2-3 times lower where
}
