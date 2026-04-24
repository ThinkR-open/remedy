testthat::context("cite_packages (#20)")

testthat::describe("cite_packages", {

  it("formats a bulleted citation list for given packages", {
    out <- cite_packages("stats")
    testthat::expect_true(grepl("stats", out, fixed = TRUE))
    testthat::expect_true(grepl("^\\+\\s|\\n\\+\\s", out))
  })

  it("returns one bullet per package", {
    out <- cite_packages(c("stats", "utils"))
    n_bullets <- length(gregexpr("(?m)^\\+ ", out, perl = TRUE)[[1L]])
    testthat::expect_equal(n_bullets, 2L)
  })

  it("uses `packages_in_text()` to discover packages in Rmd lines", {
    lines <- c(
      "```{r}",
      "library(utils)",
      "stats::lm(y ~ x)",
      "```"
    )
    pkgs <- packages_in_text(lines)
    testthat::expect_true("utils" %in% pkgs)
    testthat::expect_true("stats" %in% pkgs)
  })
})
