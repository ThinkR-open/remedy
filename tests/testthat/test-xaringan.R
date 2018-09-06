testthat::context("xaringan")

if(rstudioapi::isAvailable()){
  
  path <- tempfile(pattern = 'test',fileext = '.R')
  file.create(path)
  rstudioapi::navigateToFile(path)
  Sys.sleep(1)
  sec <- rstudioapi::getSourceEditorContext()
  
}

testthat::describe('urls',{
  
  skip_if_not_rstudio()
  testthat::skip_on_travis()
  
  it('empty',{
    
    xaringanr()
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_equal(readLines(path,warn = FALSE),
                           c('.pull-left[','',']','','.pull-right[','',']')
                           )
    set_text(sec = sec)
  })

  it('highlighted',{
    
    set_text('text',sec = sec, mark = individual_lines)
    
    xaringanr()
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_equal(readLines(path,warn = FALSE),
                           c('.pull-left[','',']','text','.pull-right[','',']'))
    
    set_text(sec = sec)
  })
  
})
