#' urlr
#'
#' Convert selected text into a url
#'
#' @return a markdown link
#' @export
#' @importFrom rstudioapi getSourceEditorContext insertText document_position setCursorPosition
#' 
urlr <- function(){
  a <- rstudioapi::getSourceEditorContext()
  selection_split <- unlist(strsplit(a$selection[[1]]$text, split = " "))
  # Test if last element is link 
  if (!is_link(selection_split[length(selection_split)])){
    a$selection[[1]]$range$start[[2]] <- a$selection[[1]]$range$end[[2]] + 3
    rstudioapi::insertText(location = a$selection[[1]]$range, text = "# Error : last element of the selection is not an url")
  } else {
    if (length(selection_split) == 1) {
      content <- paste0("[",a$selection[[1]]$text,"](", a$selection[[1]]$text, ")")
      new_cursor_position <- rstudioapi::document_position(
        row = a$selection[[1]]$range$start[1],
        column = a$selection[[1]]$range$start[2] + 1
      )
    }
    else {
      content <- paste0("[", paste0(selection_split[1:length(selection_split)-1], collapse = " "), "](",selection_split[length(selection_split)],")")
      new_cursor_position <- rstudioapi::document_position(
        row = a$selection[[1]]$range$end[1],
        column = a$selection[[1]]$range$end[2] + 3
      )
    }
    rstudioapi::insertText(location = a$selection[[1]]$range, text = content)
    rstudioapi::setCursorPosition(new_cursor_position) 
  }
}
