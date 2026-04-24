#' Insert a HTML line break
#'
#' RStudio addin that inserts an HTML `<br>` line break at the cursor
#' (issue #60). Handy when you want a visible blank line between paragraphs
#' in knitted output.
#'
#' @return Invisible NULL. Used for its side effect on the active document.
#' @export
br_r <- function() {
  adc <- rstudioapi::getActiveDocumentContext()
  rstudioapi::insertText(
    location = adc$selection[[1L]]$range,
    text = "<br>"
  )
  invisible(NULL)
}
