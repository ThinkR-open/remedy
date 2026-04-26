testthat::context("default_hotkeys: align hotkeys + OS awareness")

testthat::describe("default_hotkeys", {

  it("exposes default shortcuts for the align_* addins (issue #29)", {
    keys <- default_hotkeys(os = "Darwin")
    testthat::expect_true(all(
      c("align_arrow", "align_equal", "align_tilde", "align_pipe") %in% names(keys)
    ))
  })

  it("uses Cmd on macOS", {
    keys <- default_hotkeys(os = "Darwin")
    testthat::expect_true(any(grepl("Cmd", keys, fixed = TRUE)))
  })

  it("replaces Cmd with Ctrl on Windows (issue #70)", {
    keys <- default_hotkeys(os = "Windows")
    testthat::expect_false(any(grepl("Cmd", keys, fixed = TRUE)))
  })

  it("replaces Cmd with Ctrl on Linux (issue #70)", {
    keys <- default_hotkeys(os = "Linux")
    testthat::expect_false(any(grepl("Cmd", keys, fixed = TRUE)))
  })

  it("default remedy_opts uses the current OS map", {
    keys <- remedy_opts$get("hotkeys")
    expected <- default_hotkeys()
    testthat::expect_equal(keys, expected)
  })

  it("includes br addin shortcut (issue #60)", {
    keys <- default_hotkeys(os = "Darwin")
    testthat::expect_true("br" %in% names(keys))
  })

  it("does not produce colliding shortcuts on any OS (regression)", {
    for (os in c("Darwin", "Linux", "Windows")) {
      keys <- default_hotkeys(os = os)
      testthat::expect_equal(
        length(keys), length(unique(keys)),
        info = paste("collision detected on", os)
      )
    }
  })
})
