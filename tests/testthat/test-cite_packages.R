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

  it("strips quotes around library() arguments (regression)", {
    pkgs <- packages_in_text(c(
      "library(\"dplyr\")",
      "library('tidyr')",
      "library(stats)"
    ))
    testthat::expect_setequal(pkgs, c("dplyr", "tidyr", "stats"))
  })

  it("collapses quoted and unquoted spellings to the same name", {
    pkgs <- packages_in_text(c(
      "library(dplyr)",
      "library(\"dplyr\")",
      "requireNamespace('dplyr')"
    ))
    testthat::expect_equal(pkgs, "dplyr")
  })

  it("rejects names that don't start with a letter", {
    pkgs <- packages_in_text("library(.hidden)")
    testthat::expect_length(pkgs, 0L)
  })
})
