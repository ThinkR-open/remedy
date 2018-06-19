#' Convert to blockquote
#'
#' Turn the selected text into a blockquote.
#'
#' @return a markdown blockquote
#' @export
#' @importFrom rstudioapi getSourceEditorContext insertText
#' 
blockquoter <- function() add_multiline_prefix('> ')
