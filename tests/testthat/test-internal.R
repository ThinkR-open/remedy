testthat::context("internal")

sec <- scratch_file()

add_prefix <- remedy:::add_prefix

testthat::describe('prefix', {
  prefix <- 'prefix '
  
  skip_if_not_rstudio()
  
  it('empty',{
    res <- prefix
    
    add_prefix(prefix)
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_equal(readLines(sec$path, warn = FALSE), res)
    
    set_text(sec = sec)
  })
  
  txt = 'some text'
  
  it('line',{
    res <- paste0(prefix, txt)
    
    set_text(txt, sec = sec)
    
    add_prefix(prefix)
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_equal(readLines(sec$path, warn = FALSE), res)
    
    set_text(sec = sec)
  })
  
  it('highlighted',{
    res = paste0(prefix, txt)
    
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


enclose <- remedy:::enclose

testthat::describe('enclose', {
  before <- 'a '
  after  <- ' z'
  skip_if_not_rstudio()
  
  it('empty',{
    res <- paste0(before, after)
    
    enclose(before, after)
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_equal(readLines(sec$path, warn = FALSE), res)
    
    set_text(sec = sec)
  })
  
  txt = 'some text'
  
  it('highlighted',{
    
    res = paste0(before, txt, after)
    
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
