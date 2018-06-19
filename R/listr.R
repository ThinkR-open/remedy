#' Convert to unordered list
#'
#' Turn the selected text into an unordered list.
#'
#' @return a markdown list
#' @export
#' @importFrom rstudioapi getSourceEditorContext insertText
#' 
listr <- function() add_multiline_prefix('+ ')
