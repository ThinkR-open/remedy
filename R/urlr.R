#' urlr
#'
#' Convert selected text into a url
#'
#' @return a markdown link
#' @export
#'
urlr <- function(){
  a <- rstudioapi::getSourceEditorContext()
  
  if (is_link(a$selection[[1]]$text) || a$selection[[1]]$text == "") {
    content <- paste0("[](", a$selection[[1]]$text, ")")
    new_cursor_position <- rstudioapi::document_position(
      row = a$selection[[1]]$range$start[1],
      column = a$selection[[1]]$range$start[2] + 1
    )
  }
  else {
    content <- paste0("[", a$selection[[1]]$text, "]()")
    new_cursor_position <- rstudioapi::document_position(
      row = a$selection[[1]]$range$end[1],
      column = a$selection[[1]]$range$end[2] + 3
    )
  }
  rstudioapi::insertText(location = a$selection[[1]]$range, text = content)
  rstudioapi::setCursorPosition(new_cursor_position)
}
