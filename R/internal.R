#' @importFrom rstudioapi getSourceEditorContext insertText

add_prefix <- function(prefix) {
  a <- rstudioapi::getSourceEditorContext()
  s <- a$selection
  n <- length(s)
  # if no text is selected
  if (n == 1L && nchar(s[[1L]]$text) == 0L) {
    pos <- s[[1L]]$range$start
    pos[2L] <- 1
    rstudioapi::insertText(location = pos, text = prefix)
  } else {
    for (i in s)
      rstudioapi::insertText(location = i$range$start, text = prefix)
  }
}

add_multiline_prefix <- function(prefix){
  a <- rstudioapi::getSourceEditorContext()
  
  content <- strsplit(a$selection[[1]]$text,'\n')[[1]]
  
  content[nzchar(content)] <- paste0(prefix, content[nzchar(content)])
  
  content <- paste0(content, '\n', collapse = '')
  
  rstudioapi::modifyRange(
    location = a$selection[[1]]$range,
    text = content,
    id = a$id
  )
}

enclose <- function(prefix, postfix = prefix) {
  a <- rstudioapi::getSourceEditorContext()
  for (s in a$selection)
    rstudioapi::insertText(location = s$range, text = sprintf("%s%s%s", prefix, s$text, postfix))
}
