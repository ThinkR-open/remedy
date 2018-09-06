Tests and Coverage
================
06 September, 2018 18:24:49

This output is created by
[covrpage](https://github.com/yonicd/covrpage).

## Coverage

Coverage summary is created using the
[covr](https://github.com/r-lib/covr) package.

| Object                                     | Coverage (%) |
| :----------------------------------------- | :----------: |
| remedy                                     |     0.62     |
| [R/align.R](../R/align.R)                  |     0.00     |
| [R/backtickr.R](../R/backtickr.R)          |     0.00     |
| [R/blockquoter.R](../R/blockquoter.R)      |     0.00     |
| [R/chunkr.R](../R/chunkr.R)                |     0.00     |
| [R/chunksplitr.R](../R/chunksplitr.R)      |     0.00     |
| [R/emphasize.R](../R/emphasize.R)          |     0.00     |
| [R/footnoter.R](../R/footnoter.R)          |     0.00     |
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
| [R/utils.R](../R/utils.R)                  |    25.00     |

<br>

## Unit Tests

Unit Test summary is created using the
[testthat](https://github.com/r-lib/testthat)
package.

|                          | file                                                         |  n |  time | error | failed | skipped | warning |
| ------------------------ | :----------------------------------------------------------- | -: | ----: | ----: | -----: | ------: | ------: |
| test-backtick.R          | [test-backtick.R](testthat/test-backtick.R)                  |  4 | 1.228 |     0 |      0 |       0 |       0 |
| test-blockquote.R        | [test-blockquote.R](testthat/test-blockquote.R)              |  4 | 1.191 |     0 |      0 |       0 |       0 |
| test-chunk.R             | [test-chunk.R](testthat/test-chunk.R)                        |  4 | 1.284 |     0 |      0 |       0 |       0 |
| test-emphasizers.R       | [test-emphasizers.R](testthat/test-emphasizers.R)            |  6 | 1.569 |     0 |      0 |       0 |       0 |
| test-enclose.R           | [test-enclose.R](testthat/test-enclose.R)                    |  4 | 1.188 |     0 |      0 |       0 |       0 |
| test-footnote.R          | [test-footnote.R](testthat/test-footnote.R)                  |  4 | 1.177 |     0 |      0 |       0 |       0 |
| test-headr.R             | [test-headr.R](testthat/test-headr.R)                        |  7 | 1.498 |     0 |      0 |       0 |       0 |
| test-image.R             | [test-image.R](testthat/test-image.R)                        |  6 | 1.835 |     0 |      0 |       0 |       0 |
| test-latex.R             | [test-latex.R](testthat/test-latex.R)                        |  4 | 1.187 |     0 |      0 |       0 |       0 |
| test-link.R              | [test-link.R](testthat/test-link.R)                          | 16 | 0.019 |     0 |      0 |       0 |       0 |
| test-list.R              | [test-list.R](testthat/test-list.R)                          | 10 | 3.227 |     0 |      0 |       0 |       0 |
| test-multiline\_prefix.R | [test-multiline\_prefix.R](testthat/test-multiline_prefix.R) |  7 | 2.012 |     0 |      0 |       0 |       0 |
| test-prefix.R            | [test-prefix.R](testthat/test-prefix.R)                      |  5 | 1.573 |     0 |      0 |       0 |       0 |
| test-right.R             | [test-right.R](testthat/test-right.R)                        |  4 | 1.335 |     0 |      0 |       0 |       0 |
| test-url.R               | [test-url.R](testthat/test-url.R)                            |  6 | 1.870 |     0 |      0 |       0 |       0 |
| test-xaringan.R          | [test-xaringan.R](testthat/test-xaringan.R)                  |  2 | 0.535 |     0 |      0 |       0 |       0 |
| test-youtube.R           | [test-youtube.R](testthat/test-youtube.R)                    |  4 | 1.199 |     0 |      0 |       0 |       0 |

<details closed>

<summary> Show Detailed Test Results
</summary>

| file                                                              | context                         | test                                                       | status | n |  time |
| :---------------------------------------------------------------- | :------------------------------ | :--------------------------------------------------------- | :----- | -: | ----: |
| [test-backtick.R](testthat/test-backtick.R#L17)                   | backticks                       | backticks: empty                                           | PASS   | 1 | 0.226 |
| [test-backtick.R](testthat/test-backtick.R#L30)                   | backticks                       | backticks: highlighted                                     | PASS   | 1 | 0.326 |
| [test-backtick.R](testthat/test-backtick.R#L43)                   | backticks                       | backticks: multiline                                       | PASS   | 1 | 0.326 |
| [test-backtick.R](testthat/test-backtick.R#L56)                   | backticks                       | backticks: multiselect                                     | PASS   | 1 | 0.350 |
| [test-blockquote.R](testthat/test-blockquote.R#L14)               | blockquoter                     | blockquoter: empty                                         | PASS   | 1 | 0.201 |
| [test-blockquote.R](testthat/test-blockquote.R#L26)               | blockquoter                     | blockquoter: highlighted                                   | PASS   | 1 | 0.329 |
| [test-blockquote.R](testthat/test-blockquote.R#L38)               | blockquoter                     | blockquoter: multiline                                     | PASS   | 1 | 0.330 |
| [test-blockquote.R](testthat/test-blockquote.R#L50)               | blockquoter                     | blockquoter: multiparagraph                                | PASS   | 1 | 0.331 |
| [test-chunk.R](testthat/test-chunk.R#L28_L30)                     | chunks                          | splitting: splitting one chunk into two                    | PASS   | 1 | 0.322 |
| [test-chunk.R](testthat/test-chunk.R#L51_L53)                     | chunks                          | params: splitting one chunk into two carrying chunk params | PASS   | 1 | 0.327 |
| [test-chunk.R](testthat/test-chunk.R#L72_L74)                     | chunks                          | creating: full document                                    | PASS   | 1 | 0.308 |
| [test-chunk.R](testthat/test-chunk.R#L93_L95)                     | chunks                          | wrapping: full document                                    | PASS   | 1 | 0.327 |
| [test-emphasizers.R](testthat/test-emphasizers.R#L16)             | emphasizers                     | italics: empty                                             | PASS   | 1 | 0.192 |
| [test-emphasizers.R](testthat/test-emphasizers.R#L29)             | emphasizers                     | italics: highlighted                                       | PASS   | 1 | 0.339 |
| [test-emphasizers.R](testthat/test-emphasizers.R#L47)             | emphasizers                     | bold: empty                                                | PASS   | 1 | 0.189 |
| [test-emphasizers.R](testthat/test-emphasizers.R#L60)             | emphasizers                     | bold: highlighted                                          | PASS   | 1 | 0.334 |
| [test-emphasizers.R](testthat/test-emphasizers.R#L78)             | emphasizers                     | strike: empty                                              | PASS   | 1 | 0.180 |
| [test-emphasizers.R](testthat/test-emphasizers.R#L91)             | emphasizers                     | strike: highlighted                                        | PASS   | 1 | 0.335 |
| [test-enclose.R](testthat/test-enclose.R#L22)                     | enclose                         | enclose: empty                                             | PASS   | 1 | 0.190 |
| [test-enclose.R](testthat/test-enclose.R#L39)                     | enclose                         | enclose: highlighted                                       | PASS   | 1 | 0.331 |
| [test-enclose.R](testthat/test-enclose.R#L55)                     | enclose                         | enclose: multiple lines                                    | PASS   | 1 | 0.332 |
| [test-enclose.R](testthat/test-enclose.R#L69)                     | enclose                         | enclose: multiple selections                               | PASS   | 1 | 0.335 |
| [test-footnote.R](testthat/test-footnote.R#L16)                   | footnotes                       | footnotes: empty                                           | PASS   | 1 | 0.183 |
| [test-footnote.R](testthat/test-footnote.R#L29)                   | footnotes                       | footnotes: highlighted                                     | PASS   | 1 | 0.327 |
| [test-footnote.R](testthat/test-footnote.R#L42)                   | footnotes                       | footnotes: multiline                                       | PASS   | 1 | 0.332 |
| [test-footnote.R](testthat/test-footnote.R#L55)                   | footnotes                       | footnotes: multiselect                                     | PASS   | 1 | 0.335 |
| [test-headr.R](testthat/test-headr.R#L12)                         | headr                           | add headers to source editor: \#                           | PASS   | 1 | 0.191 |
| [test-headr.R](testthat/test-headr.R#L19)                         | headr                           | add headers to source editor: \#\#                         | PASS   | 1 | 0.190 |
| [test-headr.R](testthat/test-headr.R#L26)                         | headr                           | add headers to source editor: \#\#\#                       | PASS   | 1 | 0.184 |
| [test-headr.R](testthat/test-headr.R#L33)                         | headr                           | add headers to source editor: \#\#\#\#                     | PASS   | 1 | 0.194 |
| [test-headr.R](testthat/test-headr.R#L40)                         | headr                           | add headers to source editor: \#\#\#\#\#                   | PASS   | 1 | 0.212 |
| [test-headr.R](testthat/test-headr.R#L47)                         | headr                           | add headers to source editor: \#\#\#\#\#\#                 | PASS   | 1 | 0.192 |
| [test-headr.R](testthat/test-headr.R#L55)                         | headr                           | add headers to source editor: append                       | PASS   | 1 | 0.335 |
| [test-image.R](testthat/test-image.R#L16)                         | images                          | images: empty                                              | PASS   | 1 | 0.199 |
| [test-image.R](testthat/test-image.R#L29)                         | images                          | images: no description bad link                            | PASS   | 1 | 0.336 |
| [test-image.R](testthat/test-image.R#L42)                         | images                          | images: description bad link                               | PASS   | 1 | 0.348 |
| [test-image.R](testthat/test-image.R#L55)                         | images                          | images: no description good link                           | PASS   | 1 | 0.315 |
| [test-image.R](testthat/test-image.R#L68)                         | images                          | images: single word description good link                  | PASS   | 1 | 0.320 |
| [test-image.R](testthat/test-image.R#L81)                         | images                          | images: multiple word description good link                | PASS   | 1 | 0.317 |
| [test-latex.R](testthat/test-latex.R#L16)                         | latex                           | latex: empty                                               | PASS   | 1 | 0.185 |
| [test-latex.R](testthat/test-latex.R#L29)                         | latex                           | latex: highlighted                                         | PASS   | 1 | 0.326 |
| [test-latex.R](testthat/test-latex.R#L42)                         | latex                           | latex: multiline                                           | PASS   | 1 | 0.332 |
| [test-latex.R](testthat/test-latex.R#L55)                         | latex                           | latex: multiselect                                         | PASS   | 1 | 0.344 |
| [test-link.R](testthat/test-link.R#L5)                            | url and relative link detection | urls are detected: www                                     | PASS   | 1 | 0.001 |
| [test-link.R](testthat/test-link.R#L8)                            | url and relative link detection | urls are detected: http                                    | PASS   | 1 | 0.001 |
| [test-link.R](testthat/test-link.R#L11)                           | url and relative link detection | urls are detected: https                                   | PASS   | 1 | 0.001 |
| [test-link.R](testthat/test-link.R#L17)                           | url and relative link detection | (potential) relative links are detected: md                | PASS   | 1 | 0.002 |
| [test-link.R](testthat/test-link.R#L20)                           | url and relative link detection | (potential) relative links are detected: Rmd               | PASS   | 1 | 0.001 |
| [test-link.R](testthat/test-link.R#L23)                           | url and relative link detection | (potential) relative links are detected: subdir file       | PASS   | 1 | 0.001 |
| [test-link.R](testthat/test-link.R#L26)                           | url and relative link detection | (potential) relative links are detected: subdir folder     | PASS   | 1 | 0.001 |
| [test-link.R](testthat/test-link.R#L32)                           | url and relative link detection | image links are detected: png                              | PASS   | 1 | 0.002 |
| [test-link.R](testthat/test-link.R#L35)                           | url and relative link detection | image links are detected: jpg                              | PASS   | 1 | 0.001 |
| [test-link.R](testthat/test-link.R#L38)                           | url and relative link detection | image links are detected: jpeg                             | PASS   | 1 | 0.001 |
| [test-link.R](testthat/test-link.R#L41)                           | url and relative link detection | image links are detected: gif                              | PASS   | 1 | 0.001 |
| [test-link.R](testthat/test-link.R#L47)                           | url and relative link detection | invalid urls/links are not detected: http/s                | PASS   | 2 | 0.002 |
| [test-link.R](testthat/test-link.R#L51)                           | url and relative link detection | invalid urls/links are not detected: www                   | PASS   | 2 | 0.002 |
| [test-link.R](testthat/test-link.R#L55)                           | url and relative link detection | invalid urls/links are not detected: no .com               | PASS   | 1 | 0.002 |
| [test-list.R](testthat/test-list.R#L14)                           | lists                           | unordered lists: empty                                     | PASS   | 1 | 0.129 |
| [test-list.R](testthat/test-list.R#L26)                           | lists                           | unordered lists: highlighted                               | PASS   | 1 | 0.333 |
| [test-list.R](testthat/test-list.R#L38)                           | lists                           | unordered lists: multiple lines                            | PASS   | 1 | 0.327 |
| [test-list.R](testthat/test-list.R#L50)                           | lists                           | unordered lists: multiple paragraphs                       | PASS   | 1 | 0.474 |
| [test-list.R](testthat/test-list.R#L62)                           | lists                           | unordered lists: nested list                               | PASS   | 1 | 0.358 |
| [test-list.R](testthat/test-list.R#L77)                           | lists                           | ordered lists: empty                                       | PASS   | 1 | 0.226 |
| [test-list.R](testthat/test-list.R#L89)                           | lists                           | ordered lists: highlighted                                 | PASS   | 1 | 0.353 |
| [test-list.R](testthat/test-list.R#L101)                          | lists                           | ordered lists: multiple lines                              | PASS   | 1 | 0.343 |
| [test-list.R](testthat/test-list.R#L113)                          | lists                           | ordered lists: multiple paragraphs                         | PASS   | 1 | 0.351 |
| [test-list.R](testthat/test-list.R#L125)                          | lists                           | ordered lists: nested list                                 | PASS   | 1 | 0.333 |
| [test-multiline\_prefix.R](testthat/test-multiline_prefix.R#L21)  | multiline prefix                | prefix: empty                                              | PASS   | 1 | 0.129 |
| [test-multiline\_prefix.R](testthat/test-multiline_prefix.R#L33)  | multiline prefix                | prefix: empty as\_is                                       | PASS   | 1 | 0.193 |
| [test-multiline\_prefix.R](testthat/test-multiline_prefix.R#L49)  | multiline prefix                | prefix: highlighted                                        | PASS   | 1 | 0.344 |
| [test-multiline\_prefix.R](testthat/test-multiline_prefix.R#L65)  | multiline prefix                | prefix: multiple lines                                     | PASS   | 1 | 0.345 |
| [test-multiline\_prefix.R](testthat/test-multiline_prefix.R#L81)  | multiline prefix                | prefix: multiple paragraphs                                | PASS   | 1 | 0.326 |
| [test-multiline\_prefix.R](testthat/test-multiline_prefix.R#L95)  | multiline prefix                | prefix: multiple paragraphs as\_is                         | PASS   | 1 | 0.330 |
| [test-multiline\_prefix.R](testthat/test-multiline_prefix.R#L111) | multiline prefix                | prefix: nested list                                        | PASS   | 1 | 0.345 |
| [test-prefix.R](testthat/test-prefix.R#L20)                       | prefix                          | prefix: empty                                              | PASS   | 1 | 0.186 |
| [test-prefix.R](testthat/test-prefix.R#L36)                       | prefix                          | prefix: line                                               | PASS   | 1 | 0.363 |
| [test-prefix.R](testthat/test-prefix.R#L50)                       | prefix                          | prefix: highlighted                                        | PASS   | 1 | 0.339 |
| [test-prefix.R](testthat/test-prefix.R#L66)                       | prefix                          | prefix: multiple lines                                     | PASS   | 1 | 0.337 |
| [test-prefix.R](testthat/test-prefix.R#L80)                       | prefix                          | prefix: multiple selections                                | PASS   | 1 | 0.348 |
| [test-right.R](testthat/test-right.R#L16)                         | copy text to the right          | rightr: one word                                           | PASS   | 1 | 0.309 |
| [test-right.R](testthat/test-right.R#L29)                         | copy text to the right          | rightr: one word                                           | PASS   | 1 | 0.329 |
| [test-right.R](testthat/test-right.R#L42)                         | copy text to the right          | rightr: multiple words                                     | PASS   | 1 | 0.349 |
| [test-right.R](testthat/test-right.R#L60)                         | copy text to the right          | rightr: highlighting                                       | PASS   | 1 | 0.348 |
| [test-url.R](testthat/test-url.R#L16)                             | urls                            | urls: empty                                                | PASS   | 1 | 0.209 |
| [test-url.R](testthat/test-url.R#L29)                             | urls                            | urls: no description bad link                              | PASS   | 1 | 0.326 |
| [test-url.R](testthat/test-url.R#L42)                             | urls                            | urls: description bad link                                 | PASS   | 1 | 0.324 |
| [test-url.R](testthat/test-url.R#L55)                             | urls                            | urls: no description good link                             | PASS   | 1 | 0.346 |
| [test-url.R](testthat/test-url.R#L68)                             | urls                            | urls: single word description good link                    | PASS   | 1 | 0.332 |
| [test-url.R](testthat/test-url.R#L81)                             | urls                            | urls: multiple word description good link                  | PASS   | 1 | 0.333 |
| [test-xaringan.R](testthat/test-xaringan.R#L24_L26)               | xaringan                        | urls: empty                                                | PASS   | 1 | 0.194 |
| [test-xaringan.R](testthat/test-xaringan.R#L38_L39)               | xaringan                        | urls: highlighted                                          | PASS   | 1 | 0.341 |
| [test-youtube.R](testthat/test-youtube.R#L16_L18)                 | youtube                         | images: empty html                                         | PASS   | 1 | 0.195 |
| [test-youtube.R](testthat/test-youtube.R#L31_L32)                 | youtube                         | images: html                                               | PASS   | 1 | 0.333 |
| [test-youtube.R](testthat/test-youtube.R#L46_L47)                 | youtube                         | images: html width/height                                  | PASS   | 1 | 0.335 |
| [test-youtube.R](testthat/test-youtube.R#L63_L64)                 | youtube                         | images: html width/height                                  | PASS   | 1 | 0.336 |

</details>

<details>

<summary> Session Info </summary>

| Field    | Value                               |
| :------- | :---------------------------------- |
| Version  | R version 3.5.1 (2018-07-02)        |
| Platform | x86\_64-apple-darwin15.6.0 (64-bit) |
| Running  | macOS High Sierra 10.13.5           |
| Language | en\_US                              |
| Timezone | America/New\_York                   |

| Package  | Version |
| :------- | :------ |
| testthat | 2.0.0   |
| covr     | 3.1.0   |
| covrpage | 0.0.55  |

</details>

<!--- Final Status : pass --->
