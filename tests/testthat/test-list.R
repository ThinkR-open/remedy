testthat::context("lists")

sec <- scratch_file()

testthat::describe("unordered lists", {
  skip_if_not_rstudio()
  testthat::skip_on_travis()
  
  it("empty", {
    listr()

    rstudioapi::documentSave(sec$id)

    testthat::expect_length(readLines(sec$path, warn = FALSE), 0)

    set_text(sec = sec)
  })

  it("highlighted", {
    set_text("some text", sec = sec, mark = entire_document)

    listr()

    rstudioapi::documentSave(sec$id)

    testthat::expect_equal(readLines(sec$path, warn = FALSE), "+ some text")

    set_text(sec = sec)
  })

  it("multiple lines", {
    set_text("some text\nmore text", sec = sec, mark = entire_document)

    listr()

    rstudioapi::documentSave(sec$id)

    testthat::expect_equal(readLines(sec$path, warn = FALSE), c("+ some text", "+ more text"))

    set_text(sec = sec)
  })

  it("multiple lines with quote at start", {
    set_text('"some" text\nmore text', sec = sec, mark = entire_document)
    
    listr()
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_equal(readLines(sec$path, warn = FALSE), c('+ "some" text', "+ more text"))
    
    set_text(sec = sec)
  })
  
  it("multiple paragraphs", {
    set_text("some text\n\nmore text", sec = sec, mark = entire_document)

    listr()

    rstudioapi::documentSave(sec$id)

    testthat::expect_equal(readLines(sec$path, warn = FALSE), c("+ some text", "", "+ more text"))

    set_text(sec = sec)
  })
  
  it("nested list", {
    set_text("some text\n    more text", sec = sec, mark = entire_document)
    
    listr()
    
    rstudioapi::documentSave(sec$id)
    
    testthat::expect_equal(readLines(sec$path, warn = FALSE), c("+ some text", "    + more text"))
    
    set_text(sec = sec)
  })
})

testthat::describe("ordered lists", {
  skip_if_not_rstudio()
  testthat::skip_on_travis()
  
  it("empty", {
    olistr()

    rstudioapi::documentSave(sec$id)

    testthat::expect_length(readLines(sec$path, warn = FALSE), 0)

    set_text(sec = sec)
  })

  it("highlighted", {
    set_text("some text", sec = sec, mark = entire_document)

    olistr()

    rstudioapi::documentSave(sec$id)

    testthat::expect_equal(readLines(sec$path, warn = FALSE), "1. some text")

    set_text(sec = sec)
  })

  it("multiple lines", {
    set_text("some text\nmore text", sec = sec, mark = entire_document)

    olistr()

    rstudioapi::documentSave(sec$id)

    testthat::expect_equal(readLines(sec$path, warn = FALSE), c("1. some text", "1. more text"))

    set_text(sec = sec)
  })

  it("multiple paragraphs", {
    set_text("some text\n\nmore text", sec = sec, mark = entire_document)

    olistr()

    rstudioapi::documentSave(sec$id)

    testthat::expect_equal(readLines(sec$path, warn = FALSE), c("1. some text", "", "1. more text"))

    set_text(sec = sec)
  })

  it("nested list", {
    set_text("some text\n    more text", sec = sec, mark = entire_document)

    olistr()

    rstudioapi::documentSave(sec$id)

    testthat::expect_equal(readLines(sec$path, warn = FALSE), c("1. some text", "    1. more text"))

    set_text(sec = sec)
  })
})
