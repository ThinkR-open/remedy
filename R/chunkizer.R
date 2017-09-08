#' Chunckize
#'
#'Turn a selected text into a chunck
#'
#' @return a chunck
#' @export
#'

chunckizer <- function(){
  a <- rstudioapi::getSourceEditorContext()
  rstudioapi::insertText(location = a$selection[[1]]$range, text = paste0("```{r}\n", a$selection[[1]]$text, "\n```"))
}
