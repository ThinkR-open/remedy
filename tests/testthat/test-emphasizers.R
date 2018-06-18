testthat::context("emphasizers")

if(rstudioapi::isAvailable()){
  
  path <- tempfile(pattern = 'test',fileext = '.R')
  file.create(path)
  rstudioapi::navigateToFile(path)
  Sys.sleep(1)
  sec <- rstudioapi::getSourceEditorContext()
  
}

testthat::describe('italics',{
  
  skip_if_not_rstudio()
  
  it('empty',{
    
    italicsr()
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_equal(readLines(path,warn = FALSE),'__')
    
    set_text(sec = sec)
  })

  it('highlighted',{
    
    set_text('some text',sec = sec, mark = TRUE)
    
    italicsr()
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_equal(readLines(path,warn = FALSE),'_some text_')
    
    set_text(sec = sec)
  })
  
})

testthat::describe('bold',{
  
  skip_if_not_rstudio()
  
  it('empty',{
    
    boldr()
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_equal(readLines(path,warn = FALSE),'____')
    
    set_text(sec = sec)
  })
  
  it('highlighted',{
    
    set_text('some text',sec = sec, mark = TRUE)
    
    boldr()
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_equal(readLines(path,warn = FALSE),'__some text__')
    
    set_text(sec = sec)
  })
  
})

testthat::describe('strike',{
  
  skip_if_not_rstudio()
  
  it('empty',{
    
    striker()
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_equal(readLines(path,warn = FALSE),'~~~~')
    
    set_text(sec = sec)
  })
  
  it('highlighted',{
    
    set_text('some text',sec = sec, mark = TRUE)
    
    striker()
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_equal(readLines(path,warn = FALSE),'~~some text~~')
    
    set_text(sec = sec)
  })
  
})