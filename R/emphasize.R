#' Emphasize
#'
#' Emphasize a selected text.
#'
#' @return a backticked word
#' @export
#'

italicsr <- function(){
  a <- rstudioapi::getSourceEditorContext()
  rstudioapi::insertText(location = a$selection[[1]]$range, text = paste0("_", a$selection[[1]]$text, "_"))
}

boldr <- function(){
  a <- rstudioapi::getSourceEditorContext()
  rstudioapi::insertText(location = a$selection[[1]]$range, text = paste0("__", a$selection[[1]]$text, "__"))
}

strikr <- function(){
  a <- rstudioapi::getSourceEditorContext()
  rstudioapi::insertText(location = a$selection[[1]]$range, text = paste0("~~", a$selection[[1]]$text, "~~"))
}
