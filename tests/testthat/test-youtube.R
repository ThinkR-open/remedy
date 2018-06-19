testthat::context("youtube")
if(rstudioapi::isAvailable()){
  
  path <- tempfile(pattern = 'test',fileext = '.R')
  file.create(path)
  rstudioapi::navigateToFile(path)
  Sys.sleep(1)
  sec <- rstudioapi::getSourceEditorContext()
  
}

testthat::describe('images',{
  
  skip_if_not_rstudio()
  
  it('empty html',{
    
    youtuber()
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_equal(readLines(path,warn = FALSE),
                           '<iframe width="100%" height="400" src="https://www.youtube.com/embed/" frameborder="0" allowfullscreen></iframe>'
                           )
    
    set_text(sec = sec)
  })
  
  it('html',{
    
    set_text('https://www.youtube.com/watch?v=O_kYuxP2pLA',sec = sec, mark = TRUE)
    
    youtuber()
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_equal(readLines(path,warn = FALSE),
                           '<iframe width="100%" height="400" src="https://www.youtube.com/embed/O_kYuxP2pLA" frameborder="0" allowfullscreen></iframe>')
    
    set_text(sec = sec)
  })
  it('html width/height',{
    
    remedy_opts$set(list(youtube_height = 100 , youtube_width = 100 ))
    
    set_text('https://www.youtube.com/watch?v=O_kYuxP2pLA',sec = sec, mark = TRUE)
    
    youtuber()
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_equal(readLines(path,warn = FALSE),
                           '<iframe width="100" height="100" src="https://www.youtube.com/embed/O_kYuxP2pLA" frameborder="0" allowfullscreen></iframe>')
    
    set_text(sec = sec)
  })
  
  
  it('html width/height',{
    
    remedy_opts$set(list(youtube_output = 'md'))
    
    set_text('https://www.youtube.com/watch?v=O_kYuxP2pLA',sec = sec, mark = TRUE)
    
    youtuber()
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_equal(readLines(path,warn = FALSE),
                           '[![ALT TEXT](http://img.youtube.com/vi/O_kYuxP2pLA/0.jpg)](https://www.youtube.com/watch?v=O_kYuxP2pLA)')
    
    set_text(sec = sec)
  })
})

remedy_opts$restore()