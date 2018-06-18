Tests and Coverage
================
18 June, 2018 09:05:44

This output is created by
[covrpage](https://github.com/yonicd/covrpage).

## Coverage

Coverage summary is created using the
[covr](https://github.com/r-lib/covr) package.

| Object                                  | Coverage (%) |
| :-------------------------------------- | :----------: |
| remedy                                  |     0.65     |
| [R/align.R](../R/align.R)               |     0.00     |
| [R/backtickr.R](../R/backtickr.R)       |     0.00     |
| [R/chunkr.R](../R/chunkr.R)             |     0.00     |
| [R/chunksplitr.R](../R/chunksplitr.R)   |     0.00     |
| [R/defaults.R](../R/defaults.R)         |     0.00     |
| [R/emphasize.R](../R/emphasize.R)       |     0.00     |
| [R/footnoter.R](../R/footnoter.R)       |     0.00     |
| [R/headr.R](../R/headr.R)               |     0.00     |
| [R/hotkeys.R](../R/hotkeys.R)           |     0.00     |
| [R/htmlcommentr.R](../R/htmlcommentr.R) |     0.00     |
| [R/imager.R](../R/imager.R)             |     0.00     |
| [R/internal.R](../R/internal.R)         |     0.00     |
| [R/latexr.R](../R/latexr.R)             |     0.00     |
| [R/listr.R](../R/listr.R)               |     0.00     |
| [R/mover.R](../R/mover.R)               |     0.00     |
| [R/tabler.R](../R/tabler.R)             |     0.00     |
| [R/urlr.R](../R/urlr.R)                 |     0.00     |
| [R/xaringan.R](../R/xaringan.R)         |     0.00     |
| [R/youtuber.R](../R/youtuber.R)         |     0.00     |
| [R/utils.R](../R/utils.R)               |    100.00    |

<br>

## Unit Tests

Unit Test summary is created using the
[testthat](https://github.com/r-lib/testthat)
package.

|            | file                              |  n |  time | error | failed | skipped | warning |
| ---------- | :-------------------------------- | -: | ----: | ----: | -----: | ------: | ------: |
| test-url.R | [test-url.R](testthat/test-url.R) | 16 | 0.027 |     0 |      0 |       0 |       0 |

| file                                  | context                         | test                                                   | status | n |  time |
| :------------------------------------ | :------------------------------ | :----------------------------------------------------- | :----- | -: | ----: |
| [test-url.R](testthat/test-url.R#L5)  | url and relative link detection | urls are detected: www                                 | PASS   | 1 | 0.002 |
| [test-url.R](testthat/test-url.R#L8)  | url and relative link detection | urls are detected: http                                | PASS   | 1 | 0.002 |
| [test-url.R](testthat/test-url.R#L11) | url and relative link detection | urls are detected: https                               | PASS   | 1 | 0.002 |
| [test-url.R](testthat/test-url.R#L17) | url and relative link detection | (potential) relative links are detected: md            | PASS   | 1 | 0.001 |
| [test-url.R](testthat/test-url.R#L20) | url and relative link detection | (potential) relative links are detected: Rmd           | PASS   | 1 | 0.001 |
| [test-url.R](testthat/test-url.R#L23) | url and relative link detection | (potential) relative links are detected: subdir file   | PASS   | 1 | 0.001 |
| [test-url.R](testthat/test-url.R#L26) | url and relative link detection | (potential) relative links are detected: subdir folder | PASS   | 1 | 0.002 |
| [test-url.R](testthat/test-url.R#L32) | url and relative link detection | image links are detected: png                          | PASS   | 1 | 0.002 |
| [test-url.R](testthat/test-url.R#L35) | url and relative link detection | image links are detected: jpg                          | PASS   | 1 | 0.003 |
| [test-url.R](testthat/test-url.R#L38) | url and relative link detection | image links are detected: jpeg                         | PASS   | 1 | 0.001 |
| [test-url.R](testthat/test-url.R#L41) | url and relative link detection | image links are detected: gif                          | PASS   | 1 | 0.001 |
| [test-url.R](testthat/test-url.R#L47) | url and relative link detection | invalid urls/links are not detected: http/s            | PASS   | 2 | 0.003 |
| [test-url.R](testthat/test-url.R#L51) | url and relative link detection | invalid urls/links are not detected: www               | PASS   | 2 | 0.003 |
| [test-url.R](testthat/test-url.R#L55) | url and relative link detection | invalid urls/links are not detected: no .com           | PASS   | 1 | 0.003 |
