testthat::context("backticks")

sec <- scratch_file()

testthat::describe('backticks',{
  
  skip_if_not_rstudio()
  
  testthat::skip_on_travis()
  
  it('empty',{
    
    backtickr()
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_equal(readLines(sec$path, warn = FALSE),'``')
    
    set_text(sec = sec)
  })

  it('highlighted',{
    
    set_text('some text',sec = sec, mark = entire_document)
    
    backtickr()
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_equal(readLines(sec$path, warn = FALSE),'`some text`')
    
    set_text(sec = sec)
  })
  
  it('multiline',{
    
    set_text('some text\n more text',sec = sec, mark = entire_document)
    
    backtickr()
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_equal(readLines(sec$path, warn = FALSE),c('`some text',' more text`'))
    
    set_text(sec = sec)
  })
  
  it('multiselect',{
    
    set_text('some text\n more text',sec = sec, mark = individual_lines)
    
    backtickr()
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_equal(readLines(sec$path, warn = FALSE),c('`some text`','` more text`'))
    
    set_text(sec = sec)
  })
  
})
