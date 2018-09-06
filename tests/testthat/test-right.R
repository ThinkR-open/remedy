testthat::context("copy text to the right")

sec <- scratch_file()

testthat::describe('rightr',{
  
  skip_if_not_rstudio()
  testthat::skip_on_travis()
  
  it('one word',{
    
    set_text('some \n ',sec = sec, mark = entire_document)
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_message(rightr(),'This addin assumes one line is selected, 2 were selected')
    
    set_text(sec = sec)
  })
  
  it('one word',{
    
    set_text('some ',sec = sec)
    
    rightr()
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_equal(readLines(sec$path, warn = FALSE),'some some ')
    
    set_text(sec = sec)
  })
  
  it('multiple words',{
    
    set_text('some some ',sec = sec, mark = individual_lines)
    
    rightr()
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_equal(readLines(sec$path, warn = FALSE),'some some some some ')
    
    set_text(sec = sec)
  })
  
  it('highlighting',{
    
    set_text('some some ',sec = sec)
    
    rng <- rstudioapi::document_range(start = rstudioapi::document_position(1,6),
                                      end = rstudioapi::document_position(1,Inf))
    
    rstudioapi::setSelectionRanges(rng)
    
    rightr()
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_equal(readLines(sec$path, warn = FALSE),'some some some ')
    
    set_text(sec = sec)
  })
  
})
  