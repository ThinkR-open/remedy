#' @title Emphasize
#'
#' @description Emphasize the selected text.
#'
#' \if{html}{
#' \out{
#'  <img src = "https://github.com/ThinkR-open/remedy/blob/master/readme_gif/emphasise.gif?raw=true">
#' }}
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
