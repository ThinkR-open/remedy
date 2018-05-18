testthat::context("url and relative link detection")

testthat::describe("urls are detected", {
  
  it('no http', {
      testthat::expect_true(is_link("www.google.com"))
    })
  it('http', {
      testthat::expect_true(is_link("http://www.google.com"))
    })
  it('https', {
      testthat::expect_true(is_link("https://www.google.com"))
    })
})

testthat::context('relative')

testthat::describe("(potential) relative links are detected", {
  it('md', {
      testthat::expect_true(is_link("contributing.md"))
    })
  it('Rmd', {
      testthat::expect_true(is_link("report.Rmd"))
    })
  it('fig file', {
      testthat::expect_true(is_link("figs/plot.png"))
    })
  it('fig dir', {
      testthat::expect_true(is_link("docs/figs"))
    })
})

testthat::context('images')

testthat::describe("image links are detected", {
  it('png', {
      testthat::expect_true(is_link("plot.png"))
    })
  it('jpg', {
      testthat::expect_true(is_link("plot.jpg"))
    })
  it('jpeg', {
      testthat::expect_true(is_link("plot.jpeg"))
    })
  it('gif', {
      testthat::expect_true(is_link("funny_cat.gif"))
    })
})

testthat::context('errors')

testthat::describe("invalid urls/links are not detected", {
  it('http', {
      testthat::expect_false(is_link("http"))
    })
  it('https', {
      testthat::expect_false(is_link("https"))
    })
  it('www', {
      testthat::expect_false(
        is_link("www")
        )
    })
  it('no com', {
      testthat::expect_false(is_link("www.google."))
    })
  it('only www', {
      testthat::expect_false(is_link("http://www."))
    })
})
