#' Convert to blockquote
#'
#' Turn the selected text into a blockquote.
#'
#' @return a markdown blockquote
#' @export
#' @importFrom rstudioapi getSourceEditorContext insertText
#' @examples 
#' \dontrun{
#' remedy_example(
#'     c( "to_blockquote"), 
#'     blockquoter
#'     )
#' }
blockquoter <- function() add_multiline_prefix('> ', as_is = TRUE)
