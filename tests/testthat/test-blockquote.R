testthat::context("blockquoter")

sec <- scratch_file()

testthat::describe("blockquoter", {
  skip_if_not_rstudio()
  testthat::skip_on_travis()

  it("empty", {
    blockquoter()

    rstudioapi::documentSave(sec$id)

    testthat::expect_equal(readLines(sec$path, warn = FALSE), "> ")

    set_text(sec = sec)
  })

  it("highlighted", {
    set_text("some text", sec = sec, mark = entire_document)

    blockquoter()

    rstudioapi::documentSave(sec$id)

    testthat::expect_equal(readLines(sec$path, warn = FALSE), "> some text")

    set_text(sec = sec)
  })

  it("multiline", {
    set_text("some text\nmore text", sec = sec, mark = entire_document)

    blockquoter()

    rstudioapi::documentSave(sec$id)

    testthat::expect_equal(readLines(sec$path, warn = FALSE), c("> some text", "> more text"))

    set_text(sec = sec)
  })

  it("multiparagraph", {
    set_text("some text\n\nmore text", sec = sec, mark = entire_document)

    blockquoter()

    rstudioapi::documentSave(sec$id)

    testthat::expect_equal(readLines(sec$path, warn = FALSE), c("> some text", "> ", "> more text"))

    set_text(sec = sec)
  })
})
