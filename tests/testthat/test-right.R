testthat::context("copy text to the right")

if(rstudioapi::isAvailable()){
  
  path <- tempfile(pattern = 'test',fileext = '.R')
  file.create(path)
  rstudioapi::navigateToFile(path)
  Sys.sleep(1)
  sec <- rstudioapi::getSourceEditorContext()
  
}

testthat::describe('rightr',{
  
  skip_if_not_rstudio()
  
  it('one word',{
    
    set_text('some \n ',sec = sec, mark = TRUE)
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_message(rightr(),'This addin assumes one line is selected, 2 were selected')
    
    set_text(sec = sec)
  })
  
  it('one word',{
    
    set_text('some ',sec = sec, mark = FALSE)
    
    rightr()
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_equal(readLines(path,warn = FALSE),'some some ')
    
    set_text(sec = sec)
  })
  
  it('multiple words',{
    
    set_text('some some ',sec = sec, mark = FALSE)
    
    rightr()
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_equal(readLines(path,warn = FALSE),'some some some some ')
    
    set_text(sec = sec)
  })
  
  it('highlighting',{
    
    set_text('some some ',sec = sec, mark = FALSE)
    
    rng <- rstudioapi::document_range(start = rstudioapi::document_position(1,6),
                                      end = rstudioapi::document_position(1,Inf))
    
    rstudioapi::setSelectionRanges(rng)
    
    rightr()
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_equal(readLines(path,warn = FALSE),'some some some ')
    
    set_text(sec = sec)
  })
  
})
  