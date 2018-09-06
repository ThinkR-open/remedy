testthat::context("emphasizers")

sec <- scratch_file()

testthat::describe('italics',{
  
  skip_if_not_rstudio()
  testthat::skip_on_travis()
  
  it('empty',{
    
    italicsr()
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_equal(readLines(sec$path, warn = FALSE),'__')
    
    set_text(sec = sec)
  })

  it('highlighted',{
    
    set_text('some text',sec = sec, mark = entire_document)
    
    italicsr()
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_equal(readLines(sec$path, warn = FALSE),'_some text_')
    
    set_text(sec = sec)
  })
  
})

testthat::describe('bold',{
  
  skip_if_not_rstudio()
  testthat::skip_on_travis()
  
  it('empty',{
    
    boldr()
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_equal(readLines(sec$path, warn = FALSE),'____')
    
    set_text(sec = sec)
  })
  
  it('highlighted',{
    
    set_text('some text',sec = sec, mark = entire_document)
    
    boldr()
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_equal(readLines(sec$path, warn = FALSE),'__some text__')
    
    set_text(sec = sec)
  })
  
})

testthat::describe('strike',{
  
  skip_if_not_rstudio()
  testthat::skip_on_travis()
  
  it('empty',{
    
    striker()
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_equal(readLines(sec$path, warn = FALSE),'~~~~')
    
    set_text(sec = sec)
  })
  
  it('highlighted',{
    
    set_text('some text',sec = sec, mark = entire_document)
    
    striker()
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_equal(readLines(sec$path, warn = FALSE),'~~some text~~')
    
    set_text(sec = sec)
  })
  
})