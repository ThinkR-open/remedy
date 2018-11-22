#' @title LaTeX
#'
#' @description Convert the selected text in inline LaTeX.
#'
#' @return inline LaTeX text (in markdown)
#'
#' @rdname latex
#' @export
#' 
#' @examples 
#' \dontrun{
#' remedy_example( 
#'     c( "Latex stuffs"), 
#'     latexr
#'     )
#' }
#' 
latexr <- function() enclose("$")
