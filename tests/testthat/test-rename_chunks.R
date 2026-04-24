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
