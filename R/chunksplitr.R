#' @title Split Chunk
#' @description Split a chunk into two chunks
#' @details Will split below row of the current cursor position or under the highlighted text.
#' 
#' @rdname chunksplitr
#' @export 
#' @importFrom rstudioapi getSourceEditorContext insertText
#' 

chunksplitr <- function(){
  adc <- rstudioapi::getSourceEditorContext()
  
  rng <- rstudioapi::document_range(
    start = rstudioapi::document_position(adc$selection[[1]]$range$end[1], Inf),
    end = rstudioapi::document_position(adc$selection[[1]]$range$end[1], Inf)
    )
  
  idx <- max(grep('^```\\{r',adc$contents[1:adc$selection[[1]]$range$start[[1]]]))
  chunk_params <- paste0(c('r',strsplit(gsub('```\\{|\\}','',adc$contents[idx]),',')[[1]][-1]),collapse = ',')
  
  rstudioapi::insertText(
    location = rng,
    text = sprintf("\n```\n \n```{%s}",chunk_params)
    )
}

