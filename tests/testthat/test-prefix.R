testthat::context("prefix")

sec <- scratch_file()


testthat::describe('prefix', {
  skip_if_not_rstudio()
  
  add_prefix <- remedy:::add_prefix
  
  prefix <- 'prefix '
  
  it('empty',{
    res <- prefix
    
    add_prefix(prefix)
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_equal(readLines(sec$path, warn = FALSE), res)
    
    set_text(sec = sec)
  })
  
  txt <- 'some text'
  
  it('line',{
    res <- paste0(prefix, txt)
    
    set_text(txt, sec = sec)
    
    add_prefix(prefix)
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_equal(readLines(sec$path, warn = FALSE), res)
    
    set_text(sec = sec)
  })
  
  it('highlighted',{
    res <- paste0(prefix, txt)
    
    set_text(txt, sec = sec, mark = entire_document)
    
    add_prefix(prefix)
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_equal(readLines(sec$path, warn = FALSE), res)
    
    set_text(sec = sec)
  })
  
  txt <- c('some text', 'more text')
  
  it('multiple lines', {
    res <- paste0(c(prefix, ''), txt)
    
    set_text(paste0(txt, collapse = "\n"), sec = sec, mark = entire_document)
    
    add_prefix(prefix)
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_equal(readLines(sec$path, warn = FALSE), res)
    
    set_text(sec = sec)
  })
  
  it('multiple selections',{
    res <- paste0(prefix, txt)
    
    set_text(paste0(txt, collapse = "\n"), sec = sec, mark = individual_lines)
    
    add_prefix(prefix)
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_equal(readLines(sec$path, warn = FALSE), res)
    
    set_text(sec = sec)
  })
  
})
