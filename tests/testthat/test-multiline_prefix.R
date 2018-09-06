testthat::context("multiline prefix")

sec <- scratch_file()


testthat::describe('prefix', {
  skip_if_not_rstudio()
  testthat::skip_on_travis()
  
  add_multiline_prefix <- remedy:::add_multiline_prefix
  
  prefix <- 'prefix '
  
  it('empty',{
    res <- prefix
    
    add_multiline_prefix(prefix, as_is = FALSE)
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_length(readLines(sec$path, warn = FALSE), 0)
    
    set_text(sec = sec)
  })
  
  it('empty as_is',{
    res <- prefix
    
    add_multiline_prefix(prefix, as_is = TRUE)
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_equal(readLines(sec$path, warn = FALSE), res)
    
    set_text(sec = sec)
  })
  
  txt <- 'some text'

  it('highlighted',{
    res <- paste0(prefix, txt)
    
    set_text(txt, sec = sec, mark = entire_document)
    
    add_multiline_prefix(prefix)
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_equal(readLines(sec$path, warn = FALSE), res)
    
    set_text(sec = sec)
  })
  
  txt <- c('some text', 'more text')
  
  it('multiple lines', {
    res <- paste0(prefix, txt)
    
    set_text(paste0(txt, collapse = "\n"), sec = sec, mark = entire_document)
    
    add_multiline_prefix(prefix)
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_equal(readLines(sec$path, warn = FALSE), res)
    
    set_text(sec = sec)
  })
  
  txt <- c('some text', '', 'more text')
  
  it("multiple paragraphs", {
    res <- paste0(c(prefix, '', prefix), txt)
    
    set_text(paste0(txt, collapse = "\n"), sec = sec, mark = entire_document)
    
    add_multiline_prefix(prefix, as_is = FALSE)
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_equal(readLines(sec$path, warn = FALSE), res)
    
    set_text(sec = sec)
  })
  
  it("multiple paragraphs as_is", {
    res <- paste0(prefix, txt)
    
    set_text(paste0(txt, collapse = "\n"), sec = sec, mark = entire_document)
    
    add_multiline_prefix(prefix, as_is = TRUE)
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_equal(readLines(sec$path, warn = FALSE), res)
    
    set_text(sec = sec)
  })
  
  txt <- c('some text', '    more text')
  
  it("nested list", {
    res <- c('prefix some text', '    prefix more text')

    set_text(paste0(txt, collapse = "\n"), sec = sec, mark = entire_document)
    
    add_multiline_prefix(prefix, as_is = FALSE)
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_equal(readLines(sec$path, warn = FALSE), res)
    
    set_text(sec = sec)
  })
})
 
