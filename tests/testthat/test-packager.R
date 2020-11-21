testthat::context("make cran link")

sec <- scratch_file()
testthat::describe("packager creates cran link", {
  set_text("dplyr", sec = sec)
  packager()
  rstudioapi::documentSave(sec$id)
  testthat::expect_equal(readLines(sec$path, warn = FALSE), c("[{dplyr}](https://CRAN.R-project.org/package=dplyr)"))
})
