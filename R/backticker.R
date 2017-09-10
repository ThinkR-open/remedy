#' Backtick
#'
#' Backtick selected word(s)
#'
#' @return a backticked text selection
#' @export
#'

backticker <- function(){
  a <- rstudioapi::getSourceEditorContext()
  rstudioapi::insertText(location = a$selection[[1]]$range, text = paste0("`", a$selection[[1]]$text, "`"))
}
