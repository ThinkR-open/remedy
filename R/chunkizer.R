#' Chunkize
#'
#' Turn the selected text into an R chunk
#'
#' @return an R code chunk
#' @export
#'

chunkizer <- function(){
  a <- rstudioapi::getSourceEditorContext()
  rstudioapi::insertText(location = a$selection[[1]]$range, text = paste0("```{r}\n", a$selection[[1]]$text, "\n```"))
}
