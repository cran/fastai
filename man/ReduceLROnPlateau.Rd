% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/callbacks.R
\name{ReduceLROnPlateau}
\alias{ReduceLROnPlateau}
\title{ReduceLROnPlateau}
\usage{
ReduceLROnPlateau(...)
}
\arguments{
\item{...}{parameters to pass}
}
\value{
None
}
\description{
ReduceLROnPlateau
}
\examples{

\dontrun{

URLs_MNIST_SAMPLE()
# transformations
tfms = aug_transforms(do_flip = FALSE)
path = 'mnist_sample'
bs = 20

#load into memory
data = ImageDataLoaders_from_folder(path, batch_tfms = tfms, size = 26, bs = bs)


learn = cnn_learner(data, resnet18(), metrics = accuracy, path = getwd())

learn \%>\% fit_one_cycle(10, 1e-2, cbs = ReduceLROnPlateau(monitor='valid_loss', patience = 1))

}

}
