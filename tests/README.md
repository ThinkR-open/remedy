Tests and Coverage
================
23 August, 2019 16:35:24

This output is created by
[covrpage](https://github.com/metrumresearchgroup/covrpage).

## Coverage

Coverage summary is created using the
[covr](https://github.com/r-lib/covr) package.

    ## ⚠️ Not All Tests Passed
    ##   Coverage statistics are approximations of the non-failing tests.
    ##   Use with caution
    ## 
    ##  For further investigation check in testthat summary tables.

| Object                                     | Coverage (%) |
| :----------------------------------------- | :----------: |
| remedy                                     |     0.79     |
| [R/align.R](../R/align.R)                  |     0.00     |
| [R/backtickr.R](../R/backtickr.R)          |     0.00     |
| [R/blockquoter.R](../R/blockquoter.R)      |     0.00     |
| [R/chunknamer.R](../R/chunknamer.R)        |     0.00     |
| [R/chunkr.R](../R/chunkr.R)                |     0.00     |
| [R/chunksplitr.R](../R/chunksplitr.R)      |     0.00     |
| [R/emphasize.R](../R/emphasize.R)          |     0.00     |
| [R/footnoter.R](../R/footnoter.R)          |     0.00     |
| [R/functionwrapr.R](../R/functionwrapr.R)  |     0.00     |
| [R/headr.R](../R/headr.R)                  |     0.00     |
| [R/htmlcommentr.R](../R/htmlcommentr.R)    |     0.00     |
| [R/imager.R](../R/imager.R)                |     0.00     |
| [R/internal.R](../R/internal.R)            |     0.00     |
| [R/latexr.R](../R/latexr.R)                |     0.00     |
| [R/listr.R](../R/listr.R)                  |     0.00     |
| [R/mover.R](../R/mover.R)                  |     0.00     |
| [R/opts\_complete.R](../R/opts_complete.R) |     0.00     |
| [R/opts.R](../R/opts.R)                    |     0.00     |
| [R/tabler.R](../R/tabler.R)                |     0.00     |
| [R/urlr.R](../R/urlr.R)                    |     0.00     |
| [R/xaringan.R](../R/xaringan.R)            |     0.00     |
| [R/youtuber.R](../R/youtuber.R)            |     0.00     |
| [R/example\_utils.R](../R/example_utils.R) |     3.70     |
| [R/utils.R](../R/utils.R)                  |    25.00     |

<br>

## Unit Tests

Unit Test summary is created using the
[testthat](https://github.com/r-lib/testthat)
package.

| file                                                  |  n |  time | error | failed | skipped | warning |
| :---------------------------------------------------- | -: | ----: | ----: | -----: | ------: | ------: |
| [test-backtick.R](testthat/test-backtick.R)           |  4 | 1.446 |     0 |      0 |       0 |       0 |
| [test-blockquote.R](testthat/test-blockquote.R)       |  4 | 1.385 |     0 |      0 |       0 |       0 |
| [test-chunk.R](testthat/test-chunk.R)                 |  4 | 1.531 |     0 |      0 |       0 |       0 |
| [test-chunknamer.R](testthat/test-chunknamer.R)       |  3 | 1.428 |     1 |      0 |       0 |       0 |
| [test-emphasizers.R](testthat/test-emphasizers.R)     |  6 | 1.727 |     0 |      0 |       0 |       0 |
| [test-enclose.R](testthat/test-enclose.R)             |  4 | 1.388 |     0 |      0 |       0 |       0 |
| [test-footnote.R](testthat/test-footnote.R)           |  4 | 1.389 |     0 |      0 |       0 |       0 |
| [test-functionwrapr.R](testthat/test-functionwrapr.R) |  2 | 0.608 |     0 |      0 |       0 |       0 |
| [test-headr.R](testthat/test-headr.R)                 |  7 | 1.647 |     0 |      0 |       0 |       0 |
| [test-image.R](testthat/test-image.R)                 |  6 | 2.238 |     0 |      0 |       0 |       0 |
| [test-latex.R](testthat/test-latex.R)                 |  4 | 1.417 |     0 |      0 |       0 |       0 |
| [test-link.R](testthat/test-link.R)                   | 16 | 0.028 |     0 |      0 |       0 |       0 |
| [test-list.R](testthat/test-list.R)                   |  0 | 1.659 |    11 |      0 |       0 |       0 |

<details open>

<summary> Show Detailed Test Results
</summary>

| file                                                      | context                         | test                                                       | status | n |  time |
| :-------------------------------------------------------- | :------------------------------ | :--------------------------------------------------------- | :----- | -: | ----: |
| [test-backtick.R](testthat/test-backtick.R#L17)           | backticks                       | backticks: empty                                           | PASS   | 1 | 0.269 |
| [test-backtick.R](testthat/test-backtick.R#L30)           | backticks                       | backticks: highlighted                                     | PASS   | 1 | 0.375 |
| [test-backtick.R](testthat/test-backtick.R#L43)           | backticks                       | backticks: multiline                                       | PASS   | 1 | 0.402 |
| [test-backtick.R](testthat/test-backtick.R#L56)           | backticks                       | backticks: multiselect                                     | PASS   | 1 | 0.400 |
| [test-blockquote.R](testthat/test-blockquote.R#L14)       | blockquoter                     | blockquoter: empty                                         | PASS   | 1 | 0.229 |
| [test-blockquote.R](testthat/test-blockquote.R#L26)       | blockquoter                     | blockquoter: highlighted                                   | PASS   | 1 | 0.397 |
| [test-blockquote.R](testthat/test-blockquote.R#L38)       | blockquoter                     | blockquoter: multiline                                     | PASS   | 1 | 0.384 |
| [test-blockquote.R](testthat/test-blockquote.R#L50)       | blockquoter                     | blockquoter: multiparagraph                                | PASS   | 1 | 0.375 |
| [test-chunk.R](testthat/test-chunk.R#L20_L22)             | chunks                          | splitting: splitting one chunk into two                    | PASS   | 1 | 0.397 |
| [test-chunk.R](testthat/test-chunk.R#L43_L45)             | chunks                          | params: splitting one chunk into two carrying chunk params | PASS   | 1 | 0.395 |
| [test-chunk.R](testthat/test-chunk.R#L66_L68)             | chunks                          | creating: full document                                    | PASS   | 1 | 0.346 |
| [test-chunk.R](testthat/test-chunk.R#L88_L90)             | chunks                          | wrapping: section                                          | PASS   | 1 | 0.393 |
| [test-chunknamer.R](testthat/test-chunknamer.R#L18_L22)   | chunknamer                      | splitting: splitting one chunk into two                    | ERROR  | 0 | 0.282 |
| [test-chunknamer.R](testthat/test-chunknamer.R#L43_L45)   | chunknamer                      | params: splitting one chunk into two carrying chunk params | PASS   | 1 | 0.394 |
| [test-chunknamer.R](testthat/test-chunknamer.R#L66_L68)   | chunknamer                      | creating: full document                                    | PASS   | 1 | 0.346 |
| [test-chunknamer.R](testthat/test-chunknamer.R#L88_L90)   | chunknamer                      | wrapping: section                                          | PASS   | 1 | 0.406 |
| [test-emphasizers.R](testthat/test-emphasizers.R#L16)     | emphasizers                     | italics: empty                                             | PASS   | 1 | 0.220 |
| [test-emphasizers.R](testthat/test-emphasizers.R#L29)     | emphasizers                     | italics: highlighted                                       | PASS   | 1 | 0.386 |
| [test-emphasizers.R](testthat/test-emphasizers.R#L47)     | emphasizers                     | bold: empty                                                | PASS   | 1 | 0.208 |
| [test-emphasizers.R](testthat/test-emphasizers.R#L60)     | emphasizers                     | bold: highlighted                                          | PASS   | 1 | 0.373 |
| [test-emphasizers.R](testthat/test-emphasizers.R#L78)     | emphasizers                     | strike: empty                                              | PASS   | 1 | 0.205 |
| [test-emphasizers.R](testthat/test-emphasizers.R#L91)     | emphasizers                     | strike: highlighted                                        | PASS   | 1 | 0.335 |
| [test-enclose.R](testthat/test-enclose.R#L22)             | enclose                         | enclose: empty                                             | PASS   | 1 | 0.224 |
| [test-enclose.R](testthat/test-enclose.R#L39)             | enclose                         | enclose: highlighted                                       | PASS   | 1 | 0.385 |
| [test-enclose.R](testthat/test-enclose.R#L55)             | enclose                         | enclose: multiple lines                                    | PASS   | 1 | 0.391 |
| [test-enclose.R](testthat/test-enclose.R#L69)             | enclose                         | enclose: multiple selections                               | PASS   | 1 | 0.388 |
| [test-footnote.R](testthat/test-footnote.R#L16)           | footnotes                       | footnotes: empty                                           | PASS   | 1 | 0.219 |
| [test-footnote.R](testthat/test-footnote.R#L29)           | footnotes                       | footnotes: highlighted                                     | PASS   | 1 | 0.371 |
| [test-footnote.R](testthat/test-footnote.R#L42)           | footnotes                       | footnotes: multiline                                       | PASS   | 1 | 0.395 |
| [test-footnote.R](testthat/test-footnote.R#L55)           | footnotes                       | footnotes: multiselect                                     | PASS   | 1 | 0.404 |
| [test-functionwrapr.R](testthat/test-functionwrapr.R#L15) | functionwrapr                   | wrap selection in function: empty                          | PASS   | 1 | 0.215 |
| [test-functionwrapr.R](testthat/test-functionwrapr.R#L28) | functionwrapr                   | wrap selection in function: wrapped                        | PASS   | 1 | 0.393 |
| [test-headr.R](testthat/test-headr.R#L12)                 | headr                           | add headers to source editor: \#                           | PASS   | 1 | 0.216 |
| [test-headr.R](testthat/test-headr.R#L19)                 | headr                           | add headers to source editor: \#\#                         | PASS   | 1 | 0.198 |
| [test-headr.R](testthat/test-headr.R#L26)                 | headr                           | add headers to source editor: \#\#\#                       | PASS   | 1 | 0.212 |
| [test-headr.R](testthat/test-headr.R#L33)                 | headr                           | add headers to source editor: \#\#\#\#                     | PASS   | 1 | 0.213 |
| [test-headr.R](testthat/test-headr.R#L40)                 | headr                           | add headers to source editor: \#\#\#\#\#                   | PASS   | 1 | 0.216 |
| [test-headr.R](testthat/test-headr.R#L47)                 | headr                           | add headers to source editor: \#\#\#\#\#\#                 | PASS   | 1 | 0.220 |
| [test-headr.R](testthat/test-headr.R#L55)                 | headr                           | add headers to source editor: append                       | PASS   | 1 | 0.372 |
| [test-image.R](testthat/test-image.R#L16)                 | images                          | images: empty                                              | PASS   | 1 | 0.222 |
| [test-image.R](testthat/test-image.R#L29)                 | images                          | images: no description bad link                            | PASS   | 1 | 0.361 |
| [test-image.R](testthat/test-image.R#L42)                 | images                          | images: description bad link                               | PASS   | 1 | 0.370 |
| [test-image.R](testthat/test-image.R#L55)                 | images                          | images: no description good link                           | PASS   | 1 | 0.516 |
| [test-image.R](testthat/test-image.R#L68)                 | images                          | images: single word description good link                  | PASS   | 1 | 0.383 |
| [test-image.R](testthat/test-image.R#L81)                 | images                          | images: multiple word description good link                | PASS   | 1 | 0.386 |
| [test-latex.R](testthat/test-latex.R#L16)                 | latex                           | latex: empty                                               | PASS   | 1 | 0.229 |
| [test-latex.R](testthat/test-latex.R#L29)                 | latex                           | latex: highlighted                                         | PASS   | 1 | 0.395 |
| [test-latex.R](testthat/test-latex.R#L42)                 | latex                           | latex: multiline                                           | PASS   | 1 | 0.400 |
| [test-latex.R](testthat/test-latex.R#L55)                 | latex                           | latex: multiselect                                         | PASS   | 1 | 0.393 |
| [test-link.R](testthat/test-link.R#L5)                    | url and relative link detection | urls are detected: www                                     | PASS   | 1 | 0.003 |
| [test-link.R](testthat/test-link.R#L8)                    | url and relative link detection | urls are detected: http                                    | PASS   | 1 | 0.003 |
| [test-link.R](testthat/test-link.R#L11)                   | url and relative link detection | urls are detected: https                                   | PASS   | 1 | 0.002 |
| [test-link.R](testthat/test-link.R#L17)                   | url and relative link detection | (potential) relative links are detected: md                | PASS   | 1 | 0.002 |
| [test-link.R](testthat/test-link.R#L20)                   | url and relative link detection | (potential) relative links are detected: Rmd               | PASS   | 1 | 0.002 |
| [test-link.R](testthat/test-link.R#L23)                   | url and relative link detection | (potential) relative links are detected: subdir file       | PASS   | 1 | 0.003 |
| [test-link.R](testthat/test-link.R#L26)                   | url and relative link detection | (potential) relative links are detected: subdir folder     | PASS   | 1 | 0.002 |
| [test-link.R](testthat/test-link.R#L32)                   | url and relative link detection | image links are detected: png                              | PASS   | 1 | 0.002 |
| [test-link.R](testthat/test-link.R#L35)                   | url and relative link detection | image links are detected: jpg                              | PASS   | 1 | 0.001 |
| [test-link.R](testthat/test-link.R#L38)                   | url and relative link detection | image links are detected: jpeg                             | PASS   | 1 | 0.001 |
| [test-link.R](testthat/test-link.R#L41)                   | url and relative link detection | image links are detected: gif                              | PASS   | 1 | 0.001 |
| [test-link.R](testthat/test-link.R#L47)                   | url and relative link detection | invalid urls/links are not detected: http/s                | PASS   | 2 | 0.003 |
| [test-link.R](testthat/test-link.R#L51)                   | url and relative link detection | invalid urls/links are not detected: www                   | PASS   | 2 | 0.002 |
| [test-link.R](testthat/test-link.R#L55)                   | url and relative link detection | invalid urls/links are not detected: no .com               | PASS   | 1 | 0.001 |
| [test-list.R](testthat/test-list.R#L10)                   | lists                           | unordered lists: empty                                     | ERROR  | 0 | 0.014 |
| [test-list.R](testthat/test-list.R#L22)                   | lists                           | unordered lists: highlighted                               | ERROR  | 0 | 0.178 |
| [test-list.R](testthat/test-list.R#L34)                   | lists                           | unordered lists: multiple lines                            | ERROR  | 0 | 0.184 |
| [test-list.R](testthat/test-list.R#L46)                   | lists                           | unordered lists: multiple lines with quote at start        | ERROR  | 0 | 0.181 |
| [test-list.R](testthat/test-list.R#L58)                   | lists                           | unordered lists: multiple paragraphs                       | ERROR  | 0 | 0.189 |
| [test-list.R](testthat/test-list.R#L70)                   | lists                           | unordered lists: nested list                               | ERROR  | 0 | 0.186 |
| [test-list.R](testthat/test-list.R#L85)                   | lists                           | ordered lists: empty                                       | ERROR  | 0 | 0.023 |
| [test-list.R](testthat/test-list.R#L97)                   | lists                           | ordered lists: highlighted                                 | ERROR  | 0 | 0.172 |
| [test-list.R](testthat/test-list.R#L109)                  | lists                           | ordered lists: multiple lines                              | ERROR  | 0 | 0.179 |
| [test-list.R](testthat/test-list.R#L121)                  | lists                           | ordered lists: multiple paragraphs                         | ERROR  | 0 | 0.180 |
| [test-list.R](testthat/test-list.R#L133)                  | lists                           | ordered lists: nested list                                 | ERROR  | 0 | 0.173 |

</details>

<details>

<summary> Session Info </summary>

| Field    | Value                         |
| :------- | :---------------------------- |
| Version  | R version 3.6.1 (2019-07-05)  |
| Platform | x86\_64-pc-linux-gnu (64-bit) |
| Running  | Ubuntu 18.04.3 LTS            |
| Language | en\_US                        |
| Timezone | America/Los\_Angeles          |

| Package  | Version |
| :------- | :------ |
| testthat | 2.2.1   |
| covr     | 3.3.0   |
| covrpage | 0.0.70  |

</details>

<!--- Final Status : error/failed --->
