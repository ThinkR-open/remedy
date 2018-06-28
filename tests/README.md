Tests and Coverage
================
28 June, 2018 17:57:40

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
| test-backtick.R    | [test-backtick.R](testthat/test-backtick.R)       |  4 | 0.478 |     0 |      0 |       0 |       0 |
| test-chunk.R       | [test-chunk.R](testthat/test-chunk.R)             |  2 | 0.197 |     1 |      0 |       0 |       0 |
| test-emphasizers.R | [test-emphasizers.R](testthat/test-emphasizers.R) |  6 | 0.456 |     0 |      0 |       0 |       0 |
| test-footnote.R    | [test-footnote.R](testthat/test-footnote.R)       |  4 | 0.338 |     0 |      0 |       0 |       0 |
| test-headr.R       | [test-headr.R](testthat/test-headr.R)             |  7 | 0.460 |     0 |      0 |       0 |       0 |
| test-image.R       | [test-image.R](testthat/test-image.R)             |  6 | 0.574 |     0 |      0 |       0 |       0 |
| test-internal.R    | [test-internal.R](testthat/test-internal.R)       |  9 | 0.857 |     0 |      0 |       0 |       0 |
| test-latex.R       | [test-latex.R](testthat/test-latex.R)             |  4 | 0.361 |     0 |      0 |       0 |       0 |
| test-link.R        | [test-link.R](testthat/test-link.R)               | 16 | 0.020 |     0 |      0 |       0 |       0 |
| test-list.R        | [test-list.R](testthat/test-list.R)               |  3 | 0.257 |     0 |      0 |       0 |       0 |
| test-right.R       | [test-right.R](testthat/test-right.R)             |  4 | 0.396 |     0 |      0 |       0 |       0 |
| test-url.R         | [test-url.R](testthat/test-url.R)                 |  6 | 0.570 |     0 |      0 |       0 |       0 |
| test-xaringan.R    | [test-xaringan.R](testthat/test-xaringan.R)       |  2 | 0.176 |     0 |      0 |       0 |       0 |
| test-youtube.R     | [test-youtube.R](testthat/test-youtube.R)         |  4 | 0.364 |     0 |      0 |       0 |       0 |

