markdownify <- function() {
  
  context <- rstudioapi::getSourceEditorContext()
  txt <- context$selection[[1]]$text
  message("txt: ", txt)

  looks_like_anchor <- grepl("<a[ ]+href", txt)[1]
  if (looks_like_anchor) message("anchor")
  looks_like_italic <- grepl("<i>[^<]+</i>", txt)[1]
  looks_like_bold   <- grepl("<b>[^<]+</b>", txt)[1]
  looks_like_image  <- grepl("<img[ ]+src", txt)[1]
  looks_like_image_alt <- looks_like_image && grepl("alt=", txt)[1]
  if (looks_like_image_alt) message("looks alt")
  
  if (
    !(
      looks_like_anchor | 
      looks_like_italic | 
      looks_like_bold | 
      looks_like_image
    )
  ) {
    warning("Not able to convert this text to markdown, not recognised", call. = FALSE)
    return(FALSE)
  }


  if (looks_like_anchor) content <- gsub('<a href="([^"]+?)">(.*?)</a>', '[\\2](\\1)', txt)
  if (looks_like_italic) content <- gsub('<i>(.*?)</i>', '_\\1_', txt)
  if (looks_like_bold)   content <- gsub('<b>(.*?)</b>', '\\*\\*\\1\\*\\*', txt)
  if (looks_like_image)  content <- gsub('<img src="([^"]*?)".*?>', '![](\\1)', txt)
  if (looks_like_image_alt) {
    alt <- gsub('<img.*?alt="([^"]+?)".*?>', "\\1", txt)
    message("alt:", alt)
    content <- gsub('!\\[\\]', paste0('![', alt, ']'), content)
  }
  
  rstudioapi::modifyRange(location = context$selection[[1]]$range, text = content, id = context$id)
  
}

