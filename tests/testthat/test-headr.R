testthat::context("headr")

sec <- scratch_file()

testthat::describe('add headers to source editor',{
  skip_if_not_rstudio()
  testthat::skip_on_travis()
  
  it(strrep('#',1),{
    remedy::h1r()
    rstudioapi::documentSave(sec$id)
    testthat::expect_equal(readLines(sec$path, warn = FALSE),this_strrep(1))
    set_text(sec = sec)
  })
  
  it(strrep('#',2),{
    remedy::h2r()
    rstudioapi::documentSave(sec$id)
    testthat::expect_equal(readLines(sec$path, warn = FALSE),this_strrep(2))
    set_text(sec = sec)
  })
  
  it(strrep('#',3),{
    remedy::h3r()
    rstudioapi::documentSave(sec$id)
    testthat::expect_equal(readLines(sec$path, warn = FALSE),this_strrep(3))
    set_text(sec = sec)
  })  
  
  it(strrep('#',4),{
    remedy::h4r()
    rstudioapi::documentSave(sec$id)
    testthat::expect_equal(readLines(sec$path, warn = FALSE),this_strrep(4))
    set_text(sec = sec)
  })  
  
  it(strrep('#',5),{
    remedy::h5r()
    rstudioapi::documentSave(sec$id)
    testthat::expect_equal(readLines(sec$path, warn = FALSE),this_strrep(5))
    set_text(sec = sec)
  })    
  
  it(strrep('#',6),{
    remedy::h6r()
    rstudioapi::documentSave(sec$id)
    testthat::expect_equal(readLines(sec$path, warn = FALSE),this_strrep(6))
    set_text(sec = sec)
  })  
  
  it('append',{
    set_text(txt = 'some text', sec = sec, mark = entire_document)
    remedy::h1r()
    rstudioapi::documentSave(sec$id)
    testthat::expect_equal(readLines(sec$path, warn = FALSE),'# some text')
    set_text(sec = sec)
  })  
  
})
