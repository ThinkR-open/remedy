testthat::context("images")

sec <- scratch_file()

testthat::describe('images',{
  
  skip_if_not_rstudio()
  testthat::skip_on_travis()
  
  it('empty',{
    
    imager()
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_equal(readLines(sec$path, warn = FALSE),'![]()')
    
    set_text(sec = sec)
  })

  it('no description bad link',{
    
    set_text('text',sec = sec, mark = entire_document)
    
    imager()
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_equal(readLines(sec$path, warn = FALSE),'![](# Error : selection is not an image link)')
    
    set_text(sec = sec)
  })
  
  it('description bad link',{
    
    set_text('aaa text',sec = sec, mark = entire_document)
    
    imager()
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_equal(readLines(sec$path, warn = FALSE),'![aaa](# Error : selection is not an image link)')
    
    set_text(sec = sec)
  })  
  
  it('no description good link',{
    
    set_text('http://www.text.com',sec = sec, mark = entire_document)
    
    imager()
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_equal(readLines(sec$path, warn = FALSE),'![](http://www.text.com)')
    
    set_text(sec = sec)
  })  
  
  it('single word description good link',{
    
    set_text('text http://www.text.com',sec = sec, mark = entire_document)
    
    imager()
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_equal(readLines(sec$path, warn = FALSE),'![text](http://www.text.com)')
    
    set_text(sec = sec)
  })  
  
  it('multiple word description good link',{
    
    set_text('more text http://www.text.com',sec = sec, mark = entire_document)
    
    imager()
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_equal(readLines(sec$path, warn = FALSE),'![more text](http://www.text.com)')
    
    set_text(sec = sec)
  })
  
})
