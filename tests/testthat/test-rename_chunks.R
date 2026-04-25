testthat::context("rename_chunks (pure helper)")

testthat::describe("rename_chunks", {

  it("names unnamed R chunks sequentially", {
    input <- c(
      "```{r}",
      "plot(1)",
      "```",
      "",
      "```{r}",
      "plot(2)",
      "```"
    )
    out <- rename_chunks(input, name = "remedy")
    testthat::expect_equal(
      out,
      c(
        "```{r remedy01}",
        "plot(1)",
        "```",
        "",
        "```{r remedy02}",
        "plot(2)",
        "```"
      )
    )
  })

  it("leaves already-named R chunks untouched", {
    input <- c("```{r foo}", "1+1", "```")
    out <- rename_chunks(input, name = "remedy")
    testthat::expect_equal(out, input)
  })

  it("keeps stan chunks unchanged (issue #57)", {
    input <- c(
      "```{r}",
      "",
      "```",
      "",
      "```{stan output.var=\"test\"}",
      "",
      "```"
    )
    out <- rename_chunks(input, name = "remedy")
    testthat::expect_equal(
      out,
      c(
        "```{r remedy01}",
        "",
        "```",
        "",
        "```{stan output.var=\"test\"}",
        "",
        "```"
      )
    )
  })

  it("keeps python chunks unchanged", {
    input <- c("```{python}", "print('hi')", "```")
    out <- rename_chunks(input, name = "remedy")
    testthat::expect_equal(out, input)
  })

  it("preserves existing chunk options when adding a name", {
    input <- c("```{r, echo = FALSE}", "1+1", "```")
    out <- rename_chunks(input, name = "remedy")
    testthat::expect_equal(
      out,
      c("```{r remedy01, echo = FALSE}", "1+1", "```")
    )
  })

  it("zero-pads to enough digits for >= 100 unnamed chunks (regression)", {
    # 100 empty R chunks should produce names remedy001..remedy100, all
    # with the same width so lexical sort matches numeric order.
    chunks <- as.character(rep(c("```{r}", "```", ""), 100))
    out <- rename_chunks(chunks, name = "remedy")
    headers <- grep("^```\\{r remedy", out, value = TRUE)
    testthat::expect_equal(length(headers), 100L)
    nums <- sub("^```\\{r remedy([0-9]+)\\}$", "\\1", headers)
    widths <- nchar(nums)
    testthat::expect_true(length(unique(widths)) == 1L)
    testthat::expect_equal(unique(widths), 3L)
  })

  it("does not rename when name is empty (issue #73)", {
    input <- c(
      "```{r}",
      "1",
      "```",
      "",
      "```{r}",
      "2",
      "```"
    )
    out <- rename_chunks(input, name = "")
    testthat::expect_equal(out, input)
  })
})
