Tests and Coverage
================

-   [Coverage](#coverage)
-   [Unit Tests](#unit-tests)

Coverage
--------

Coverage summary is created using the [covr](https://github.com/r-lib/covr) package.

<table class="table table-striped" style="margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
Object
</th>
<th style="text-align:center;">
Coverage (%)
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
remedy
</td>
<td style="text-align:center;">
0.53
</td>
</tr>
<tr>
<td style="text-align:left;">
R/alignr.R
</td>
<td style="text-align:center;">
0.00
</td>
</tr>
<tr>
<td style="text-align:left;">
R/backtickr.R
</td>
<td style="text-align:center;">
0.00
</td>
</tr>
<tr>
<td style="text-align:left;">
R/chunkr.R
</td>
<td style="text-align:center;">
0.00
</td>
</tr>
<tr>
<td style="text-align:left;">
R/chunksplitr.R
</td>
<td style="text-align:center;">
0.00
</td>
</tr>
<tr>
<td style="text-align:left;">
R/defaults.R
</td>
<td style="text-align:center;">
0.00
</td>
</tr>
<tr>
<td style="text-align:left;">
R/emphasize.R
</td>
<td style="text-align:center;">
0.00
</td>
</tr>
<tr>
<td style="text-align:left;">
R/headr.R
</td>
<td style="text-align:center;">
0.00
</td>
</tr>
<tr>
<td style="text-align:left;">
R/hotkeys.R
</td>
<td style="text-align:center;">
0.00
</td>
</tr>
<tr>
<td style="text-align:left;">
R/htmlcommentr.R
</td>
<td style="text-align:center;">
0.00
</td>
</tr>
<tr>
<td style="text-align:left;">
R/imager.R
</td>
<td style="text-align:center;">
0.00
</td>
</tr>
<tr>
<td style="text-align:left;">
R/latexr.R
</td>
<td style="text-align:center;">
0.00
</td>
</tr>
<tr>
<td style="text-align:left;">
R/listr.R
</td>
<td style="text-align:center;">
0.00
</td>
</tr>
<tr>
<td style="text-align:left;">
R/mover.R
</td>
<td style="text-align:center;">
0.00
</td>
</tr>
<tr>
<td style="text-align:left;">
R/tabler.R
</td>
<td style="text-align:center;">
0.00
</td>
</tr>
<tr>
<td style="text-align:left;">
R/urlr.R
</td>
<td style="text-align:center;">
0.00
</td>
</tr>
<tr>
<td style="text-align:left;">
R/xaringan.R
</td>
<td style="text-align:center;">
0.00
</td>
</tr>
<tr>
<td style="text-align:left;">
R/youtuber.R
</td>
<td style="text-align:center;">
0.00
</td>
</tr>
<tr>
<td style="text-align:left;">
R/utils.R
</td>
<td style="text-align:center;">
100.00
</td>
</tr>
</tbody>
</table>
<br>

Unit Tests
----------

Unit Test summary is created using the [testthat](https://github.com/r-lib/testthat) package.

<table class="table table-striped" style="width: auto !important; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
file
</th>
<th style="text-align:right;">
n
</th>
<th style="text-align:right;">
time
</th>
<th style="text-align:right;">
error
</th>
<th style="text-align:right;">
failed
</th>
<th style="text-align:right;">
skipped
</th>
<th style="text-align:right;">
warning
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
test-url.R
</td>
<td style="text-align:right;">
16
</td>
<td style="text-align:right;">
0.023
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
</tr>
</tbody>
</table>
<table class="table table-striped" style="width: auto !important; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
test
</th>
<th style="text-align:left;">
context
</th>
<th style="text-align:left;">
status
</th>
<th style="text-align:right;">
n
</th>
<th style="text-align:right;">
time
</th>
</tr>
</thead>
<tbody>
<tr grouplength="4">
<td colspan="5" style="border-bottom: 1px solid;">
<strong>test-url.R</strong>
</td>
</tr>
<tr>
<td style="text-align:left; padding-left: 2em;" indentlevel="1">
urls are detected
</td>
<td style="text-align:left;">
url and relative link detection
</td>
<td style="text-align:left;">
PASS
</td>
<td style="text-align:right;">
3
</td>
<td style="text-align:right;">
0.005
</td>
</tr>
<tr>
<td style="text-align:left; padding-left: 2em;" indentlevel="1">
(potential) relative links are detected
</td>
<td style="text-align:left;">
url and relative link detection
</td>
<td style="text-align:left;">
PASS
</td>
<td style="text-align:right;">
4
</td>
<td style="text-align:right;">
0.005
</td>
</tr>
<tr>
<td style="text-align:left; padding-left: 2em;" indentlevel="1">
image links are detected
</td>
<td style="text-align:left;">
url and relative link detection
</td>
<td style="text-align:left;">
PASS
</td>
<td style="text-align:right;">
4
</td>
<td style="text-align:right;">
0.005
</td>
</tr>
<tr>
<td style="text-align:left; padding-left: 2em;" indentlevel="1">
invalid urls/links are not detected
</td>
<td style="text-align:left;">
url and relative link detection
</td>
<td style="text-align:left;">
PASS
</td>
<td style="text-align:right;">
5
</td>
<td style="text-align:right;">
0.008
</td>
</tr>
</tbody>
</table>
