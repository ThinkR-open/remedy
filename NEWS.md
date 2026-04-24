# remedy 0.1.0.9000

* `chunknamer()` no longer mangles non-R engine chunks such as `stan`, `python`,
  `sql` or `bash` (#57). Text transformation is now exposed as the pure helper
  `rename_chunks()` for easier testing.
* `chunknamer()` / `rename_chunks()` accept `remedy_opts$set(name = "")` to
  disable auto-naming (#73).
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
