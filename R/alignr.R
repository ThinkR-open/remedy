#' @title Align '=' and '<-' across rows
#' @description  RStudio shortcut to align '=' and '<-' across rows in highlighted text
#'   in the source editor
#' @rdname alignr
#' @export 
#' @importFrom rstudioapi getSourceEditorContext modifyRange
alignr <- function() {
  
      adc <- rstudioapi::getSourceEditorContext()
      
      adc_text <- strsplit(adc$selection[[1]]$text,'\\n')[[1]]
      
      for ( s in remedy_opts$get('align') ) {
      
        eq_loc <- as.numeric(regexpr(s, adc_text))
        
        eq_idx <- which(eq_loc!=-1)
        
        eq_idx <- eq_idx[sapply(gregexpr('=',adc_text[eq_idx]),length)==1]
        
        eq_idx <- eq_idx[!grepl('=function|<-function',gsub('\\s+','',adc_text[eq_idx]))]
        
        adc_pad <- sprintf('%s%s',strrep(' ',max(eq_loc[eq_idx])-eq_loc[eq_idx]),s)
        
        adc_new <- adc_text[eq_idx]
        
        for(idx in seq_along(adc_new))
          adc_new[idx] <-  gsub(s,adc_pad[idx],adc_new[idx])
        
        adc_text[eq_idx] <- adc_new
      }
      
      rstudioapi::modifyRange(adc$selection[[1]]$range,
                              text = paste0(adc_text,collapse = '\n'),
                              id = adc$id)
}
