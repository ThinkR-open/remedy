#' @title xaringan
#'
#' @description xaringan pull left and pull right
#'
#' @return a template for xaringan pull left and right
#' @export
#' 
#' @examples 
#' \dontrun{
#' remedy_example( 
#'     "", 
#'     xaringanr
#'     )
#' }
#' 
xaringanr <- function(){
  enclose(".pull-left[\n\n]\n", "\n.pull-right[\n\n]\n")
}
