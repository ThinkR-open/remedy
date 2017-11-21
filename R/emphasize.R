#' Emphasize
#'
#' Emphasize the selected text.
#'
#' @return emboldened, italicized or strikethrough text (in markdown)
#' 
#' @rdname emphasize
#' @export
#' @importFrom rstudioapi getSourceEditorContext insertText
#' 
italicsr <- function(){
  a <- rstudioapi::getSourceEditorContext()
  rstudioapi::insertText(location = a$selection[[1]]$range, text = paste0("_", a$selection[[1]]$text, "_"))
}

#' @rdname emphasize
#' @export
#' @importFrom rstudioapi getSourceEditorContext insertText
#' 
boldr <- function(){
  a <- rstudioapi::getSourceEditorContext()
  rstudioapi::insertText(location = a$selection[[1]]$range, text = paste0("__", a$selection[[1]]$text, "__"))
}

#' @rdname emphasize
#' @export
#' @importFrom rstudioapi getSourceEditorContext insertText
#' 
strikr <- function(){
  a <- rstudioapi::getSourceEditorContext()
  rstudioapi::insertText(location = a$selection[[1]]$range, text = paste0("~~", a$selection[[1]]$text, "~~"))
}
