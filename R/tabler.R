#' Tabler
#'
#' Insert a table in your file.
#'
#' @return a markdown table
#' @export
#'

tabler <- function(){
  a <- rstudioapi::getSourceEditorContext()
  rstudioapi::insertText(location = a$selection[[1]]$range, text = "| Tables        | Are           | Cool  |\n| :-----------: |:-------------:| :----:|\n| col3is        | right-aligned | $1600 |\n| col2is        | centered      |   $12 |\n| zebrastripes  | areneat       |    $1 |\n")
}
