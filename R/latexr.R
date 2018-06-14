#' LaTeX
#'
#' Convert the selected text in inline LaTeX.
#'
#' @return inline LaTeX text (in markdown)
#'
#' @rdname latex
#' @export
#' 
latexr <- function() enclose("$")
