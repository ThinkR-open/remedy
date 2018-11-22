#' @title Addin to create markdown youtube links
#' @description Highlight youtube link in source editor and it will be converted
#' to a markdown link with an image saved in youtube.
#' 
#' @details 
#' 
#' if remedy_opts$get('youtube_output')=='md' then the output will be of the form
#' 
#'  [![Alternative text](Youtube Image)](Link to Video). (useful for github readme)
#'  
#' if remedy_opts$get('youtube_output')=='html' then the output will be of the form
#' 
#' <iframe width="remedy_opts$get('youtube_width')" height="remedy_opts$get('youtube_height')" src="link to video" 
#' frameborder="0" allowfullscreen></iframe>
#'
#' Default Settings:
#'  
#' remedy_opts$get('youtube_output'): str(remedy::remedy_opts$get('youtube_output'))
#' 
#' remedy_opts$get('youtube_height'): str(remedy::remedy_opts$get('youtube_height'))
#' 
#' remedy_opts$get('youtube_width'): str(remedy::remedy_opts$get('youtube_width'))
#' 
#' @rdname youtuber
#' @export 
#' @importFrom rstudioapi getSourceEditorContext modifyRange
#' 
#' @examples 
#' \dontrun{
#' remedy_example( 
#'     "https://www.youtube.com/watch?v=dQw4w9WgXcQ", 
#'     youtuber
#'     )
#' }
youtuber <- function(){
  
  adc <- rstudioapi::getSourceEditorContext()
  
  txt <- adc$selection[[1]]$text
  
  token <- substr(txt,max(gregexpr('[/]',txt)[[1]])+1,nchar(txt)) #remove to last /
  token <- gsub('watch\\?v\\=','',token) #clean watch?v=token'
  root <- gsub('\\?(.*?)$','',token) #clean token?t=2
  
  new_txt <- switch(remedy_opts$get('youtube_output'),
         md = {
           sprintf('[![ALT TEXT](http://img.youtube.com/vi/%s/0.jpg)](https://www.youtube.com/watch?v=%s)',
                   root,token)         
         },
         html = {
           sprintf('<iframe width="%s" height="%s" src="https://www.youtube.com/embed/%s" frameborder="0" allowfullscreen></iframe>',
                   remedy_opts$get('youtube_width'),
                   remedy_opts$get('youtube_height'),
                   token)
         }
         )
  

  rg <- adc$selection[[1]]$range
  rstudioapi::modifyRange(location = rg, text = new_txt,id = adc$id)
  
}