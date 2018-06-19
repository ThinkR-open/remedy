#' Emphasize
#'
#' Emphasize the selected text.
#'
#' @return emboldened, italicized or strikethrough text (in markdown)
#' 
#' @rdname emphasize
#' @export
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
