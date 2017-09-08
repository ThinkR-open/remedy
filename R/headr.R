#' Chunckize
#'
#' Turn a selected text into a header.
#'
#' @return a header
#' @export
#'

h1r <- function(){
  a <- rstudioapi::getSourceEditorContext()
  rstudioapi::insertText(location = a$selection[[1]]$range, text = paste0("# ", a$selection[[1]]$text))
}

h2r <- function(){
  a <- rstudioapi::getSourceEditorContext()
  rstudioapi::insertText(location = a$selection[[1]]$range, text = paste0("## ", a$selection[[1]]$text))
}

h3r <- function(){
  a <- rstudioapi::getSourceEditorContext()
  rstudioapi::insertText(location = a$selection[[1]]$range, text = paste0("### ", a$selection[[1]]$text))
}

h4r <- function(){
  a <- rstudioapi::getSourceEditorContext()
  rstudioapi::insertText(location = a$selection[[1]]$range, text = paste0("#### ", a$selection[[1]]$text))
}

h5r <- function(){
  a <- rstudioapi::getSourceEditorContext()
  rstudioapi::insertText(location = a$selection[[1]]$range, text = paste0("##### ", a$selection[[1]]$text))
}

h6r <- function(){
  a <- rstudioapi::getSourceEditorContext()
  rstudioapi::insertText(location = a$selection[[1]]$range, text = paste0("###### ", a$selection[[1]]$text))
}

