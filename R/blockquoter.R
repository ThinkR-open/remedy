#' Blockquoter
#'
#' Turn the selected text into a blockquote.
#'
#' @return a markdown blockquote
#' @export
#' @importFrom rstudioapi getSourceEditorContext insertText
#' 
blockquoter <- function(){
  a <- rstudioapi::getSourceEditorContext()

  content <- strsplit(a$selection[[1]]$text,'\n')[[1]]
  
  # content[nzchar(content)] <- sprintf('> %s',content[nzchar(content)])
  content <- sprintf('> %s',content)
  
  content <- paste0(content, '\n', collapse = '')
  
  rstudioapi::insertText(location = a$selection[[1]]$range, text = content)
}
