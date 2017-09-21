#' LaTeX
#'
#' Convert the selected text in inline LaTeX.
#'
#' @return inline LaTeX text (in markdown)
#'
#' @rdname latex
#' @export
#'

latexr <- function(){
  a <- rstudioapi::getSourceEditorContext()
  rstudioapi::insertText(location = a$selection[[1]]$range, text = paste0("$", a$selection[[1]]$text, "$"))
}


