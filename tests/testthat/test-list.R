testthat::context("lists")

if(rstudioapi::isAvailable()){
  
  path <- tempfile(pattern = 'test',fileext = '.R')
  file.create(path)
  rstudioapi::navigateToFile(path)
  Sys.sleep(1)
  sec <- rstudioapi::getSourceEditorContext()
  
}

testthat::describe('lists',{
  
  skip_if_not_rstudio()
  
  it('empty',{
    
    listr()
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_length(readLines(path,warn = FALSE),0)
    
    set_text(sec = sec)
  })
  
  it('highlighted',{
    
    set_text('some text',sec = sec, mark = TRUE)
    
    listr()
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_equal(readLines(path,warn = FALSE),'+ some text')
    
    set_text(sec = sec)
  })
  
  it('multiline',{
    
    set_text('some text\nmore text',sec = sec, mark = TRUE)
    
    listr()
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_equal(readLines(path,warn = FALSE),c('+ some text','+ more text'))
    
    set_text(sec = sec)
  })
})
