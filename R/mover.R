#' @title Mover
#'
#' @description Copy a selected text or the current line
#' 
#' \if{html}{
#' \out{
#'  <img src = "https://github.com/ThinkR-open/remedy/blob/master/readme_gif/right.gif?raw=true">
#' }}
#' 
#' @rdname move
#'
#' @return a clone of the line
#' @export
#' @importFrom rstudioapi getSourceEditorContext modifyRange setCursorPosition showDialog
#' 
rightr <- function(){
  adc <- rstudioapi::getSourceEditorContext()
  rg <- adc$selection[[1]]$range
  
  rows <- rg$end[[1]] - rg$start[[1]]
  
  if(rows>0){
    message(sprintf('This addin assumes one line is selected, %s were selected',rows + 1 ))
    return(NULL)
  }
  
  # If text is selected
  if (nzchar(adc$selection[[1]]$text)) {
    
    rstudioapi::modifyRange(location = rg, text = strrep(adc$selection[[1]]$text,2))
    rg$end[[2]] <- rg$start[[2]] + nchar(strrep(adc$selection[[1]]$text,2))
    
  } else {
    
    rg$start[[2]] <- 1
    rg$end[[2]] <- Inf
    rstudioapi::modifyRange(location = rg, 
                            text = strrep(adc$contents[rg$start[[1]]],2),
                            id = adc$id)
  }
  
  rstudioapi::setCursorPosition(rg$end)
}

