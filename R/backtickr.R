#' Backtick
#'
#' Backtick selected word(s)
#'
#' @return a backticked text selection
#' @export
#' @examples 
#' \dontrun{
#' remedy_example(
#'     c( "to_backtick"), 
#'     backtickr
#'     )
#' }
backtickr <- function() enclose("`")
