#' @title Convert to unordered list
#'
#' @description Turn the selected text into an unordered list.
#'
#' \if{html}{
#' \out{
#'  <img src = "https://github.com/ThinkR-open/remedy/blob/master/readme_gif/list.gif?raw=true">
#' }}
#'
#' @return a markdown list
#' @export
#' @importFrom rstudioapi getSourceEditorContext insertText
#' 
listr <- function() add_multiline_prefix('+ ')
