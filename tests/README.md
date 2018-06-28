Tests and Coverage
================
28 June, 2018 17:24:19

This output is created by
[covrpage](https://github.com/yonicd/covrpage).

## Coverage

Coverage summary is created using the
[covr](https://github.com/r-lib/covr) package.

| Object                                  | Coverage (%) |
| :-------------------------------------- | :----------: |
| remedy                                  |     0.73     |
| [R/align.R](../R/align.R)               |     0.00     |
| [R/backtickr.R](../R/backtickr.R)       |     0.00     |
| [R/chunkr.R](../R/chunkr.R)             |     0.00     |
| [R/chunksplitr.R](../R/chunksplitr.R)   |     0.00     |
| [R/defaults.R](../R/defaults.R)         |     0.00     |
| [R/emphasize.R](../R/emphasize.R)       |     0.00     |
| [R/footnoter.R](../R/footnoter.R)       |     0.00     |
| [R/headr.R](../R/headr.R)               |     0.00     |
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
| [R/utils.R](../R/utils.R)               |    25.00     |

<br>

## Unit Tests

Unit Test summary is created using the
[testthat](https://github.com/r-lib/testthat)
package.

|                    | file                                              |  n |  time | error | failed | skipped | warning |
| ------------------ | :------------------------------------------------ | -: | ----: | ----: | -----: | ------: | ------: |
| test-backtick.R    | [test-backtick.R](testthat/test-backtick.R)       |  3 | 0.344 |     0 |      0 |       0 |       0 |
| test-chunk.R       | [test-chunk.R](testthat/test-chunk.R)             |  3 | 0.309 |     0 |      0 |       0 |       0 |
| test-emphasizers.R | [test-emphasizers.R](testthat/test-emphasizers.R) |  6 | 0.512 |     0 |      0 |       0 |       0 |
| test-footnote.R    | [test-footnote.R](testthat/test-footnote.R)       |  3 | 0.325 |     0 |      0 |       0 |       0 |
| test-headr.R       | [test-headr.R](testthat/test-headr.R)             |  7 | 0.502 |     0 |      0 |       0 |       0 |
| test-image.R       | [test-image.R](testthat/test-image.R)             |  6 | 0.601 |     0 |      0 |       0 |       0 |
| test-latex.R       | [test-latex.R](testthat/test-latex.R)             |  3 | 0.245 |     0 |      0 |       0 |       0 |
| test-link.R        | [test-link.R](testthat/test-link.R)               | 16 | 0.032 |     0 |      0 |       0 |       0 |
| test-list.R        | [test-list.R](testthat/test-list.R)               |  3 | 0.226 |     0 |      0 |       0 |       0 |
| test-right.R       | [test-right.R](testthat/test-right.R)             |  4 | 0.445 |     0 |      0 |       0 |       0 |
| test-url.R         | [test-url.R](testthat/test-url.R)                 |  6 | 0.551 |     0 |      0 |       0 |       0 |
| test-xaringan.R    | [test-xaringan.R](testthat/test-xaringan.R)       |  2 | 0.170 |     0 |      0 |       0 |       0 |
| test-youtube.R     | [test-youtube.R](testthat/test-youtube.R)         |  4 | 0.471 |     0 |      0 |       0 |       0 |

| file                                                  | context                         | test                                                   | status | n |  time |
| :---------------------------------------------------- | :------------------------------ | :----------------------------------------------------- | :----- | -: | ----: |
| [test-backtick.R](testthat/test-backtick.R#L23)       | backticks                       | backticks: empty                                       | PASS   | 1 | 0.064 |
| [test-backtick.R](testthat/test-backtick.R#L36)       | backticks                       | backticks: highlighted                                 | PASS   | 1 | 0.161 |
| [test-backtick.R](testthat/test-backtick.R#L49)       | backticks                       | backticks: multiline                                   | PASS   | 1 | 0.119 |
| [test-chunk.R](testthat/test-chunk.R#L27_L29)         | chunks                          | splitting: splitting one chunk into two                | PASS   | 1 | 0.101 |
| [test-chunk.R](testthat/test-chunk.R#L47_L49)         | chunks                          | creating: full document                                | PASS   | 1 | 0.092 |
| [test-chunk.R](testthat/test-chunk.R#L67_L69)         | chunks                          | wrapping: full document                                | PASS   | 1 | 0.116 |
| [test-emphasizers.R](testthat/test-emphasizers.R#L23) | emphasizers                     | italics: empty                                         | PASS   | 1 | 0.055 |
| [test-emphasizers.R](testthat/test-emphasizers.R#L36) | emphasizers                     | italics: highlighted                                   | PASS   | 1 | 0.110 |
| [test-emphasizers.R](testthat/test-emphasizers.R#L53) | emphasizers                     | bold: empty                                            | PASS   | 1 | 0.086 |
| [test-emphasizers.R](testthat/test-emphasizers.R#L66) | emphasizers                     | bold: highlighted                                      | PASS   | 1 | 0.096 |
| [test-emphasizers.R](testthat/test-emphasizers.R#L83) | emphasizers                     | strike: empty                                          | PASS   | 1 | 0.069 |
| [test-emphasizers.R](testthat/test-emphasizers.R#L96) | emphasizers                     | strike: highlighted                                    | PASS   | 1 | 0.096 |
| [test-footnote.R](testthat/test-footnote.R#L22)       | footnotes                       | footnotes: empty                                       | PASS   | 1 | 0.058 |
| [test-footnote.R](testthat/test-footnote.R#L35)       | footnotes                       | footnotes: highlighted                                 | PASS   | 1 | 0.147 |
| [test-footnote.R](testthat/test-footnote.R#L48)       | footnotes                       | footnotes: multiline                                   | PASS   | 1 | 0.120 |
| [test-headr.R](testthat/test-headr.R#L18)             | headr                           | add headers to source editor: \#                       | PASS   | 1 | 0.059 |
| [test-headr.R](testthat/test-headr.R#L25)             | headr                           | add headers to source editor: \#\#                     | PASS   | 1 | 0.082 |
| [test-headr.R](testthat/test-headr.R#L32)             | headr                           | add headers to source editor: \#\#\#                   | PASS   | 1 | 0.065 |
| [test-headr.R](testthat/test-headr.R#L39)             | headr                           | add headers to source editor: \#\#\#\#                 | PASS   | 1 | 0.057 |
| [test-headr.R](testthat/test-headr.R#L46)             | headr                           | add headers to source editor: \#\#\#\#\#               | PASS   | 1 | 0.076 |
| [test-headr.R](testthat/test-headr.R#L53)             | headr                           | add headers to source editor: \#\#\#\#\#\#             | PASS   | 1 | 0.065 |
| [test-headr.R](testthat/test-headr.R#L61)             | headr                           | add headers to source editor: append                   | PASS   | 1 | 0.098 |
| [test-image.R](testthat/test-image.R#L22)             | images                          | images: empty                                          | PASS   | 1 | 0.070 |
| [test-image.R](testthat/test-image.R#L35)             | images                          | images: no description bad link                        | PASS   | 1 | 0.096 |
| [test-image.R](testthat/test-image.R#L48)             | images                          | images: description bad link                           | PASS   | 1 | 0.135 |
| [test-image.R](testthat/test-image.R#L61)             | images                          | images: no description good link                       | PASS   | 1 | 0.098 |
| [test-image.R](testthat/test-image.R#L74)             | images                          | images: single word description good link              | PASS   | 1 | 0.100 |
| [test-image.R](testthat/test-image.R#L87)             | images                          | images: multiple word description good link            | PASS   | 1 | 0.102 |
| [test-latex.R](testthat/test-latex.R#L23)             | latex                           | latex: empty                                           | PASS   | 1 | 0.061 |
| [test-latex.R](testthat/test-latex.R#L36)             | latex                           | latex: highlighted                                     | PASS   | 1 | 0.087 |
| [test-latex.R](testthat/test-latex.R#L49)             | latex                           | latex: multiline                                       | PASS   | 1 | 0.097 |
| [test-link.R](testthat/test-link.R#L5)                | url and relative link detection | urls are detected: www                                 | PASS   | 1 | 0.002 |
| [test-link.R](testthat/test-link.R#L8)                | url and relative link detection | urls are detected: http                                | PASS   | 1 | 0.002 |
| [test-link.R](testthat/test-link.R#L11)               | url and relative link detection | urls are detected: https                               | PASS   | 1 | 0.002 |
| [test-link.R](testthat/test-link.R#L17)               | url and relative link detection | (potential) relative links are detected: md            | PASS   | 1 | 0.002 |
| [test-link.R](testthat/test-link.R#L20)               | url and relative link detection | (potential) relative links are detected: Rmd           | PASS   | 1 | 0.004 |
| [test-link.R](testthat/test-link.R#L23)               | url and relative link detection | (potential) relative links are detected: subdir file   | PASS   | 1 | 0.002 |
| [test-link.R](testthat/test-link.R#L26)               | url and relative link detection | (potential) relative links are detected: subdir folder | PASS   | 1 | 0.002 |
| [test-link.R](testthat/test-link.R#L32)               | url and relative link detection | image links are detected: png                          | PASS   | 1 | 0.002 |
| [test-link.R](testthat/test-link.R#L35)               | url and relative link detection | image links are detected: jpg                          | PASS   | 1 | 0.001 |
| [test-link.R](testthat/test-link.R#L38)               | url and relative link detection | image links are detected: jpeg                         | PASS   | 1 | 0.002 |
| [test-link.R](testthat/test-link.R#L41)               | url and relative link detection | image links are detected: gif                          | PASS   | 1 | 0.002 |
| [test-link.R](testthat/test-link.R#L47)               | url and relative link detection | invalid urls/links are not detected: http/s            | PASS   | 2 | 0.004 |
| [test-link.R](testthat/test-link.R#L51)               | url and relative link detection | invalid urls/links are not detected: www               | PASS   | 2 | 0.004 |
| [test-link.R](testthat/test-link.R#L55)               | url and relative link detection | invalid urls/links are not detected: no .com           | PASS   | 1 | 0.001 |
| [test-list.R](testthat/test-list.R#L23)               | lists                           | lists: empty                                           | PASS   | 1 | 0.028 |
| [test-list.R](testthat/test-list.R#L36)               | lists                           | lists: highlighted                                     | PASS   | 1 | 0.095 |
| [test-list.R](testthat/test-list.R#L49)               | lists                           | lists: multiline                                       | PASS   | 1 | 0.103 |
| [test-right.R](testthat/test-right.R#L23)             | copy text to the right          | rightr: one word                                       | PASS   | 1 | 0.110 |
| [test-right.R](testthat/test-right.R#L36)             | copy text to the right          | rightr: one word                                       | PASS   | 1 | 0.095 |
| [test-right.R](testthat/test-right.R#L49)             | copy text to the right          | rightr: multiple words                                 | PASS   | 1 | 0.093 |
| [test-right.R](testthat/test-right.R#L67)             | copy text to the right          | rightr: highlighting                                   | PASS   | 1 | 0.147 |
| [test-url.R](testthat/test-url.R#L22)                 | urls                            | urls: empty                                            | PASS   | 1 | 0.055 |
| [test-url.R](testthat/test-url.R#L35)                 | urls                            | urls: no description bad link                          | PASS   | 1 | 0.096 |
| [test-url.R](testthat/test-url.R#L48)                 | urls                            | urls: description bad link                             | PASS   | 1 | 0.102 |
| [test-url.R](testthat/test-url.R#L61)                 | urls                            | urls: no description good link                         | PASS   | 1 | 0.099 |
| [test-url.R](testthat/test-url.R#L74)                 | urls                            | urls: single word description good link                | PASS   | 1 | 0.101 |
| [test-url.R](testthat/test-url.R#L87)                 | urls                            | urls: multiple word description good link              | PASS   | 1 | 0.098 |
| [test-xaringan.R](testthat/test-xaringan.R#L22_L24)   | xaringan                        | urls: empty                                            | PASS   | 1 | 0.068 |
| [test-xaringan.R](testthat/test-xaringan.R#L36_L37)   | xaringan                        | urls: highlighted                                      | PASS   | 1 | 0.102 |
| [test-youtube.R](testthat/test-youtube.R#L22_L24)     | youtube                         | images: empty html                                     | PASS   | 1 | 0.065 |
| [test-youtube.R](testthat/test-youtube.R#L37_L38)     | youtube                         | images: html                                           | PASS   | 1 | 0.104 |
| [test-youtube.R](testthat/test-youtube.R#L52_L53)     | youtube                         | images: html width/height                              | PASS   | 1 | 0.100 |
| [test-youtube.R](testthat/test-youtube.R#L69_L70)     | youtube                         | images: html width/height                              | PASS   | 1 | 0.202 |
