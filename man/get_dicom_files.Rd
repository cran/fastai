% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/medical.R
\name{get_dicom_files}
\alias{get_dicom_files}
\title{get_dicom_files}
\usage{
get_dicom_files(path, recurse = TRUE, folders = NULL)
}
\arguments{
\item{path}{path to files}

\item{recurse}{recursive or not}

\item{folders}{folder names}
}
\value{
lsit of files
}
\description{
Get dicom files in `path` recursively, only in `folders`, if specified.
}
\examples{

\dontrun{

items = get_dicom_files("siim_small/train/")


}

}
