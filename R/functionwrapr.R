#' @title Function Wrap
#'
#' @description Wrap selected text in a function call
#'
#' @return text wrapped with parentheses with cursor set at leading parenthesis
#' 
#' @rdname functionwrapr
#' @export
#' 
#' @examples 
#' \dontrun{
#' remedy_example(
#'     c( "wrapped in function call"), 
#'     functionwrapr
#'     )
#' }
functionwrapr <- function(prefix = "(", postfix = ")"){
  a <- enclose(prefix, postfix)
  rstudioapi::setCursorPosition(a$selection[[1]][["range"]][[1]])
  
}
