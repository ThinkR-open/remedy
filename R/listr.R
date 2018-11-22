#' @title Convert to list
#'
#' @description Convert selected text into an (un)ordered list.
#'
#' @examples 
#' \dontrun{
#' #unordered list
#' remedy_example(c('line 1','line 2'),listr)
#' 
#' #ordered list
#' remedy_example(c('line 1','line 2'),olistr) 
#' }
#' @return \code{listr()} returns an unordered markdown list
#' @export
#' @importFrom rstudioapi getSourceEditorContext insertText
#' 
listr <- function() add_multiline_prefix('+ ', as_is = FALSE)

#' @return \code{olistr()} returns an ordered markdown list
#' @export
#' @importFrom rstudioapi getSourceEditorContext insertText
#' @rdname listr
olistr <- function() add_multiline_prefix('1. ', as_is = FALSE)
