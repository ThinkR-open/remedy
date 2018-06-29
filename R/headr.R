#' @title Convert to header
#'
#' @description Convert selected text into a header.
#' 
#' \if{html}{
#' \out{
#'  <img src = "https://github.com/ThinkR-open/remedy/blob/master/readme_gif/header.gif?raw=true">
#' }}
#'
#' 
#' @rdname header
#'
#' @return a markdown header
#' @export
#' 
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
