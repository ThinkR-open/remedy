#' @title html commenting 
#' @description FUNCTION_DESCRIPTION
#' @rdname htmlcommentr
#' @export 
#' @importFrom rstudioapi getSourceEditorContext modifyRange setCursorPosition
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
