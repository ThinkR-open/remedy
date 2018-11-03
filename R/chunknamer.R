#' @title Interactively Add Names to Chunks
#' @description Addin that add in bulk a names to unnamed chunks in a 
#' Rmarkdown document in the source editor.
#' @return NULL
#' @details
#'
#' By default the addin will use "remedy" as the stem of the chunk names. this an be changed using
#' \code{\link{remedy_opts}}$set(name='ANOTHER NAME'). The names are then added in sequential order using
#' an %02d naming scheme.
#'
#' @rdname chunknamer
#' @export
chunknamer <- function(){

  adc <- rstudioapi::getSourceEditorContext()

  this <- adc$contents
  
  x <- grep('^```\\{r',this)
  
  no_name <- which(!grepl('\\s',sapply(strsplit(this[x],','),'[',1)))
  
  counter_size <- pmax(nchar(as.character(length(no_name))) - 1,2)
  
  counter <- paste0('%0',counter_size,'d')
  
  for(i in seq_along(no_name)){
    this[x][no_name[i]] <- gsub('^```\\{r',
                                sprintf(paste0('```{r %s',counter),
                                        remedy_opts$get('name'),i),
                                this[x][no_name[i]]
    )
    
    idx <- x[no_name][i]
    
    rng <- Map(c, Map(c, idx, 1), Map(c, idx, Inf))
    
    rstudioapi::modifyRange(rng,this[x][no_name[i]],id = adc$id)
  }
  
}
