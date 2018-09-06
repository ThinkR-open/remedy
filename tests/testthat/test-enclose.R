testthat::context("enclose")

sec <- scratch_file()

testthat::describe('enclose', {
  skip_if_not_rstudio()
  testthat::skip_on_travis()
  
  enclose <- remedy:::enclose
  
  before <- 'a '
  after  <- ' z'
  
  it('empty',{
    
    res <- paste0(before, after)
    
    enclose(before, after)
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_equal(readLines(sec$path, warn = FALSE), res)
    
    set_text(sec = sec)
  })
  
  txt <- 'some text'
  
  it('highlighted', {
    
    res <- paste0(before, txt, after)
    
    set_text(txt, sec = sec, mark = entire_document)
    
    enclose(before, after)
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_equal(readLines(sec$path, warn = FALSE), res)
    
    set_text(sec = sec)
  })
  
  txt <- c('some text', 'more text')
  
  it('multiple lines', {
    res <- c('a some text', 'more text z')
    
    set_text(paste0(txt, collapse = "\n"), sec = sec, mark = entire_document)
    
    enclose(before, after)
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_equal(readLines(sec$path, warn = FALSE), res)
    
    set_text(sec = sec)
  })
  
  it('multiple selections',{
    res <- paste0(before, txt, after)
    
    set_text(paste0(txt, collapse = "\n"), sec = sec, mark = individual_lines)
    
    enclose(before, after)
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_equal(readLines(sec$path, warn = FALSE), res)
    
    set_text(sec = sec)
  })
  
})
