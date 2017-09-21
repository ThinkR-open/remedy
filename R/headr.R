#' Convert to header
#'
#' Convert selected text into a header.
#' 
#' @rdname header
#'
#' @return a markdown header
#' @export
#'

h1r <- function(){
  a <- rstudioapi::getSourceEditorContext()
  # If text is selected
  if (nchar(a$selection[[1]]$text) != 0) {
    rstudioapi::insertText(location = a$selection[[1]]$range, text = paste0("# ", a$selection[[1]]$text))
  } else {
    rg <- a$selection[[1]]$range
    rg$start[[2]] <- 1
    pos <- a$selection[[1]]$range[[1]][[1]]
    rstudioapi::insertText(location = rg, text =  paste0("# ",a$contents[pos]))
  }
}

#' @rdname header
#' @export

h2r <- function(){
  a <- rstudioapi::getSourceEditorContext()
  # If text is selected
  if (nchar(a$selection[[1]]$text) != 0) {
    rstudioapi::insertText(location = a$selection[[1]]$range, text = paste0("### ", a$selection[[1]]$text))
  } else {
    rg <- a$selection[[1]]$range
    rg$start[[2]] <- 1
    pos <- a$selection[[1]]$range[[1]][[1]]
    rstudioapi::insertText(location = rg, text =  paste0("## ",a$contents[pos]))
  }
}

#' @rdname header
#' @export

h3r <- function(){
  a <- rstudioapi::getSourceEditorContext()
  # If text is selected
  if (nchar(a$selection[[1]]$text) != 0) {
    rstudioapi::insertText(location = a$selection[[1]]$range, text = paste0("### ", a$selection[[1]]$text))
  } else {
    rg <- a$selection[[1]]$range
    rg$start[[2]] <- 1
    pos <- a$selection[[1]]$range[[1]][[1]]
    rstudioapi::insertText(location = rg, text =  paste0("### ",a$contents[pos]))
  }
}

#' @rdname header
#' @export

h4r <- function(){
  a <- rstudioapi::getSourceEditorContext()
  # If text is selected
  if (nchar(a$selection[[1]]$text) != 0) {
    rstudioapi::insertText(location = a$selection[[1]]$range, text = paste0("#### ", a$selection[[1]]$text))
  } else {
    rg <- a$selection[[1]]$range
    rg$start[[2]] <- 1
    pos <- a$selection[[1]]$range[[1]][[1]]
    rstudioapi::insertText(location = rg, text =  paste0("#### ",a$contents[pos]))
  }
}

#' @rdname header
#' @export

h5r <- function(){
  a <- rstudioapi::getSourceEditorContext()
  # If text is selected
  if (nchar(a$selection[[1]]$text) != 0) {
    rstudioapi::insertText(location = a$selection[[1]]$range, text = paste0("##### ", a$selection[[1]]$text))
  } else {
    rg <- a$selection[[1]]$range
    rg$start[[2]] <- 1
    pos <- a$selection[[1]]$range[[1]][[1]]
    rstudioapi::insertText(location = rg, text =  paste0("##### ",a$contents[pos]))
  }
}

#' @rdname header
#' @export

h6r <- function(){
  a <- rstudioapi::getSourceEditorContext()
  # If text is selected
  if (nchar(a$selection[[1]]$text) != 0) {
    rstudioapi::insertText(location = a$selection[[1]]$range, text = paste0("###### ", a$selection[[1]]$text))
  } else {
    rg <- a$selection[[1]]$range
    rg$start[[2]] <- 1
    pos <- a$selection[[1]]$range[[1]][[1]]
    rstudioapi::insertText(location = rg, text =  paste0("###### ",a$contents[pos]))
  }
}

