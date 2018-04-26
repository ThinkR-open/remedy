Tests and Coverage
================
26 April, 2018 16:09:41

-   [Coverage](#coverage)
-   [Unit Tests](#unit-tests)

Coverage
--------

Coverage summary is created using the [covr](https://github.com/r-lib/covr) package.

| Object                                  | Coverage (%) |
|:----------------------------------------|:------------:|
| remedy                                  |     0.53     |
| [R/alignr.R](../R/alignr.R)             |     0.00     |
| [R/backtickr.R](../R/backtickr.R)       |     0.00     |
| [R/chunkr.R](../R/chunkr.R)             |     0.00     |
| [R/chunksplitr.R](../R/chunksplitr.R)   |     0.00     |
| [R/defaults.R](../R/defaults.R)         |     0.00     |
| [R/emphasize.R](../R/emphasize.R)       |     0.00     |
| [R/headr.R](../R/headr.R)               |     0.00     |
| [R/hotkeys.R](../R/hotkeys.R)           |     0.00     |
| [R/htmlcommentr.R](../R/htmlcommentr.R) |     0.00     |
| [R/imager.R](../R/imager.R)             |     0.00     |
| [R/latexr.R](../R/latexr.R)             |     0.00     |
| [R/listr.R](../R/listr.R)               |     0.00     |
| [R/mover.R](../R/mover.R)               |     0.00     |
| [R/tabler.R](../R/tabler.R)             |     0.00     |
| [R/urlr.R](../R/urlr.R)                 |     0.00     |
| [R/xaringan.R](../R/xaringan.R)         |     0.00     |
| [R/youtuber.R](../R/youtuber.R)         |     0.00     |
| [R/utils.R](../R/utils.R)               |    100.00    |

<br>

Unit Tests
----------

Unit Test summary is created using the [testthat](https://github.com/r-lib/testthat) package.

| file                              |    n|   time|  error|  failed|  skipped|  warning|
|:----------------------------------|----:|------:|------:|-------:|--------:|--------:|
| [test-url.R](testthat/test-url.R) |   16|  0.028|      0|       0|        0|        0|

| file                              | test                                    | context                         | status |    n|   time|
|:----------------------------------|:----------------------------------------|:--------------------------------|:-------|----:|------:|
| [test-url.R](testthat/test-url.R) | urls are detected                       | url and relative link detection | PASS   |    3|  0.006|
| [test-url.R](testthat/test-url.R) | (potential) relative links are detected | url and relative link detection | PASS   |    4|  0.006|
| [test-url.R](testthat/test-url.R) | image links are detected                | url and relative link detection | PASS   |    4|  0.007|
| [test-url.R](testthat/test-url.R) | invalid urls/links are not detected     | url and relative link detection | PASS   |    5|  0.009|
