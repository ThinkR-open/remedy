#' Check if text is a relative link or URL
#'
#' @param text A character string
#'
#' @return TRUE or FALSE
#' @export
#'
#' @examples
#' is_link("www.google.com")
#' is_link("figs/plot.png")
is_link <- function(text) {
  tokens <- remedy_opts$get('tokens')
  
  img_link <- sprintf('^(%s)$',paste0('.',tokens$img_link,collapse='|'))
  
  grepl(sprintf('(%s)|(%s)|(%s)',tokens$url,tokens$rel_link,img_link),text)
}
