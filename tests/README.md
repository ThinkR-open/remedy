Tests and Coverage
================
18 May, 2018 16:04:58

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

|            | file                              | n | time | error | failed | skipped | warning |
| ---------- | :-------------------------------- | -: | ---: | ----: | -----: | ------: | ------: |
| test-url.R | [test-url.R](testthat/test-url.R) | 0 | 0.01 |     4 |      0 |       0 |       0 |

| file                                  | context                         | test                                    | status | n |  time |
| :------------------------------------ | :------------------------------ | :-------------------------------------- | :----- | -: | ----: |
| [test-url.R](testthat/test-url.R#L4)  | url and relative link detection | urls are detected                       | ERROR  | 0 | 0.003 |
| [test-url.R](testthat/test-url.R#L10) | url and relative link detection | (potential) relative links are detected | ERROR  | 0 | 0.002 |
| [test-url.R](testthat/test-url.R#L17) | url and relative link detection | image links are detected                | ERROR  | 0 | 0.002 |
| [test-url.R](testthat/test-url.R#L24) | url and relative link detection | invalid urls/links are not detected     | ERROR  | 0 | 0.003 |
