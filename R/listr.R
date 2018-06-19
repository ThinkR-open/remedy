#' Listr
#'
#' Turn the selected text into an unordered list.
#'
#' @return a markdown list
#' @export
#' @importFrom rstudioapi getSourceEditorContext insertText
#' 
listr <- function(){
  
  adc <- rstudioapi::getSourceEditorContext()

  content <- strsplit(adc$selection[[1]]$text,'\n')[[1]]
  
  content[nzchar(content)] <- sprintf('+ %s',content[nzchar(content)])

  content <- paste0(content,collapse = '\n')
  
  rstudioapi::modifyRange(location = adc$selection[[1]]$range, text = content, id = adc$id)
  
}
