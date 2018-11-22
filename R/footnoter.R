#' @title Footnote
#'
#' @description Create a footnote from selected text.
#'
#' @return footnote text (in markdown)
#' 
#' @rdname footnote
#' @export
#' @importFrom rstudioapi getSourceEditorContext insertText
#' @examples 
#' \dontrun{
#' remedy_example(
#'     c( "# Create a footnote"), 
#'     footnoter
#'     )
#' }
footnoter <- function() enclose("^[", "]")
