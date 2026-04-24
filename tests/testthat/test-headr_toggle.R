testthat::context("header toggle (#59) + line break (#60)")

testthat::describe("toggle_header", {

  it("turns a plain line into H1", {
    testthat::expect_equal(toggle_header("foo"), "# foo")
  })

  it("promotes H1 to H2 (and so on)", {
    testthat::expect_equal(toggle_header("# foo"), "## foo")
    testthat::expect_equal(toggle_header("## foo"), "### foo")
  })

  it("wraps around at H6 back to plain text", {
    testthat::expect_equal(toggle_header("###### foo"), "foo")
  })

  it("is a no-op on empty strings", {
    testthat::expect_equal(toggle_header(""), "")
  })

  it("works vectorised", {
    testthat::expect_equal(
      toggle_header(c("foo", "# bar", "###### baz")),
      c("# foo", "## bar", "baz")
    )
  })
})
