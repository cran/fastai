
#' @title Is Rmarkdown?
#' @return logical True/False
#' @export
is_rmarkdown = function() {
  isTRUE(getOption('knitr.in.progress'))
}


#' Add layers to Sequential
#'
#' @param a sequential model
#' @param b layer
#' @return model
#'
#' @export
"+.torch.nn.modules.container.Sequential" <- function(a, b) {

  res = a$`__dict__`$`_modules`

  if(length(names(res))>0) {
    ll = names(res)
    ll = suppressWarnings(as.numeric(ll))
    ll = ll[!is.na(ll)]
    if(length(ll) > 0) {
      max_ = as.character(max(ll) + 1)
    } else {
      max_ = '0'
    }

  } else {
    max_ = '0'
  }

  if(is.list(b)) {
    max_ = b[[1]]
    b = b[[2]]
  }

  a$add_module(max_, module = b)
  a
}



#' @title Show_batch
#' @param dls dataloader object
#' @param b defaults to one_batch
#' @param max_n maximum images
#' @param ctxs ctxs parameter
#' @param show show or not
#' @param unique unique images
#' @param figsize figure size
#' @param dpi dots per inch
#' @param ... additional arguments to pass
#' @return None
#'
#'
#' @examples
#'
#' \dontrun{
#'
#' dls %>% show_batch()
#'
#' }
#'
#' @export
show_batch <- function(dls, b = NULL, max_n = 9, ctxs = NULL,
                       figsize = c(6,6),
                       show = TRUE, unique = FALSE, dpi = 120, ...) {

  fastai2$vision$all$plt$close()

  if(class(dls)[1]=="fastai.tabular.data.TabularDataLoaders") {
    dls$dataset$train$items[sample(nrow(dls$dataset$train$items),dls$bs),]
  } else {
    args = list(
      b = b,
      max_n = as.integer(max_n),
      ctxs = ctxs,
      show = show,
      unique = unique,
      figsize = figsize,
      ...
    )

    if(!is.null(args[['nrows']])) {
      args[['nrows']] = as.integer(args[['nrows']])
    }

    if(!is.null(args[['ncols']])) {
      args[['ncols']] = as.integer(args[['ncols']])
    }

    do.call(dls$show_batch, args)

    tmp_d = gsub(tempdir(), replacement = '/', pattern = '\\', fixed=TRUE)
    fastai2$tabular$all$plt$savefig(paste(tmp_d, 'test.png', sep = '/'), dpi = as.integer(dpi))

    img <- png::readPNG(paste(tmp_d, 'test.png', sep = '/'))
    if(interactive()) {
      try(dev.off(),TRUE)
    }
    grid::grid.raster(img)
  }

}



#' @title ClassificationInterpretation_from_learner
#'
#' @description Construct interpretation object from a learner
#'
#' @param learn learner/model
#' @param ds_idx ds by index
#' @param dl dataloader
#' @param act activation
#' @return interpretation object
#' @export
ClassificationInterpretation_from_learner <- function(learn, ds_idx = 1, dl = NULL, act = NULL) {

  fastai2$vision$all$ClassificationInterpretation$from_learner(
    learn = learn,
    ds_idx = as.integer(ds_idx),
    dl = dl,
    act = act
  )

}


#' @title Plot_top_losses
#'
#' @param interp interpretation object
#' @param k number of images
#' @param largest largest
#' @param figsize plot size
#' @param dpi dots per inch
#' @param ... additional parameters to pass
#' @return None
#'
#'
#' @examples
#'
#' \dontrun{
#'
#' # get interperetation from learn object, the model.
#' interp = ClassificationInterpretation_from_learner(learn)
#' interp %>% plot_top_losses(k = 9, figsize = c(15,11))
#'
#' }
#'
#' @export
plot_top_losses <- function(interp, k, largest = TRUE, figsize = c(7,5),
                            ..., dpi = 90) {

  fastai2$vision$all$plt$close()
  interp$plot_top_losses(
    k = as.integer(k),
    largest = largest,
    figsize = figsize,
    ...
  )

  tmp_d = gsub(tempdir(), replacement = '/', pattern = '\\', fixed = TRUE)

  if(is.null(dpi)) {
    fastai2$tabular$all$plt$savefig(paste(tmp_d, 'test.png', sep = '/'))
  } else {
    fastai2$tabular$all$plt$savefig(paste(tmp_d, 'test.png', sep = '/'), dpi = as.integer(dpi))
  }

  img <- png::readPNG(paste(tmp_d, 'test.png', sep = '/'))
  if(interactive()) {
    try(dev.off(),TRUE)
  }
  grid::grid.raster(img)
}


