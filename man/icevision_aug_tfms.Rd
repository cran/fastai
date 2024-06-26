% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/icevision_albumentations.R
\name{icevision_aug_tfms}
\alias{icevision_aug_tfms}
\title{Aug_tfms}
\usage{
icevision_aug_tfms(
  size,
  presize = NULL,
  horizontal_flip = icevision_HorizontalFlip(always_apply = FALSE, p = 0.5),
  shift_scale_rotate = icevision_ShiftScaleRotate(always_apply = FALSE, p = 0.5,
    shift_limit_x = c(-0.0625, 0.0625), shift_limit_y = c(-0.0625, 0.0625), scale_limit =
    c(-0.1, 0.1), rotate_limit = c(-45, 45), interpolation = 1, border_mode = 4, value =
    NULL, mask_value = NULL),
  rgb_shift = icevision_RGBShift(always_apply = FALSE, p = 0.5, r_shift_limit = c(-20,
    20), g_shift_limit = c(-20, 20), b_shift_limit = c(-20, 20)),
  lightning = icevision_RandomBrightnessContrast(always_apply = FALSE, p = 0.5,
    brightness_limit = c(-0.2, 0.2), contrast_limit = c(-0.2, 0.2), brightness_by_max =
    TRUE),
  blur = icevision_Blur(always_apply = FALSE, p = 0.5, blur_limit = c(1, 3)),
  crop_fn = partial(icevision_RandomSizedBBoxSafeCrop, p = 0.5),
  pad = partial(icevision_PadIfNeeded, border_mode = 0, value = list(124, 116, 104))
)
}
\arguments{
\item{size}{The final size of the image. If an `int` is given, the maximum size of the image is rescaled, maintaing aspect ratio. If a `list` is given, the image is rescaled to have that exact size (height, width).}

\item{presize}{presize}

\item{horizontal_flip}{Flip around the y-axis. If `NULL` this transform is not applied.}

\item{shift_scale_rotate}{Randomly shift, scale, and rotate. If `NULL` this transform is not applied.}

\item{rgb_shift}{Randomly shift values for each channel of RGB image. If `NULL` this transform is not applied.}

\item{lightning}{Randomly changes Brightness and Contrast. If `NULL` this transform is not applied.}

\item{blur}{Randomly blur the image. If `NULL` this transform is not applied.}

\item{crop_fn}{Randomly crop the image. If `NULL` this transform is not applied. Use `partial` to saturate other parameters of the class.}

\item{pad}{Pad the image to `size`, squaring the image if `size` is an `int`. If `NULL` this transform is not applied. Use `partial` to sature other parameters of the class.}
}
\value{
None
}
\description{
Collection of useful augmentation transforms.
}
