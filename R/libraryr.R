#' @title Interactively Add Libraries Chunk to Rmarkdown Document
#' @description Addin that scans the Rmarkdown Documents and adds the relevant
#' library calls to a chunk at top of the file.
#' @return NULL
#' @rdname libraryr
#' @importFrom rstudioapi getSourceEditorContext
#' @importFrom sinew pretty_rmd
#' @export
libraryr <- function(){
  adc <- rstudioapi::getSourceEditorContext()
  sinew::pretty_rmd(adc$path,output = adc$path)
  return(invisible(NULL))
}