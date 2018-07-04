Tests and Coverage
================
03 July, 2018 22:15:45

This output is created by
[covrpage](https://github.com/yonicd/covrpage).

## Coverage

Coverage summary is created using the
[covr](https://github.com/r-lib/covr) package.

| Object                                  | Coverage (%) |
| :-------------------------------------- | :----------: |
| remedy                                  |     0.69     |
| [R/align.R](../R/align.R)               |     0.00     |
| [R/backtickr.R](../R/backtickr.R)       |     0.00     |
| [R/blockquoter.R](../R/blockquoter.R)   |     0.00     |
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

|                          | file                                                         |  n |  time | error | failed | skipped | warning |
| ------------------------ | :----------------------------------------------------------- | -: | ----: | ----: | -----: | ------: | ------: |
| test-backtick.R          | [test-backtick.R](testthat/test-backtick.R)                  |  4 | 1.062 |     0 |      0 |       0 |       0 |
| test-blockquote.R        | [test-blockquote.R](testthat/test-blockquote.R)              |  4 | 1.064 |     0 |      0 |       0 |       0 |
| test-chunk.R             | [test-chunk.R](testthat/test-chunk.R)                        |  3 | 0.865 |     0 |      0 |       0 |       0 |
| test-emphasizers.R       | [test-emphasizers.R](testthat/test-emphasizers.R)            |  6 | 1.381 |     0 |      0 |       0 |       0 |
| test-enclose.R           | [test-enclose.R](testthat/test-enclose.R)                    |  4 | 1.071 |     0 |      0 |       0 |       0 |
| test-footnote.R          | [test-footnote.R](testthat/test-footnote.R)                  |  4 | 1.076 |     0 |      0 |       0 |       0 |
| test-headr.R             | [test-headr.R](testthat/test-headr.R)                        |  7 | 1.295 |     0 |      0 |       0 |       0 |
| test-image.R             | [test-image.R](testthat/test-image.R)                        |  6 | 1.665 |     0 |      0 |       0 |       0 |
| test-latex.R             | [test-latex.R](testthat/test-latex.R)                        |  4 | 1.066 |     0 |      0 |       0 |       0 |
| test-link.R              | [test-link.R](testthat/test-link.R)                          | 16 | 0.024 |     0 |      0 |       0 |       0 |
| test-list.R              | [test-list.R](testthat/test-list.R)                          | 10 | 2.655 |     0 |      0 |       0 |       0 |
| test-multiline\_prefix.R | [test-multiline\_prefix.R](testthat/test-multiline_prefix.R) |  7 | 1.794 |     0 |      0 |       0 |       0 |
| test-prefix.R            | [test-prefix.R](testthat/test-prefix.R)                      |  5 | 1.380 |     0 |      0 |       0 |       0 |
| test-right.R             | [test-right.R](testthat/test-right.R)                        |  4 | 1.170 |     0 |      0 |       0 |       0 |
| test-url.R               | [test-url.R](testthat/test-url.R)                            |  6 | 1.657 |     0 |      0 |       0 |       0 |
| test-xaringan.R          | [test-xaringan.R](testthat/test-xaringan.R)                  |  2 | 0.483 |     0 |      0 |       0 |       0 |
| test-youtube.R           | [test-youtube.R](testthat/test-youtube.R)                    |  4 | 1.112 |     0 |      0 |       0 |       0 |

| file                                                              | context                         | test                                                   | status | n |  time |
| :---------------------------------------------------------------- | :------------------------------ | :----------------------------------------------------- | :----- | -: | ----: |
| [test-backtick.R](testthat/test-backtick.R#L15)                   | backticks                       | backticks: empty                                       | PASS   | 1 | 0.167 |
| [test-backtick.R](testthat/test-backtick.R#L28)                   | backticks                       | backticks: highlighted                                 | PASS   | 1 | 0.292 |
| [test-backtick.R](testthat/test-backtick.R#L41)                   | backticks                       | backticks: multiline                                   | PASS   | 1 | 0.292 |
| [test-backtick.R](testthat/test-backtick.R#L54)                   | backticks                       | backticks: multiselect                                 | PASS   | 1 | 0.311 |
| [test-blockquote.R](testthat/test-blockquote.R#L13)               | blockquoter                     | blockquoter: empty                                     | PASS   | 1 | 0.165 |
| [test-blockquote.R](testthat/test-blockquote.R#L25)               | blockquoter                     | blockquoter: highlighted                               | PASS   | 1 | 0.298 |
| [test-blockquote.R](testthat/test-blockquote.R#L37)               | blockquoter                     | blockquoter: multiline                                 | PASS   | 1 | 0.300 |
| [test-blockquote.R](testthat/test-blockquote.R#L49)               | blockquoter                     | blockquoter: multiparagraph                            | PASS   | 1 | 0.301 |
| [test-chunk.R](testthat/test-chunk.R#L27_L29)                     | chunks                          | splitting: splitting one chunk into two                | PASS   | 1 | 0.301 |
| [test-chunk.R](testthat/test-chunk.R#L47_L49)                     | chunks                          | creating: full document                                | PASS   | 1 | 0.268 |
| [test-chunk.R](testthat/test-chunk.R#L67_L69)                     | chunks                          | wrapping: full document                                | PASS   | 1 | 0.296 |
| [test-emphasizers.R](testthat/test-emphasizers.R#L15)             | emphasizers                     | italics: empty                                         | PASS   | 1 | 0.159 |
| [test-emphasizers.R](testthat/test-emphasizers.R#L28)             | emphasizers                     | italics: highlighted                                   | PASS   | 1 | 0.301 |
| [test-emphasizers.R](testthat/test-emphasizers.R#L45)             | emphasizers                     | bold: empty                                            | PASS   | 1 | 0.159 |
| [test-emphasizers.R](testthat/test-emphasizers.R#L58)             | emphasizers                     | bold: highlighted                                      | PASS   | 1 | 0.297 |
| [test-emphasizers.R](testthat/test-emphasizers.R#L75)             | emphasizers                     | strike: empty                                          | PASS   | 1 | 0.170 |
| [test-emphasizers.R](testthat/test-emphasizers.R#L88)             | emphasizers                     | strike: highlighted                                    | PASS   | 1 | 0.295 |
| [test-enclose.R](testthat/test-enclose.R#L21)                     | enclose                         | enclose: empty                                         | PASS   | 1 | 0.165 |
| [test-enclose.R](testthat/test-enclose.R#L38)                     | enclose                         | enclose: highlighted                                   | PASS   | 1 | 0.303 |
| [test-enclose.R](testthat/test-enclose.R#L54)                     | enclose                         | enclose: multiple lines                                | PASS   | 1 | 0.300 |
| [test-enclose.R](testthat/test-enclose.R#L68)                     | enclose                         | enclose: multiple selections                           | PASS   | 1 | 0.303 |
| [test-footnote.R](testthat/test-footnote.R#L15)                   | footnotes                       | footnotes: empty                                       | PASS   | 1 | 0.163 |
| [test-footnote.R](testthat/test-footnote.R#L28)                   | footnotes                       | footnotes: highlighted                                 | PASS   | 1 | 0.300 |
| [test-footnote.R](testthat/test-footnote.R#L41)                   | footnotes                       | footnotes: multiline                                   | PASS   | 1 | 0.299 |
| [test-footnote.R](testthat/test-footnote.R#L54)                   | footnotes                       | footnotes: multiselect                                 | PASS   | 1 | 0.314 |
| [test-headr.R](testthat/test-headr.R#L10)                         | headr                           | add headers to source editor: \#                       | PASS   | 1 | 0.166 |
| [test-headr.R](testthat/test-headr.R#L17)                         | headr                           | add headers to source editor: \#\#                     | PASS   | 1 | 0.168 |
| [test-headr.R](testthat/test-headr.R#L24)                         | headr                           | add headers to source editor: \#\#\#                   | PASS   | 1 | 0.165 |
| [test-headr.R](testthat/test-headr.R#L31)                         | headr                           | add headers to source editor: \#\#\#\#                 | PASS   | 1 | 0.170 |
| [test-headr.R](testthat/test-headr.R#L38)                         | headr                           | add headers to source editor: \#\#\#\#\#               | PASS   | 1 | 0.160 |
| [test-headr.R](testthat/test-headr.R#L45)                         | headr                           | add headers to source editor: \#\#\#\#\#\#             | PASS   | 1 | 0.167 |
| [test-headr.R](testthat/test-headr.R#L53)                         | headr                           | add headers to source editor: append                   | PASS   | 1 | 0.299 |
| [test-image.R](testthat/test-image.R#L15)                         | images                          | images: empty                                          | PASS   | 1 | 0.166 |
| [test-image.R](testthat/test-image.R#L28)                         | images                          | images: no description bad link                        | PASS   | 1 | 0.301 |
| [test-image.R](testthat/test-image.R#L41)                         | images                          | images: description bad link                           | PASS   | 1 | 0.300 |
| [test-image.R](testthat/test-image.R#L54)                         | images                          | images: no description good link                       | PASS   | 1 | 0.299 |
| [test-image.R](testthat/test-image.R#L67)                         | images                          | images: single word description good link              | PASS   | 1 | 0.300 |
| [test-image.R](testthat/test-image.R#L80)                         | images                          | images: multiple word description good link            | PASS   | 1 | 0.299 |
| [test-latex.R](testthat/test-latex.R#L15)                         | latex                           | latex: empty                                           | PASS   | 1 | 0.157 |
| [test-latex.R](testthat/test-latex.R#L28)                         | latex                           | latex: highlighted                                     | PASS   | 1 | 0.298 |
| [test-latex.R](testthat/test-latex.R#L41)                         | latex                           | latex: multiline                                       | PASS   | 1 | 0.297 |
| [test-latex.R](testthat/test-latex.R#L54)                         | latex                           | latex: multiselect                                     | PASS   | 1 | 0.314 |
| [test-link.R](testthat/test-link.R#L5)                            | url and relative link detection | urls are detected: www                                 | PASS   | 1 | 0.002 |
| [test-link.R](testthat/test-link.R#L8)                            | url and relative link detection | urls are detected: http                                | PASS   | 1 | 0.002 |
| [test-link.R](testthat/test-link.R#L11)                           | url and relative link detection | urls are detected: https                               | PASS   | 1 | 0.002 |
| [test-link.R](testthat/test-link.R#L17)                           | url and relative link detection | (potential) relative links are detected: md            | PASS   | 1 | 0.002 |
| [test-link.R](testthat/test-link.R#L20)                           | url and relative link detection | (potential) relative links are detected: Rmd           | PASS   | 1 | 0.001 |
| [test-link.R](testthat/test-link.R#L23)                           | url and relative link detection | (potential) relative links are detected: subdir file   | PASS   | 1 | 0.002 |
| [test-link.R](testthat/test-link.R#L26)                           | url and relative link detection | (potential) relative links are detected: subdir folder | PASS   | 1 | 0.001 |
| [test-link.R](testthat/test-link.R#L32)                           | url and relative link detection | image links are detected: png                          | PASS   | 1 | 0.001 |
| [test-link.R](testthat/test-link.R#L35)                           | url and relative link detection | image links are detected: jpg                          | PASS   | 1 | 0.002 |
| [test-link.R](testthat/test-link.R#L38)                           | url and relative link detection | image links are detected: jpeg                         | PASS   | 1 | 0.001 |
| [test-link.R](testthat/test-link.R#L41)                           | url and relative link detection | image links are detected: gif                          | PASS   | 1 | 0.002 |
| [test-link.R](testthat/test-link.R#L47)                           | url and relative link detection | invalid urls/links are not detected: http/s            | PASS   | 2 | 0.002 |
| [test-link.R](testthat/test-link.R#L51)                           | url and relative link detection | invalid urls/links are not detected: www               | PASS   | 2 | 0.003 |
| [test-link.R](testthat/test-link.R#L55)                           | url and relative link detection | invalid urls/links are not detected: no .com           | PASS   | 1 | 0.001 |
| [test-list.R](testthat/test-list.R#L13)                           | lists                           | unordered lists: empty                                 | PASS   | 1 | 0.128 |
| [test-list.R](testthat/test-list.R#L25)                           | lists                           | unordered lists: highlighted                           | PASS   | 1 | 0.303 |
| [test-list.R](testthat/test-list.R#L37)                           | lists                           | unordered lists: multiple lines                        | PASS   | 1 | 0.299 |
| [test-list.R](testthat/test-list.R#L49)                           | lists                           | unordered lists: multiple paragraphs                   | PASS   | 1 | 0.297 |
| [test-list.R](testthat/test-list.R#L61)                           | lists                           | unordered lists: nested list                           | PASS   | 1 | 0.296 |
| [test-list.R](testthat/test-list.R#L75)                           | lists                           | ordered lists: empty                                   | PASS   | 1 | 0.128 |
| [test-list.R](testthat/test-list.R#L87)                           | lists                           | ordered lists: highlighted                             | PASS   | 1 | 0.304 |
| [test-list.R](testthat/test-list.R#L99)                           | lists                           | ordered lists: multiple lines                          | PASS   | 1 | 0.302 |
| [test-list.R](testthat/test-list.R#L111)                          | lists                           | ordered lists: multiple paragraphs                     | PASS   | 1 | 0.297 |
| [test-list.R](testthat/test-list.R#L123)                          | lists                           | ordered lists: nested list                             | PASS   | 1 | 0.301 |
| [test-multiline\_prefix.R](testthat/test-multiline_prefix.R#L20)  | multiline prefix                | prefix: empty                                          | PASS   | 1 | 0.130 |
| [test-multiline\_prefix.R](testthat/test-multiline_prefix.R#L32)  | multiline prefix                | prefix: empty as\_is                                   | PASS   | 1 | 0.174 |
| [test-multiline\_prefix.R](testthat/test-multiline_prefix.R#L48)  | multiline prefix                | prefix: highlighted                                    | PASS   | 1 | 0.294 |
| [test-multiline\_prefix.R](testthat/test-multiline_prefix.R#L64)  | multiline prefix                | prefix: multiple lines                                 | PASS   | 1 | 0.298 |
| [test-multiline\_prefix.R](testthat/test-multiline_prefix.R#L80)  | multiline prefix                | prefix: multiple paragraphs                            | PASS   | 1 | 0.299 |
| [test-multiline\_prefix.R](testthat/test-multiline_prefix.R#L94)  | multiline prefix                | prefix: multiple paragraphs as\_is                     | PASS   | 1 | 0.300 |
| [test-multiline\_prefix.R](testthat/test-multiline_prefix.R#L110) | multiline prefix                | prefix: nested list                                    | PASS   | 1 | 0.299 |
| [test-prefix.R](testthat/test-prefix.R#L20)                       | prefix                          | prefix: empty                                          | PASS   | 1 | 0.164 |
| [test-prefix.R](testthat/test-prefix.R#L36)                       | prefix                          | prefix: line                                           | PASS   | 1 | 0.291 |
| [test-prefix.R](testthat/test-prefix.R#L50)                       | prefix                          | prefix: highlighted                                    | PASS   | 1 | 0.317 |
| [test-prefix.R](testthat/test-prefix.R#L66)                       | prefix                          | prefix: multiple lines                                 | PASS   | 1 | 0.297 |
| [test-prefix.R](testthat/test-prefix.R#L80)                       | prefix                          | prefix: multiple selections                            | PASS   | 1 | 0.311 |
| [test-right.R](testthat/test-right.R#L15)                         | copy text to the right          | rightr: one word                                       | PASS   | 1 | 0.283 |
| [test-right.R](testthat/test-right.R#L28)                         | copy text to the right          | rightr: one word                                       | PASS   | 1 | 0.283 |
| [test-right.R](testthat/test-right.R#L41)                         | copy text to the right          | rightr: multiple words                                 | PASS   | 1 | 0.307 |
| [test-right.R](testthat/test-right.R#L59)                         | copy text to the right          | rightr: highlighting                                   | PASS   | 1 | 0.297 |
| [test-url.R](testthat/test-url.R#L15)                             | urls                            | urls: empty                                            | PASS   | 1 | 0.161 |
| [test-url.R](testthat/test-url.R#L28)                             | urls                            | urls: no description bad link                          | PASS   | 1 | 0.298 |
| [test-url.R](testthat/test-url.R#L41)                             | urls                            | urls: description bad link                             | PASS   | 1 | 0.299 |
| [test-url.R](testthat/test-url.R#L54)                             | urls                            | urls: no description good link                         | PASS   | 1 | 0.299 |
| [test-url.R](testthat/test-url.R#L67)                             | urls                            | urls: single word description good link                | PASS   | 1 | 0.300 |
| [test-url.R](testthat/test-url.R#L80)                             | urls                            | urls: multiple word description good link              | PASS   | 1 | 0.300 |
| [test-xaringan.R](testthat/test-xaringan.R#L22_L24)               | xaringan                        | urls: empty                                            | PASS   | 1 | 0.171 |
| [test-xaringan.R](testthat/test-xaringan.R#L36_L37)               | xaringan                        | urls: highlighted                                      | PASS   | 1 | 0.312 |
| [test-youtube.R](testthat/test-youtube.R#L15_L17)                 | youtube                         | images: empty html                                     | PASS   | 1 | 0.168 |
| [test-youtube.R](testthat/test-youtube.R#L30_L31)                 | youtube                         | images: html                                           | PASS   | 1 | 0.335 |
| [test-youtube.R](testthat/test-youtube.R#L45_L46)                 | youtube                         | images: html width/height                              | PASS   | 1 | 0.303 |
| [test-youtube.R](testthat/test-youtube.R#L62_L63)                 | youtube                         | images: html width/height                              | PASS   | 1 | 0.306 |

<!--- Final Status : pass --->
