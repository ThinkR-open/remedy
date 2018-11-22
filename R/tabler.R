#' @title Tabler
#'
#' @description Insert a table in your file.
#'
#' @return a markdown table
#' @export
#' @importFrom rstudioapi getSourceEditorContext insertText
#' @importFrom knitr kable
#' @examples 
#' \dontrun{
#' remedy_example( 
#'     "head(iris)", 
#'     tabler
#'     )
#' }
#' 
tabler <- function(){
  adc <- rstudioapi::getSourceEditorContext()
  
  src_txt <- adc$selection[[1]]$text
  
  if(nzchar(src_txt)){
    eval(parse(text=sprintf('tbl <- %s',src_txt)))
    if(!class(tbl)%in%c('data.frame','tibble','matrix','numeric')){
      message('Highlighted text: ', paste0(src_txt,collapse='\n') ,', not data.frame,tibble,matrix or numeric')
      return(NULL)
    }
  }else{
    tbl <- data.frame(a=1:2,b=2:3,c=3:4)
  }
  
  args=c(remedy_opts$get('kable_opts'),list(x=tbl))
  
  tbl_knit <- do.call(knitr::kable,args=args)
  
  tbl_knit <- paste0(as.character(tbl_knit),collapse = '\n')
  
  rstudioapi::insertText(location = adc$selection[[1]]$range, text = tbl_knit,id=adc$id)
}
