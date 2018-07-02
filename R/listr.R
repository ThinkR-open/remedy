#' @title Convert to unordered list
#'
#' @description Turn the selected text into an unordered list.
#'
#' \if{html}{
#' \out{
#'  <img src = "https://github.com/ThinkR-open/remedy/blob/master/readme_gif/list.gif?raw=true">
#' }}
#'
#' @return an unordered markdown list
#' @export
#' @importFrom rstudioapi getSourceEditorContext insertText
#' 
listr <- function() add_multiline_prefix('+ ', as_is = FALSE)

#' @title Convert to ordered list
#'
#' @description Turn the selected text into an ordered list.
#'
#' @return an ordered markdown list
#' @export
#' @importFrom rstudioapi getSourceEditorContext insertText
#' @rdname listr
olistr <- function() add_multiline_prefix('1. ', as_is = FALSE)
