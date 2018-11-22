#' @title Emphasize
#'
#' @description Emphasize the selected text.
#'
#' @return emboldened, italicized or strikethrough text (in markdown)
#' 
#' @rdname emphasize
#' @export
#' 
#' @examples 
#' \dontrun{
#' remedy_example(
#'     c( "to_italic"), 
#'     italicsr
#'     )
#' remedy_example(
#'     c( "to_bold"), 
#'     boldr
#'     )
#' remedy_example(
#'     c( "to_strike"), 
#'     striker
#'     )
#' }
#' 
italicsr <- function() enclose("_")

#' @rdname emphasize
#' @export
#' 
boldr <- function() enclose("__")

#' @rdname emphasize
#' @export
#' 
striker <- function() enclose("~~")
