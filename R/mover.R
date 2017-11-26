#' Mover
#'
#' Copy a selected text or the current line
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
  
  if(rg$start[[1]]!=rg$end[[1]]){
    rstudioapi::showDialog(title = 'error',
                           message = 'Right is used on only one line')
    return(NULL)
    }
  
  # If text is selected
  if (nzchar(adc$selection[[1]]$text)) {
    rstudioapi::modifyRange(location = rg, text = strrep(adc$selection[[1]]$text,2))
    rg$end[[2]] <- rg$start[[2]] + nchar(strrep(adc$selection[[1]]$text,2))
  } else {
    rg$start[[2]] <- 1
    rg$end[[2]] <- Inf
    rstudioapi::modifyRange(location = rg, text = strrep(adc$contents[rg$start[[1]]],2))
  }
  
  rstudioapi::setCursorPosition(rg$end)
}

