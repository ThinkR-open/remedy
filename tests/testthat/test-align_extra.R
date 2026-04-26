testthat::context("align helpers: tilde and pipe")

testthat::describe("align_text", {

  it("aligns `~` across lines (issue #67)", {
    input <- c(
      "a ~ 1",
      "aaa ~ 2",
      "aa ~ 3"
    )
    out <- align_text(input, find = "~")
    testthat::expect_equal(
      out,
      c(
        "a   ~ 1",
        "aaa ~ 2",
        "aa  ~ 3"
      )
    )
  })

  it("aligns `=` (regression)", {
    input <- c(
      "a = 1",
      "aaa = 2"
    )
    out <- align_text(input, find = "=")
    testthat::expect_equal(out, c("a   = 1", "aaa = 2"))
  })

  it("aligns `<-` for the align_arrow addin", {
    input <- c(
      "a <- 1",
      "aaa <- 2"
    )
    out <- align_text(input, find = "<-")
    testthat::expect_equal(out, c("a   <- 1", "aaa <- 2"))
  })
})

testthat::describe("align_pipe_text", {

  it("aligns `|` columns in a markdown table (issue #58)", {
    input <- c(
      "|a|bb|ccc|",
      "|1|2|3|",
      "|44|5|66|"
    )
    out <- align_pipe_text(input)
    testthat::expect_equal(
      out,
      c(
        "|a |bb|ccc|",
        "|1 |2 |3  |",
        "|44|5 |66 |"
      )
    )
  })

  it("is a no-op on non-pipe text", {
    input <- c("hello", "world")
    out <- align_pipe_text(input)
    testthat::expect_equal(out, input)
  })

  it("leaves lines without pipes untouched", {
    input <- c(
      "|a|bb|",
      "no pipes here",
      "|1|2|"
    )
    out <- align_pipe_text(input)
    testthat::expect_equal(
      out,
      c(
        "|a|bb|",
        "no pipes here",
        "|1|2 |"
      )
    )
  })
})
