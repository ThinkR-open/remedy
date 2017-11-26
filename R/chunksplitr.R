#' @title Split Chunk
#' @description Split a chunk into two chunks
#' @details Will split below row of the current cursor position or under the hightled text.
#' @rdname chunksplitr
#' @export 
#' @importFrom rstudioapi getSourceEditorContext insertText
chunksplitr <- function(){
  adc <- rstudioapi::getSourceEditorContext()
  
  rng <- rstudioapi::document_range(
    start = rstudioapi::document_position(adc$selection[[1]]$range$end[1], Inf),
    end = rstudioapi::document_position(adc$selection[[1]]$range$end[1], Inf)
    )
  
  rstudioapi::insertText(location = rng,
                         text = "\n```\n \n```{r}")
}
