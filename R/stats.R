
plot_confusion_matrix <- function(object, dataloader) {
  if(inherits(object,"fastai.learner.Learner")) {
    interp = vision()$all$ClassificationInterpretation$from_learner(object)

    conf=interp$confusion_matrix()
    conf=apply(conf, 2, as.integer)
    itms = dls$vocab$items$items
    colnames(conf)=itms
    rownames(conf)=itms

    hchart(conf,label=TRUE) %>%
      hc_yAxis(title = list(text='Actual')) %>%
      hc_xAxis(title = list(text='Predicted'),
               labels = list(rotation=-90))
  } else if (inherits(object,"fastai.tabular.learner.TabularLearner")) {
    conf = tabular$ClassificationInterpretation$from_learner(model)$confusion_matrix()
    colnames(conf)=dls$vocab$items$items
    rownames(conf)=dls$vocab$items$items
    hchart(conf,label=TRUE) %>%
      hc_yAxis(title = list(text='Actual')) %>%
      hc_xAxis(title = list(text='Predicted'),
               labels = list(rotation=-90))
  }

}


#' @title Extract confusion matrix
#'
#' @param object model
#' @return matrix
#'
#' @examples
#'
#' \dontrun{
#'
#' model %>% get_confusion_matrix()
#'
#' }
#'
#' @export
get_confusion_matrix <- function(object) {
  interp = vision()$all$ClassificationInterpretation$from_learner(object)

  conf = interp$confusion_matrix()
  conf = apply(conf, 2, as.integer)

  if(!is.null(interp$vocab$items$items)) {
    itms = interp$vocab$items$items
    colnames(conf)=itms
    rownames(conf)=itms
  }
  conf
}



#' @title Lr_find
#'
#' @description Launch a mock training to find a good learning rate, return lr_min, lr_steep if `suggestions` is TRUE
#'
#' @param object learner
#' @param start_lr starting learning rate
#' @param end_lr end learning rate
#' @param num_it number of iterations
#' @param stop_div stop div or not
#' @param ... additional arguments to pass
#' @return data frame
#'
#' @examples
#'
#' \dontrun{
#'
#' model %>% lr_find()
#' model %>% plot_lr_find(dpi = 200)
#'
#' }
#'
#' @export
lr_find <- function(object, start_lr = 1e-07, end_lr = 10, num_it = 100,
                    stop_div = TRUE, ...) {

  args <- list(
    start_lr = start_lr,
    end_lr = as.integer(end_lr),
    num_it = as.integer(num_it),
    stop_div = stop_div,
    show_plot = FALSE,
    ...
  )

  print(do.call(object$lr_find, args))

  losses = object$recorder$losses
  losses = unlist(lapply(1:length(losses),function(x) as_array(losses[[x]])))
  lrs = object$recorder$lrs

  if(inherits(lrs,"numpy.ndarray"))
    lrs <- reticulate::py_to_r(lrs)

  if(inherits(losses,"numpy.ndarray"))
    losses <- reticulate::py_to_r(losses)

  lrs = data.frame(lr_rates = lrs,
             losses = losses)

  invisible(lrs)

}


#' @title Perplexity
#' @param ... parameters to pass
#' @return None
#' @export
Perplexity <- function(...) {
  invisible(text()$Perplexity(...))
}

attr(Perplexity,"py_function_name") <- "Perplexity"

#' @title One batch
#'
#' @param convert to R matrix
#' @param ... additional parameters to pass
#' @param object data loader
#' @return tensor
#'
#' @examples
#'
#' \dontrun{
#'
#' # get batch from data loader
#' batch = dls %>% one_batch()
#'
#' }
#'
#' @export
one_batch <- function(object, convert = FALSE, ... ) {
  args = list(...)
  obj = do.call(object$one_batch, args)

  if(inherits(obj,'fastai.tabular.data.TabularDataLoaders')) {
    obj
  } else {
    if(convert) {
      if(length(dim(obj[[1]]$cpu()$numpy()))>2) {
        bs = object$bs - 1
        obj[[1]] = lapply(0:bs, function(x) aperm(obj[[1]][[x]]$cpu()$numpy(), c(2,3,1)))
        indices = obj[[2]]$cpu()$numpy()
        list(obj[[1]],indices)
      } else {
        res = lapply(1:length(obj), function(x) obj[[x]]$cpu()$numpy())
        res
      }
    } else {
      obj
    }
  }

}

#' @title Summary
#' @param object model
#' @param ... additional arguments to pass
#' @return None
#'
#' @examples
#'
#' \dontrun{
#'
#' summary(model)
#'
#' }
#'
#' @export
summary.fastai.learner.Learner <- function(object, ...) {
  res = !inherits(try(object$blurr_summary, TRUE), "try-error")
  if(res) {
    object$blurr_summary()
  } else {
    object$summary()
  }
}



#' @title Get_files
#'
#' @description Get all the files in `path` with optional `extensions`, optionally with `recurse`, only in `folders`, if specified.
#'
#'
#' @param path path
#' @param extensions extensions
#' @param recurse recurse
#' @param folders folders
#' @param followlinks followlinks
#' @return list
#' @export
get_files <- function(path, extensions = NULL, recurse = TRUE, folders = NULL, followlinks = TRUE) {

  vision()$all$get_files(
    path = path,
    extensions = extensions,
    recurse = recurse,
    folders = folders,
    followlinks = followlinks
  )

}



#' @title Parallel
#'
#' @description Applies `func` in parallel to `items`, using `n_workers`
#'
#'
#' @param f file names
#' @param items items
#' @param ... additional arguments
#' @return None
#' @export
parallel <- function(f, items, ...) {

  tabular()$parallel(
    f = f,
    items = items,
    ...
  )

}