#' @title Plot_confusion_matrix
#'
#' @description Plot the confusion matrix, with `title` and using `cmap`.
#' @param interp interpretation object
#' @param normalize normalize
#' @param title title
#' @param cmap color map
#' @param norm_dec norm dec
#' @param plot_txt plot text
#' @importFrom graphics rasterImage
#' @param figsize plot size
#' @param dpi dots per inch
#' @param ... additional parameters to pass
#' @return None
#'
#' @examples
#'
#' \dontrun{
#'
#' interp = ClassificationInterpretation_from_learner(model)
#' interp %>% plot_confusion_matrix(dpi = 90,figsize = c(6,6))
#'
#' }
#'
#' @export
plot_confusion_matrix <- function(interp, normalize = FALSE, title = "Confusion matrix",
                                  cmap = "Blues", norm_dec = 2, plot_txt = TRUE,
                                  figsize = c(4,4),
                                  ..., dpi = 120) {

  fastai2$vision$all$plt$close()
  interp$plot_confusion_matrix(
    normalize = normalize,
    title = title,
    cmap = cmap,
    norm_dec = as.integer(norm_dec),
    plot_txt = plot_txt,
    figsize = figsize,
    dpi = dpi
  )

  tmp_d = gsub(tempdir(), replacement = '/', pattern = '\\', fixed = TRUE)
  fastai2$tabular$all$plt$savefig(paste(tmp_d, 'test.png', sep = '/'), dpi = as.integer(dpi))

  img <- png::readPNG(paste(tmp_d, 'test.png', sep = '/'))
  if(interactive()) {
    try(dev.off(),TRUE)
  }
  grid::grid.raster(img)

}


#' @title Plot_loss
#'
#' @description Plot the losses from `skip_start` and onward
#'
#' @param object model
#' @param skip_start n points to skip the start
#' @param with_valid with validation
#' @param dpi dots per inch
#' @return None
#' @export
plot_loss <- function(object, skip_start = 5, with_valid = TRUE, dpi = 200) {


  fastai2$vision$all$plt$close()
  object$recorder$plot_loss(
    skip_start = as.integer(skip_start),
    with_valid = with_valid
  )

  tmp_d = proj_name = gsub(tempdir(), replacement = '/', pattern = '\\', fixed = TRUE)
  fastai2$tabular$all$plt$savefig(paste(tmp_d, 'test.png', sep = '/'), dpi = as.integer(dpi))

  img <- png::readPNG(paste(tmp_d, 'test.png', sep = '/'))
  if(interactive()) {
    try(dev.off(),TRUE)
  }
  grid::grid.raster(img)

}

#' @title Plot_lr_find
#'
#' @description Plot the result of an LR Finder test
#' (won't work if you didn't do `lr_find(learn)` before)
#'
#' @param object model
#' @param skip_end n points to skip the end
#' @param dpi dots per inch
#' @return None
#'
#' @export
plot_lr_find <- function(object, skip_end = 5, dpi = 250) {

  fastai2$vision$all$plt$close()
  object$recorder$plot_lr_find(
    skip_end = as.integer(skip_end)
  )

  tmp_d = gsub(tempdir(), replacement = '/', pattern = '\\', fixed = TRUE)
  fastai2$tabular$all$plt$savefig(paste(tmp_d, 'test.png', sep = '/'), dpi = as.integer(dpi))

  img <- png::readPNG(paste(tmp_d, 'test.png', sep = '/'))
  if(interactive()) {
    try(dev.off(),TRUE)
  }
  grid::grid.raster(img)

}



#' @title Most_confused
#'
#' @description Sorted descending list of largest non-diagonal entries of confusion matrix,
#' presented as actual, predicted, number of occurrences.
#'
#' @param interp interpretation object
#' @param min_val minimum value
#' @return data frame
#' @export
most_confused <- function(interp, min_val = 1) {

  res = interp$most_confused(
    min_val = as.integer(min_val)
  )

  res = lapply(1:length(res), function(x) rbind(res[[x]]))

  res = as.data.frame(do.call(rbind,res))

  res

}


#' @title Subplots
#' @param nrows number of rows
#' @param ncols number of columns
#' @param figsize figure size
#' @param imsize image size
#' @return plot object
#' @export
subplots <- function(nrows = 2, ncols = 2, figsize = NULL, imsize = 4) {
  fastai2$vision$all$plt$close()

  args <- list(
    nrows = as.integer(nrows),
    ncols = as.integer(ncols),
    figsize = figsize,
    imsize = as.integer(imsize)
  )

  if(is.null(args$figsize))
    args$figsize <- NULL

  do.call(fastai2$medical$imaging$subplots, args)

}

#' @title Show
#'
#' @description Adds functionality to view dicom images where each file may have more than 1 frame
#'
#' @param img image object
#' @param frames number of frames
#' @param scale scale
#' @param ... additional arguments
#' @return None
#' @export
show <- function(img, frames = 1, scale = TRUE, ...) {
  args <- list(
    frames = as.integer(frames),
    scale = scale,
    ...
  )

  if (is.list(scale)) {
    args$scale = reticulate::tuple(scale)
  }

  if(class(img)[1]=="pydicom.dataset.FileDataset") {
    invisible(do.call(img$show, args))
  } else {

    args <- list(...)
    invisible(do.call(img$show, args))
  }

}

