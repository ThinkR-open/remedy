#' Convert to header
#'
#' Convert selected text into a header.
#' 
#' @rdname header
#'
#' @return a markdown header
#' @export
#'

h1r <- function(){
  a <- rstudioapi::getSourceEditorContext()
  rstudioapi::insertText(location = a$selection[[1]]$range, text = paste0("# ", a$selection[[1]]$text))
}

#' @rdname header
#' @export

h2r <- function(){
  a <- rstudioapi::getSourceEditorContext()
  rstudioapi::insertText(location = a$selection[[1]]$range, text = paste0("## ", a$selection[[1]]$text))
}

#' @rdname header
#' @export

h3r <- function(){
  a <- rstudioapi::getSourceEditorContext()
  rstudioapi::insertText(location = a$selection[[1]]$range, text = paste0("### ", a$selection[[1]]$text))
}

#' @rdname header
#' @export

h4r <- function(){
  a <- rstudioapi::getSourceEditorContext()
  rstudioapi::insertText(location = a$selection[[1]]$range, text = paste0("#### ", a$selection[[1]]$text))
}

#' @rdname header
#' @export

h5r <- function(){
  a <- rstudioapi::getSourceEditorContext()
  rstudioapi::insertText(location = a$selection[[1]]$range, text = paste0("##### ", a$selection[[1]]$text))
}

#' @rdname header
#' @export

h6r <- function(){
  a <- rstudioapi::getSourceEditorContext()
  rstudioapi::insertText(location = a$selection[[1]]$range, text = paste0("###### ", a$selection[[1]]$text))
}

