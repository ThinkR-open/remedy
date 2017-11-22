#' xaringan
#'
#' xaringan pull left and pull right
#'
#' @return a template for xaringan pull left and right
#' @export
#'

xaringanr <- function(){
  a <- rstudioapi::getSourceEditorContext()
  rstudioapi::insertText(location = a$selection[[1]]$range, text = ".pull-left[\n\n]\n\n.pull-right[\n\n]\n")
}
