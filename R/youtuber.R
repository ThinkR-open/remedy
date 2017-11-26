#' @title Addin to create markdown youtube links
#' @description Highlight youtube link in source editor and it will be converted
#' to a markdown link with an image saved in youtube.
#' @details the frame output is in the form of ![[Alternative text](Youtube Image)](Link to Video)
#' @rdname youtuber
#' @export 
#' @importFrom rstudioapi getSourceEditorContext modifyRange
youtuber <- function(){
  
  adc <- rstudioapi::getSourceEditorContext()
  
  txt <- adc$selection[[1]]$text
  
  token <- substr(txt,max(gregexpr('[/]',txt)[[1]])+1,nchar(txt)) #remove to last /
  token <- gsub('watch\\?v\\=','',token) #clean watch?v=token'
  root <- gsub('\\?(.*?)$','',token) #clean token?t=2
  
  new_txt <- sprintf('![[ALT TEXT](http://img.youtube.com/vi/%s/0.jpg)](https://www.youtube.com/watch?v=%s)',
          root,token)
  
  rg <- adc$selection[[1]]$range
  rstudioapi::modifyRange(location = rg, text = new_txt,id = adc$id)
  
}