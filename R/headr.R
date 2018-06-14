#' Convert to header
#'
#' Convert selected text into a header.
#' 
#' @rdname header
#'
#' @return a markdown header
#' @export
#' @importFrom rstudioapi getSourceEditorContext insertText
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


add_prefix <- function(prefix) {
  a <- rstudioapi::getSourceEditorContext()
  s <- a$selection
  n <- length(s)
  # if no text is selected
  if ( n==1L && nchar(s[[1L]]$text)==0L ) {
    pos <- s[[1L]]$range$start
    pos[2L] <- 1
    rstudioapi::insertText(location = pos, text = prefix)
  } else {
    for (i in s) 
      rstudioapi::insertText(location = i$range$start, text = prefix)
  }
}
