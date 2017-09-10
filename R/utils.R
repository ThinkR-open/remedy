# URL regex
url <- "^(?:(?:https?|ftp|file)://|www\\.|ftp\\.)[A-z0-9+&@#/%=~_|$?!:,.-]*[A-z0-9+&@#/%=~_|$]$"

# Relative link regex
rel_link <- "^.*[/|\\.][^\\.]+$"

# Image link
img_link <- "^(.jpeg|.jpg|.png|.gif)$"

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
  any(stringr::str_detect(text, c(url, rel_link, img_link)))
}
