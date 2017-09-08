#' Listr
#'
#' Turn a selected text into an unordered list.
#'
#' @return a list
#' @export
#'

listr <- function(){
  a <- rstudioapi::getSourceEditorContext()
  content <- stringr::str_replace_all(a$selection[[1]]$text, "\n", "\n+ ")
  content <- paste0("+ ", content)
  rstudioapi::insertText(location = a$selection[[1]]$range, text = content)
}
