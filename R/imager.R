#' Imager
#'
#' Turn a selected path into an image
#'
#' @return an image
#' @export
#'

imager <- function(){
  a <- rstudioapi::getSourceEditorContext()
  content <- paste0("![](", a$selection[[1]]$text, ")")
  rstudioapi::insertText(location = a$selection[[1]]$range, text = content)
}
