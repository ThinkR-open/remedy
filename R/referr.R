#' @importFrom rstudioapi getSourceEditorContext modifyRange
ref_ <- function(prefix){
  adc <- rstudioapi::getSourceEditorContext()
  content <- sprintf("\\@ref(%s%s)", prefix, adc$selection[[1]]$text)
  rstudioapi::modifyRange(
    location = adc$selection[[1]]$range, 
    text = content, 
    id = adc$id
  )
}

#' @title urlr
#'
#' @description Convert selected text into a markdown ref. 
#' 
#' @note Only the three most common reference types are implemented: id, fig, and tab.
#'
#' @return A referenced content
#' @export
#' 
#' @rdname ref
#' @examples 
#' \dontrun{
#' remedy_example( 
#'     "pouet", 
#'     id_ref
#'     )
#' }
#'
id_ref <- function(){
  ref_(prefix = "#")
}

fig_ref <- function(){
  ref_(prefix = "fig:")
}

tab_ref <- function(){
  ref_(prefix = "tab:")
}