| file                                                  | context                         | test                                                   | status | n |  time |
| :---------------------------------------------------- | :------------------------------ | :----------------------------------------------------- | :----- | -: | ----: |
| [test-backtick.R](testthat/test-backtick.R#L15)       | backticks                       | backticks: empty                                       | PASS   | 1 | 0.147 |
| [test-backtick.R](testthat/test-backtick.R#L28)       | backticks                       | backticks: highlighted                                 | PASS   | 1 | 0.095 |
| [test-backtick.R](testthat/test-backtick.R#L41)       | backticks                       | backticks: multiline                                   | PASS   | 1 | 0.111 |
| [test-backtick.R](testthat/test-backtick.R#L54)       | backticks                       | backticks: multiselect                                 | PASS   | 1 | 0.125 |
| [test-chunk.R](testthat/test-chunk.R#L27_L29)         | chunks                          | splitting: splitting one chunk into two                | PASS   | 1 | 0.094 |
| [test-chunk.R](testthat/test-chunk.R#L47_L49)         | chunks                          | creating: full document                                | PASS   | 1 | 0.078 |
| [test-chunk.R](testthat/test-chunk.R#L63)             | chunks                          | wrapping: full document                                | ERROR  | 0 | 0.025 |
| [test-emphasizers.R](testthat/test-emphasizers.R#L15) | emphasizers                     | italics: empty                                         | PASS   | 1 | 0.061 |
| [test-emphasizers.R](testthat/test-emphasizers.R#L28) | emphasizers                     | italics: highlighted                                   | PASS   | 1 | 0.096 |
| [test-emphasizers.R](testthat/test-emphasizers.R#L45) | emphasizers                     | bold: empty                                            | PASS   | 1 | 0.064 |
| [test-emphasizers.R](testthat/test-emphasizers.R#L58) | emphasizers                     | bold: highlighted                                      | PASS   | 1 | 0.086 |
| [test-emphasizers.R](testthat/test-emphasizers.R#L75) | emphasizers                     | strike: empty                                          | PASS   | 1 | 0.065 |
| [test-emphasizers.R](testthat/test-emphasizers.R#L88) | emphasizers                     | strike: highlighted                                    | PASS   | 1 | 0.084 |
| [test-footnote.R](testthat/test-footnote.R#L15)       | footnotes                       | footnotes: empty                                       | PASS   | 1 | 0.058 |
| [test-footnote.R](testthat/test-footnote.R#L28)       | footnotes                       | footnotes: highlighted                                 | PASS   | 1 | 0.087 |
| [test-footnote.R](testthat/test-footnote.R#L41)       | footnotes                       | footnotes: multiline                                   | PASS   | 1 | 0.095 |
| [test-footnote.R](testthat/test-footnote.R#L54)       | footnotes                       | footnotes: multiselect                                 | PASS   | 1 | 0.098 |
| [test-headr.R](testthat/test-headr.R#L10)             | headr                           | add headers to source editor: \#                       | PASS   | 1 | 0.057 |
| [test-headr.R](testthat/test-headr.R#L17)             | headr                           | add headers to source editor: \#\#                     | PASS   | 1 | 0.078 |
| [test-headr.R](testthat/test-headr.R#L24)             | headr                           | add headers to source editor: \#\#\#                   | PASS   | 1 | 0.053 |
| [test-headr.R](testthat/test-headr.R#L31)             | headr                           | add headers to source editor: \#\#\#\#                 | PASS   | 1 | 0.060 |
| [test-headr.R](testthat/test-headr.R#L38)             | headr                           | add headers to source editor: \#\#\#\#\#               | PASS   | 1 | 0.058 |
| [test-headr.R](testthat/test-headr.R#L45)             | headr                           | add headers to source editor: \#\#\#\#\#\#             | PASS   | 1 | 0.059 |
| [test-headr.R](testthat/test-headr.R#L53)             | headr                           | add headers to source editor: append                   | PASS   | 1 | 0.095 |
| [test-image.R](testthat/test-image.R#L15)             | images                          | images: empty                                          | PASS   | 1 | 0.065 |
| [test-image.R](testthat/test-image.R#L28)             | images                          | images: no description bad link                        | PASS   | 1 | 0.083 |
| [test-image.R](testthat/test-image.R#L41)             | images                          | images: description bad link                           | PASS   | 1 | 0.093 |
| [test-image.R](testthat/test-image.R#L54)             | images                          | images: no description good link                       | PASS   | 1 | 0.106 |
| [test-image.R](testthat/test-image.R#L67)             | images                          | images: single word description good link              | PASS   | 1 | 0.107 |
| [test-image.R](testthat/test-image.R#L80)             | images                          | images: multiple word description good link            | PASS   | 1 | 0.120 |
| [test-internal.R](testthat/test-internal.R#L20)       | internal                        | prefix: empty                                          | PASS   | 1 | 0.070 |
| [test-internal.R](testthat/test-internal.R#L36)       | internal                        | prefix: line                                           | PASS   | 1 | 0.095 |
| [test-internal.R](testthat/test-internal.R#L50)       | internal                        | prefix: highlighted                                    | PASS   | 1 | 0.102 |
| [test-internal.R](testthat/test-internal.R#L66)       | internal                        | prefix: multiple lines                                 | PASS   | 1 | 0.086 |
| [test-internal.R](testthat/test-internal.R#L80)       | internal                        | prefix: multiple selections                            | PASS   | 1 | 0.117 |
| [test-internal.R](testthat/test-internal.R#L104)      | internal                        | enclose: empty                                         | PASS   | 1 | 0.064 |
| [test-internal.R](testthat/test-internal.R#L121)      | internal                        | enclose: highlighted                                   | PASS   | 1 | 0.102 |
| [test-internal.R](testthat/test-internal.R#L137)      | internal                        | enclose: multiple lines                                | PASS   | 1 | 0.100 |
| [test-internal.R](testthat/test-internal.R#L151)      | internal                        | enclose: multiple selections                           | PASS   | 1 | 0.121 |
| [test-latex.R](testthat/test-latex.R#L15)             | latex                           | latex: empty                                           | PASS   | 1 | 0.066 |
| [test-latex.R](testthat/test-latex.R#L28)             | latex                           | latex: highlighted                                     | PASS   | 1 | 0.093 |
| [test-latex.R](testthat/test-latex.R#L41)             | latex                           | latex: multiline                                       | PASS   | 1 | 0.100 |
| [test-latex.R](testthat/test-latex.R#L54)             | latex                           | latex: multiselect                                     | PASS   | 1 | 0.102 |
| [test-link.R](testthat/test-link.R#L5)                | url and relative link detection | urls are detected: www                                 | PASS   | 1 | 0.002 |
| [test-link.R](testthat/test-link.R#L8)                | url and relative link detection | urls are detected: http                                | PASS   | 1 | 0.001 |
| [test-link.R](testthat/test-link.R#L11)               | url and relative link detection | urls are detected: https                               | PASS   | 1 | 0.001 |
| [test-link.R](testthat/test-link.R#L17)               | url and relative link detection | (potential) relative links are detected: md            | PASS   | 1 | 0.002 |
| [test-link.R](testthat/test-link.R#L20)               | url and relative link detection | (potential) relative links are detected: Rmd           | PASS   | 1 | 0.001 |
| [test-link.R](testthat/test-link.R#L23)               | url and relative link detection | (potential) relative links are detected: subdir file   | PASS   | 1 | 0.002 |
| [test-link.R](testthat/test-link.R#L26)               | url and relative link detection | (potential) relative links are detected: subdir folder | PASS   | 1 | 0.001 |
| [test-link.R](testthat/test-link.R#L32)               | url and relative link detection | image links are detected: png                          | PASS   | 1 | 0.002 |
| [test-link.R](testthat/test-link.R#L35)               | url and relative link detection | image links are detected: jpg                          | PASS   | 1 | 0.001 |
| [test-link.R](testthat/test-link.R#L38)               | url and relative link detection | image links are detected: jpeg                         | PASS   | 1 | 0.001 |
| [test-link.R](testthat/test-link.R#L41)               | url and relative link detection | image links are detected: gif                          | PASS   | 1 | 0.001 |
| [test-link.R](testthat/test-link.R#L47)               | url and relative link detection | invalid urls/links are not detected: http/s            | PASS   | 2 | 0.002 |
| [test-link.R](testthat/test-link.R#L51)               | url and relative link detection | invalid urls/links are not detected: www               | PASS   | 2 | 0.002 |
| [test-link.R](testthat/test-link.R#L55)               | url and relative link detection | invalid urls/links are not detected: no .com           | PASS   | 1 | 0.001 |
| [test-list.R](testthat/test-list.R#L15)               | lists                           | lists: empty                                           | PASS   | 1 | 0.028 |
| [test-list.R](testthat/test-list.R#L28)               | lists                           | lists: highlighted                                     | PASS   | 1 | 0.101 |
| [test-list.R](testthat/test-list.R#L41)               | lists                           | lists: multiline                                       | PASS   | 1 | 0.128 |
| [test-right.R](testthat/test-right.R#L15)             | copy text to the right          | rightr: one word                                       | PASS   | 1 | 0.075 |
| [test-right.R](testthat/test-right.R#L28)             | copy text to the right          | rightr: one word                                       | PASS   | 1 | 0.108 |
| [test-right.R](testthat/test-right.R#L41)             | copy text to the right          | rightr: multiple words                                 | PASS   | 1 | 0.114 |
| [test-right.R](testthat/test-right.R#L59)             | copy text to the right          | rightr: highlighting                                   | PASS   | 1 | 0.099 |
| [test-url.R](testthat/test-url.R#L15)                 | urls                            | urls: empty                                            | PASS   | 1 | 0.062 |
| [test-url.R](testthat/test-url.R#L28)                 | urls                            | urls: no description bad link                          | PASS   | 1 | 0.093 |
| [test-url.R](testthat/test-url.R#L41)                 | urls                            | urls: description bad link                             | PASS   | 1 | 0.088 |
| [test-url.R](testthat/test-url.R#L54)                 | urls                            | urls: no description good link                         | PASS   | 1 | 0.094 |
| [test-url.R](testthat/test-url.R#L67)                 | urls                            | urls: single word description good link                | PASS   | 1 | 0.104 |
| [test-url.R](testthat/test-url.R#L80)                 | urls                            | urls: multiple word description good link              | PASS   | 1 | 0.129 |
| [test-xaringan.R](testthat/test-xaringan.R#L22_L24)   | xaringan                        | urls: empty                                            | PASS   | 1 | 0.069 |
| [test-xaringan.R](testthat/test-xaringan.R#L36_L37)   | xaringan                        | urls: highlighted                                      | PASS   | 1 | 0.107 |
| [test-youtube.R](testthat/test-youtube.R#L15_L17)     | youtube                         | images: empty html                                     | PASS   | 1 | 0.063 |
| [test-youtube.R](testthat/test-youtube.R#L30_L31)     | youtube                         | images: html                                           | PASS   | 1 | 0.095 |
| [test-youtube.R](testthat/test-youtube.R#L45_L46)     | youtube                         | images: html width/height                              | PASS   | 1 | 0.089 |
| [test-youtube.R](testthat/test-youtube.R#L62_L63)     | youtube                         | images: html width/height                              | PASS   | 1 | 0.117 |
