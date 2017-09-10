context("url and relative link detection")

test_that("urls are detected", {
  expect_true(is_link("www.google.com"))
  expect_true(is_link("http://www.google.com"))
  expect_true(is_link("https://www.google.com"))
})

test_that("(potential) relative links are detected", {
  expect_true(is_link("contributing.md"))
  expect_true(is_link("report.Rmd"))
  expect_true(is_link("figs/plot.png"))
  expect_true(is_link("docs/figs"))
})

test_that("image links are detected", {
  expect_true(is_link("plot.png"))
  expect_true(is_link("plot.jpg"))
  expect_true(is_link("plot.jpeg"))
  expect_true(is_link("funny_cat.gif"))
})

test_that("invalid urls/links are not detected", {
  expect_false(is_link("http"))
  expect_false(is_link("https"))
  expect_false(is_link("www"))
  expect_false(is_link("www.google."))
  expect_false(is_link("http://www."))
})
