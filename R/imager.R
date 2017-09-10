#' Imager
#'
#' Convert the selected path into an embedded image
#'
#' @return a markdown image link
#' @export
#'

imager <- function(){
  a <- rstudioapi::getSourceEditorContext()
  content <- paste0("![](", a$selection[[1]]$text, ")")
  rstudioapi::insertText(location = a$selection[[1]]$range, text = content)
}
