testthat::context("functionwrapr")

sec <- scratch_file()

testthat::describe('wrap selection in function',{
  skip_if_not_rstudio()
  testthat::skip_on_travis()
  
  it('empty',{
    
    functionwrapr()
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_equal(readLines(sec$path, warn = FALSE),'()')
    
    set_text(sec = sec)
  })
  
  it('wrapped',{
    
    set_text('some text',sec = sec, mark = entire_document)
    
    functionwrapr()
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_equal(readLines(sec$path, warn = FALSE),'(some text)')
    
    set_text(sec = sec)
  })
  
})