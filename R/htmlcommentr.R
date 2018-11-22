#' @title html commenting 
#' @description RStudio addin to add/remove html comments to highlighted text
#' 
#' @details 
#' 
#' Highlighting text will add html comment tags around it
#' 
#' Highlighting commented text will remove tags.
#' 
#' \strong{Highlighting}
#' 
#' Something COMMENT Something
#' 
#' Something <!-- COMMENT --> Something
#' 
#' \strong{New Comment}
#' 
#' Something COMMENT [cursor here] Something
#'  
#' Something COMMENT  <!--  -->  Something 
#' 
#' \strong{Start of Row}
#' 
#' [cursor here] Something COMMENT Something
#' 
#'  <!-- Something COMMENT Something --> 
#'  
#' \strong{Highlighting Multiple rows}
#' 
#' Something COMMENT Something
#'  
#' Something COMMENT Something
#' 
#'  <!-- Something COMMENT Something 
#'  
#' Something COMMENT Something --> 
#' 
#' @rdname htmlcommentr
#' @export 
#' @importFrom rstudioapi getSourceEditorContext modifyRange setCursorPosition
#' 
#' @examples 
#' \dontrun{
#' remedy_example( c( "<b>This is bold</b>"), htmlcommentr)
#' }
htmlcommentr <- function(){
  
  adc <- rstudioapi::getSourceEditorContext() 
  
  rng <- adc$selection[[1]]$range
  txt <- adc$selection[[1]]$text
  
  txt <- gsub('^\\s+|\\s+$','',txt)
  
  push <- 6  
  
  if(!nzchar(txt)&rng$start[2]==1){
    rng$end[2] <- Inf
    txt <- adc$contents[rng$start[1]]
    txt <- gsub('^\\s+|\\s+$','',txt)
    push <- 0
  }
    
  if(grepl('^<!-{2,}(.*?)-{2,}>$',txt)){
    
    txt <- gsub('^<!-{2,}|-{2,}>$','',txt)
    txt <- gsub('^\\s+|\\s+$','',txt)
    push <- 0
    
  }else{

    txt <- sprintf(" <!-- %s --> ",txt)
        
  }
  

  rstudioapi::modifyRange(location = rng, 
                          text = txt,
                          id = adc$id)
  
  rng$start[2] <- rng$start[2] + push
    
  rstudioapi::setCursorPosition(position = rng$start,id = adc$id) 
  
}
