% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/icevision_models.R
\name{faster_rcnn_model}
\alias{faster_rcnn_model}
\title{Faster RSNN model}
\usage{
faster_rcnn_model(
  num_classes,
  backbone = NULL,
  remove_internal_transforms = TRUE,
  pretrained = TRUE
)
}
\arguments{
\item{num_classes}{Number of classes.}

\item{backbone}{Backbone model to use. Defaults to a resnet50_fpn model.}

\item{remove_internal_transforms}{The torchvision model internally applies transforms like resizing and normalization, but we already do this at the `Dataset` level, so it's safe to remove those internal transforms.}

\item{pretrained}{Argument passed to `fastercnn_resnet50_fpn` if `backbone is NULL`. By default it is set to TRUE: this is generally used when training a new model (transfer learning). `pretrained = FALSE` is used during inference (prediction) for cases where the users have their own pretrained weights. **faster_rcnn_kwargs: Keyword arguments that internally are going to be passed to `torchvision.models.detection.faster_rcnn.FastRCNN`.}
}
\value{
model
}
\description{
FasterRCNN model implemented by torchvision.
}
