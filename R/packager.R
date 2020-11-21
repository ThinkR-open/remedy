#' @title packager
#'
#' @description Turn bare package name into canonical cran link and make curly braces around the package name.
#'
#'
#' @return a markdown link to CRAN
#' @export
#' @importFrom rstudioapi getSourceEditorContext modifyRange
#' 
#' @examples 
#' \dontrun{
#' remedy_example(
#'     c( "remedy"),
#'     packager
#'     )
#'  }
packager <- function() {
  
  adc <- rstudioapi::getSourceEditorContext()
  txt <- adc$selection[[1]]$text
  
  content <- sprintf('[{%s}](https://CRAN.R-project.org/package=%s)',txt, txt)
  
  rstudioapi::modifyRange(location = adc$selection[[1]]$range, text = content, id = adc$id)
}
