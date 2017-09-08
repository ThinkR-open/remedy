#' urlr
#'
#' Turn a selected text into an url
#'
#' @return an url
#' @export
#'

urlr <- function(){
  a <- rstudioapi::getSourceEditorContext()
  content <- paste0("[", content, "](", content, ")")
  rstudioapi::insertText(location = a$selection[[1]]$range, text = content)
}

