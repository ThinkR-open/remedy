#' @title Convert to header
#'
#' @description Convert selected text into a header.
#'
#' 
#' @rdname header
#'
#' @return a markdown header
#' @export
#' @examples 
#' \dontrun{
#' remedy_example( c( "h1"), h1r)
#' remedy_example( c( "h2"), h2r)
#' remedy_example( c( "h3"), h3r)
#' remedy_example( c( "h4"), h4r)
#' remedy_example( c( "h5"), h5r)
#' remedy_example( c( "h6"), h6r)
#' }
h1r <- function() add_prefix("# ")

#' @rdname header
#' @export
h2r <- function() add_prefix("## ")

#' @rdname header
#' @export
h3r <- function() add_prefix("### ")

#' @rdname header
#' @export
h4r <- function() add_prefix("#### ")

#' @rdname header
#' @export
h5r <- function() add_prefix("##### ")

#' @rdname header
#' @export
h6r <- function() add_prefix("###### ")