#' @title Plot dicom
#'
#' @param x model
#' @param y y axis
#' @param ... parameters to pass
#' @param dpi dots per inch
#' @return None
#' @export
plot <- function(x, y, ..., dpi = 100) {
  object = x
  tmp_d = gsub(tempdir(), replacement = '/', pattern = '\\', fixed = TRUE)
  fastai2$tabular$all$plt$savefig(paste(tmp_d, 'test.png', sep = '/'), dpi = as.integer(dpi), ...)

  img <- png::readPNG(paste(tmp_d, 'test.png', sep = '/'))
  if(interactive()) {
    try(dev.off(),TRUE)
  }
  grid::grid.raster(img)
  fastai2$vision$all$plt$close()
}



#' @title Show_images
#'
#' @description Show all images `ims` as subplots with `rows` using `titles`
#'
#'
#' @param ims images
#' @param nrows number of rows
#' @param ncols number of columns
#' @param titles titles
#' @param figsize figure size
#' @param imsize image size
#' @param add_vert add vertical
#' @return None
#' @export
show_images <- function(ims, nrows = 1, ncols = NULL,
                        titles = NULL, figsize = NULL, imsize = 3, add_vert = 0) {

  args <- list(
    ims = ims,
    nrows = as.integer(nrows),
    ncols = ncols,
    titles = titles,
    figsize = figsize,
    imsize = as.integer(imsize),
    add_vert = as.integer(add_vert)
  )

  if(!is.null(ncols)) {
    args$ncols = as.integer(args$ncols)
  } else {
    args$ncols <- NULL
  }

  if(is.null(args$titles))
    args$titles <- NULL

  if(is.null(args$figsize))
    args$figsize <- NULL


  do.call(medical()$show_images, args)

}


#' @title Uniform_blur2d
#'
#' @description Uniformly apply blurring
#'
#'
#' @param x image
#' @param s effect
#' @return None
#' @export
uniform_blur2d <- function(x, s) {

  medical()$uniform_blur2d(
    x = x,
    s = as.integer(s)
  )

}



#' @title Gauss_blur2d
#'
#' @description Apply gaussian_blur2d kornia filter
#'
#'
#' @param x image
#' @param s effect
#' @return None
#' @export
gauss_blur2d <- function(x, s) {

   medical$gauss_blur2d(
    x = x,
    s = as.integer(s)
  )

}



#' @title Show_results
#'
#' @description Show some predictions on `ds_idx`-th dataset or `dl`
#'
#' @param object model
#' @param ds_idx ds by index
#' @param dl dataloader
#' @param max_n maximum number of images
#' @param shuffle shuffle or not
#' @return None
#' @param dpi dots per inch
#' @param ... additional arguments
#' @export
show_results <- function(object, ds_idx = 1, dl = NULL, max_n = 9, shuffle = TRUE, dpi = 90, ...) {
  fastai2$vision$all$plt$close()

  args <- list(
    ds_idx = as.integer(ds_idx),
    dl = dl,
    max_n = as.integer(max_n),
    shuffle = shuffle,
    ...
  )

  if(is.null(args$dl))
    args$dl <- NULL

  if(!is.null(args[['vmin']])) {
    args[['vmin']] = as.integer(args[['vmin']])
  }

  if(!is.null(args[['vmax']])) {
    args[['vmax']] = as.integer(args[['vmax']])
  }

  rr = try(do.call(object$show_results, args), silent = TRUE)

  if(inherits(rr,'try-error')) {
    # predict
    dls = object$dls
    b = one_batch(dls$train)
    preds = object$get_preds(dl=list(b), with_decoded=TRUE)
    preds = preds[[3]]


    if(object$dls$bs <= 3) {
      show_batch(dls, list(
        torch()$stack(list(b[[1]][0],b[[1]][1]),0L)$cpu(),
        torch()$stack(list(preds[[2]][0],preds[[2]][1]),0L)
      ), nrows = 2, ncols = 1, dpi = as.integer(dpi))
    } else {
      show_batch(dls, list(
        torch()$stack(list(b[[1]][2],b[[1]][3]),0L)$cpu(),
        torch()$stack(list(preds[[2]][2],preds[[2]][3]),0L)
      ), nrows = 2, ncols = 1, dpi = as.integer(dpi))
    }

  } else {
    do.call(object$show_results, args)

    tmp_d = gsub(tempdir(), replacement = '/', pattern = '\\', fixed=TRUE)
    fastai2$tabular$all$plt$savefig(paste(tmp_d, 'test.png', sep = '/'), dpi = as.integer(dpi))

    img <- png::readPNG(paste(tmp_d, 'test.png', sep = '/'))
    if(interactive()) {
      try(dev.off(),TRUE)
    }
    grid::grid.raster(img)
  }


}



#' @title Partial
#'
#' @description partial(func, *args, **keywords) - new function with partial application
#'
#' @param ... additional arguments
#' @return None
#'
#' @examples
#'
#' \dontrun{
#'
#' generator = basic_generator(out_size = 64, n_channels = 3, n_extra_layers = 1)
#' critic    = basic_critic(in_size = 64, n_channels = 3, n_extra_layers = 1,
#'                          act_cls = partial(nn$LeakyReLU, negative_slope = 0.2))
#'
#' }
#'
#' @export
partial <- function(...) {

  vision()$gan$partial(...)

}
