% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/custom_modules.R
\name{train_loader}
\alias{train_loader}
\title{Train_loader}
\usage{
train_loader()
}
\value{
loader
}
\description{
Data loader. Combines a dataset and a sampler, and provides an iterable over
}
\details{
the given dataset. The :class:`~torch.utils.data.DataLoader` supports both map-style and
iterable-style datasets with single- or multi-process loading, customizing
loading order and optional automatic batching (collation) and memory pinning.
}
