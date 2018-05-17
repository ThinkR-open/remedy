#' @title addins to add testthat functions around expectations
#' @description construct testthat test_that or describe/it layouts. Highlight script in editor and
#' great wrappers for testthat tests.
#' @return NULL
#' @details In describe addin if there is nothing highlighed then a describe and it tandem will be created.
#' @seealso 
#'  \code{\link[rstudioapi]{rstudio-editors}},\code{\link[rstudioapi]{rstudio-documents}}
#' @rdname testthat-addin
#' @export 
#' @importFrom rstudioapi getSourceEditorContext modifyRange
describer <- function(){
  
  adc <- rstudioapi::getSourceEditorContext()

  thistxt <- adc$selection[[1]]$text
  
  if(nzchar(thistxt)){
    ret <- sprintf("testthat::describe('DESCRIPTION', {
      %s
    })",thistxt)    
  }else{
    ret <- sprintf("testthat::describe('DESCRIPTION', {
      it('DESCRIPTION',{
        %s
      })          
    })",adc$selection[[1]]$text)
  }

  rstudioapi::modifyRange(adc$selection[[1]]$range,ret,id = adc$id)
  
}

#' @rdname testthat-addin
#' @importFrom rstudioapi getSourceEditorContext modifyRange
#' @export 
itr <- function(){
  
  adc <- rstudioapi::getSourceEditorContext()
  
  ret <- sprintf("it('DESCRIPTION', {
      %s
    })",
                 adc$selection[[1]]$text)
  
  rstudioapi::modifyRange(adc$selection[[1]]$range,ret,id = adc$id)
  
}

#' @rdname testthat-addin
#' @importFrom rstudioapi getSourceEditorContext modifyRange
#' @export 
testthatr <- function(){
  
  adc <- rstudioapi::getSourceEditorContext()
  
  ret <- sprintf("testthat::test_that('DESCRIPTION', {
      %s
    })",adc$selection[[1]]$text)
  
  rstudioapi::modifyRange(adc$selection[[1]]$range,ret,id = adc$id)
  
  }