% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/vision_augment.R
\name{get_annotations}
\alias{get_annotations}
\title{Get_annotations}
\usage{
get_annotations(fname, prefix = NULL)
}
\arguments{
\item{fname}{folder name}

\item{prefix}{prefix}
}
\value{
None
}
\description{
Open a COCO style json in `fname` and returns the lists of filenames (with maybe `prefix`) and labelled bboxes.
}
