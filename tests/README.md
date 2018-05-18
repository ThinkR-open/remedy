Tests and Coverage
================
18 May, 2018 16:14:36

This output is created by
[covrpage](https://github.com/yonicd/covrpage).

## Coverage

Coverage summary is created using the
[covr](https://github.com/r-lib/covr) package.

| Object                                  | Coverage (%) |
| :-------------------------------------- | :----------: |
| remedy                                  |     0.5      |
| [R/alignr.R](../R/alignr.R)             |     0.0      |
| [R/backtickr.R](../R/backtickr.R)       |     0.0      |
| [R/chunkr.R](../R/chunkr.R)             |     0.0      |
| [R/chunksplitr.R](../R/chunksplitr.R)   |     0.0      |
| [R/defaults.R](../R/defaults.R)         |     0.0      |
| [R/emphasize.R](../R/emphasize.R)       |     0.0      |
| [R/headr.R](../R/headr.R)               |     0.0      |
| [R/hotkeys.R](../R/hotkeys.R)           |     0.0      |
| [R/htmlcommentr.R](../R/htmlcommentr.R) |     0.0      |
| [R/imager.R](../R/imager.R)             |     0.0      |
| [R/latexr.R](../R/latexr.R)             |     0.0      |
| [R/listr.R](../R/listr.R)               |     0.0      |
| [R/mover.R](../R/mover.R)               |     0.0      |
| [R/tabler.R](../R/tabler.R)             |     0.0      |
| [R/testthat.R](../R/testthat.R)         |     0.0      |
| [R/urlr.R](../R/urlr.R)                 |     0.0      |
| [R/xaringan.R](../R/xaringan.R)         |     0.0      |
| [R/youtuber.R](../R/youtuber.R)         |     0.0      |
| [R/utils.R](../R/utils.R)               |    100.0     |

<br>

## Unit Tests

Unit Test summary is created using the
[testthat](https://github.com/r-lib/testthat)
package.

|            | file                              |  n |  time | error | failed | skipped | warning |
| ---------- | :-------------------------------- | -: | ----: | ----: | -----: | ------: | ------: |
| test-url.R | [test-url.R](testthat/test-url.R) | 16 | 0.051 |     0 |      0 |       0 |       0 |

| file                                      | context                         | test                                              | status | n |  time |
| :---------------------------------------- | :------------------------------ | :------------------------------------------------ | :----- | -: | ----: |
| [test-url.R](testthat/test-url.R#L6)      | url and relative link detection | urls are detected: no http                        | PASS   | 1 | 0.003 |
| [test-url.R](testthat/test-url.R#L9)      | url and relative link detection | urls are detected: http                           | PASS   | 1 | 0.004 |
| [test-url.R](testthat/test-url.R#L12)     | url and relative link detection | urls are detected: https                          | PASS   | 1 | 0.005 |
| [test-url.R](testthat/test-url.R#L20)     | relative                        | (potential) relative links are detected: md       | PASS   | 1 | 0.011 |
| [test-url.R](testthat/test-url.R#L23)     | relative                        | (potential) relative links are detected: Rmd      | PASS   | 1 | 0.002 |
| [test-url.R](testthat/test-url.R#L26)     | relative                        | (potential) relative links are detected: fig file | PASS   | 1 | 0.002 |
| [test-url.R](testthat/test-url.R#L29)     | relative                        | (potential) relative links are detected: fig dir  | PASS   | 1 | 0.002 |
| [test-url.R](testthat/test-url.R#L37)     | images                          | image links are detected: png                     | PASS   | 1 | 0.002 |
| [test-url.R](testthat/test-url.R#L40)     | images                          | image links are detected: jpg                     | PASS   | 1 | 0.002 |
| [test-url.R](testthat/test-url.R#L43)     | images                          | image links are detected: jpeg                    | PASS   | 1 | 0.002 |
| [test-url.R](testthat/test-url.R#L46)     | images                          | image links are detected: gif                     | PASS   | 1 | 0.005 |
| [test-url.R](testthat/test-url.R#L54)     | errors                          | invalid urls/links are not detected: http         | PASS   | 1 | 0.002 |
| [test-url.R](testthat/test-url.R#L57)     | errors                          | invalid urls/links are not detected: https        | PASS   | 1 | 0.003 |
| [test-url.R](testthat/test-url.R#L60_L62) | errors                          | invalid urls/links are not detected: www          | PASS   | 1 | 0.002 |
| [test-url.R](testthat/test-url.R#L65)     | errors                          | invalid urls/links are not detected: no com       | PASS   | 1 | 0.002 |
| [test-url.R](testthat/test-url.R#L68)     | errors                          | invalid urls/links are not detected: only www     | PASS   | 1 | 0.002 |
