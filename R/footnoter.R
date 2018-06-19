#' Footnote
#'
#' Create a footnote from selected text.
#'
#' @return footnote text (in markdown)
#' 
#' @rdname footnote
#' @export
#' @importFrom rstudioapi getSourceEditorContext insertText
#' 
footnoter <- function() enclose("^[", "]")
