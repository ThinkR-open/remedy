testthat::context("latex")

sec <- scratch_file()

testthat::describe('latex',{
  
  skip_if_not_rstudio()
  testthat::skip_on_travis()
  
  it('empty',{
    
    latexr()
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_equal(readLines(sec$path, warn = FALSE),'$$')
    
    set_text(sec = sec)
  })
  
  it('highlighted',{
    
    set_text('some text',sec = sec, mark = entire_document)
    
    latexr()
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_equal(readLines(sec$path, warn = FALSE),'$some text$')
    
    set_text(sec = sec)
  })
  
  it('multiline',{
    
    set_text('some text\n more text',sec = sec, mark = entire_document)
    
    latexr()
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_equal(readLines(sec$path, warn = FALSE),c('$some text',' more text$'))
    
    set_text(sec = sec)
  })
  
  it('multiselect',{
    
    set_text('some text\n more text',sec = sec, mark = individual_lines)
    
    latexr()
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_equal(readLines(sec$path, warn = FALSE),c('$some text$','$ more text$'))
    
    set_text(sec = sec)
  })
  
})
