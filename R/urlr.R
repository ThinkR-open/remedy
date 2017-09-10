#' urlr
#'
#' Convert selected text into a url
#'
#' @return a markdown link
#' @export
#'

urlr <- function(){
  a <- rstudioapi::getSourceEditorContext()
  content <- paste0("[](", a$selection[[1]]$text, ")")
  rstudioapi::insertText(location = a$selection[[1]]$range, text = content)
}

