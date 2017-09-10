#' Imager
#'
#' Convert the selected path into an embedded image
#'
#' @return a markdown image link
#' @export
#'

imager <- function(){
  a <- rstudioapi::getSourceEditorContext()
  
  if (is_link(a$selection[[1]]$text) || a$selection[[1]]$text == "") {
    content <- paste0("![](", a$selection[[1]]$text, ")")
    new_cursor_position <- rstudioapi::document_position(
      row = a$selection[[1]]$range$start[1],
      column = a$selection[[1]]$range$start[2] + 2
    )
  }
  else {
    content <- paste0("![", a$selection[[1]]$text, "]()")
    new_cursor_position <- rstudioapi::document_position(
      row = a$selection[[1]]$range$end[1],
      column = a$selection[[1]]$range$end[2] + 4
    )
  }
  rstudioapi::insertText(location = a$selection[[1]]$range, text = content)
  rstudioapi::setCursorPosition(new_cursor_position)
}
