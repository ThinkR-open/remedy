#' Convert to blockquote
#'
#' Turn the selected text into a blockquote.
#'
#' @return a markdown blockquote
#' @export
#' @importFrom rstudioapi getSourceEditorContext insertText
#' 
blockquoter <- function(){
  adc <- rstudioapi::getSourceEditorContext()

  content <- strsplit(adc$selection[[1]]$text,'\n')[[1]]
  
  content[nzchar(content)] <- sprintf('> %s',content[nzchar(content)])
  
  content <- paste0(content, '\n', collapse = '')
  
  rstudioapi::modifyRange(
    location = adc$selection[[1]]$range,
    text = content,
    id = adc$id
  )
}



