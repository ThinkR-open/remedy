testthat::context("lists")

sec <- scratch_file()

testthat::describe('lists',{
  
  skip_if_not_rstudio()
  
  it('empty',{
    
    listr()
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_length(readLines(sec$path, warn = FALSE),0)
    
    set_text(sec = sec)
  })
  
  it('highlighted',{
    
    set_text('some text',sec = sec, mark = entire_document)
    
    listr()
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_equal(readLines(sec$path, warn = FALSE),'+ some text')
    
    set_text(sec = sec)
  })
  
  it('multiline',{
    
    set_text('some text\nmore text',sec = sec, mark = entire_document)
    
    listr()
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_equal(readLines(sec$path, warn = FALSE),c('+ some text','+ more text'))
    
    set_text(sec = sec)
  })
})
