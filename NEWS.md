# remedy 0.1.0.9000

* `chunknamer()` no longer mangles non-R engine chunks such as `stan`, `python`,
  `sql` or `bash` (#57). Text transformation is now exposed as the pure helper
  `rename_chunks()` for easier testing.
* `chunknamer()` / `rename_chunks()` accept `remedy_opts$set(name = "")` to
  disable auto-naming (#73).
* New `align_tilde()` addin aligns `~` in a highlighted region (#67).
* New `align_pipe()` addin aligns `|` columns in a markdown table (#58),
  backed by the pure helper `align_pipe_text()`.
* New helper `align_text()` factored out from the `align_*` addins.
* New `default_hotkeys()` helper builds the default hotkey map; on
  Windows / Linux `Cmd` is rewritten to `Ctrl` so the defaults are usable
  cross-platform (#70). Shortcuts for `align_arrow`, `align_equal`,
  `align_tilde`, `align_pipe` and `br` are included by default (#29, #60).
* New `br_r()` addin inserts a `<br>` line break at the cursor (#60).
* New `headr_toggler()` addin and `toggle_header()` helper cycle the header
  level of the current line (#59).
* Clean pkgdown on github
* Added travis support and codecov.

# remedy 0.1.0

* Added examples.
* CRAN ready version.

# remedy 0.0.0.9000

## 2017-09-21
* Added latex inline 
* url and image are now context aware

## 2017-09-08

* First commit on 2017-09-08 
