
<!-- README.md is generated from README.Rmd. Please edit that file -->

[![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/remedy)](https://cran.r-project.org/package=remedy)
[![](http://cranlogs.r-pkg.org/badges/remedy)](https://cran.r-project.org/package=remedy)[![Travis-CI
Build
Status](https://travis-ci.org/ThinkR-open/remedy.svg?branch=master)](https://travis-ci.org/ThinkR-open/remedy)[![Coverage
status](https://codecov.io/gh/ThinkR-open/remedy/branch/master/graph/badge.svg)](https://codecov.io/github/ThinkR-open/remedy?branch=master)[![Covrpage
Summary](https://img.shields.io/badge/covrpage-Last_Build_2018_12_21-brightgreen.svg)](http://tinyurl.com/y76olv3v)

# remedy <img src="https://github.com/ThinkR-open/remedy/blob/master/reference/figures/thinkr-hex-remedy-small.png?raw=true" align="right"/>

`{remedy}` provides addins to facilitate writing in markdown with
RStudio.

![](reference/figures/remedy_example.gif)

All the functions are meant to be mapped to keyboard shortcuts. A list
of suggested shortcuts is provided towards the end of this README.

> Note that most of the addins/shortcuts below will also work without
> selecting any text.

## Install

``` r
remotes::install_github("ThinkR-open/remedy")
```

Once you’ve installed the package, you don’t need to load it with
`library()`, the addins are installed on your machine as part of the
package install process.

## Using `{remedy}`

Write quicker in markdown with `{remedy}`\!  
Read the full manual in the associated {pkgdown} website:
<https://thinkr-open.github.io/remedy/>

Here’s a list of all available helpers:

![](reference/figures/remedy_example.gif)

You can also have an overview of how the functions behave with the
`remedy_example()` function:

``` r
library(remedy)
remedy_example( c("Never gonna", "give you up", "let you down"), listr )
```

### Align

Align selected blocks to their assignment operator, either `<-`

![](reference/figures/align.gif)

or `=`

![](reference/figures/alignequal.gif)

### Backtick

Enclose the selected word(s) in backticks.

![](reference/figures/backtick.gif)

### Blockquote

Turn selected line(s) to blockquote.

![](reference/figures/blockquote.gif)

### Chunk

Turn the selected text into a chunk.

![](reference/figures/chunk.gif)

> Note that every chunk is given a name.

chunksplit split the chunk at a given spot.

![](reference/figures/chunksplit.gif)

### Emphasize

Embolden, italicize or strikethrough the selected text.

![](reference/figures/emphasise.gif)

### Footnotes

Turn the given text into a footnote.

![](reference/figures/footnote.gif)

### Headers

Turn the selected text into a header.

![](reference/figures/header.gif)

### HTML Comment

Turn the text into an html comment

![](reference/figures/htmlcomment.gif)

### Image

Turn the selected path into an image.

This element is context aware: if you select a text and a link, it turns
the text into title between `![]`, and puts the link between `()`.

If the last element of the selection is not a link, you get an error
message straight into you markdown document.

![](reference/figures/image.gif)

### LaTeX

LaTeX syntax :

![](reference/figures/latex.gif)

### List

Turn the selected text into an unordered list.

![](reference/figures/list.gif)

### Markdownify

If you have existing HTML tags (e.g. for pages exported from elsewhere)
you can convert these to markdown syntax with the Markdownify Addin

    turns <i>this</i> into _this_
    turns <b>this</b> into **this**
    turns <a href="https://sub.domain.mylink.html">this</a> into [this](https://sub.domain.mylink.html)
    turns <img src="~/dir/image.png"> into ![](~/dir/image.png)
    turns <img src="~/dir/image.png" alt="with text"> into ![with text](~/dir/image.png)
    leaves normal text unchanged

### Moving

#### On the right

Copy the selected text or the current line to the right.

![](reference/figures/right.gif)

### Table

Insert a table inside your doc.

There are basically two way to do that with remedy :

#### Ttable

![](reference/figures/table.gif)

#### Parse your data

Turn your dataframe into a markdown table :

![](reference/figures/table_remedy.gif)

### URL

Turn the selected text into a link.

This element is context aware: if you select a text and a link, it turns
the text into title between `[]`, and puts the link between `()`.

If the last element of the selection is not a link, you get an error
message straight into you markdown document.

![](reference/figures/url.gif)

### Youtube

Turn an url into a youtube embed:

![](reference/figures/youtube.gif)

### xaringan

Insert a xaringan pull-left and pull-right template.

![](reference/figures/xaringan.gif)

## Recommended shortcuts (macOS)

Here’s a list of recommended shortcuts:

``` r
remedy::remedy_opts$get('hotkeys')
#>           backtick               bold              chunk 
#>       "Ctrl+Cmd+`"       "Ctrl+Cmd+B"   "Ctrl+Alt+Cmd+C" 
#>         chunksplit          chunkname           footnote 
#> "Ctrl+Shift+Alt+C" "Ctrl+Shift+Alt+N" "Ctrl+Cmd+Shift+6" 
#>                 h1                 h2                 h3 
#>       "Ctrl+Cmd+1"       "Ctrl+Cmd+2"       "Ctrl+Cmd+3" 
#>                 h4                 h5                 h6 
#>       "Ctrl+Cmd+4"       "Ctrl+Cmd+5"       "Ctrl+Cmd+6" 
#>        htmlcomment              image            italics 
#>       "Ctrl+Alt+C"       "Ctrl+Cmd+P"       "Ctrl+Cmd+I" 
#>              latex               list              right 
#>       "Ctrl+Cmd+L" "Ctrl+Shift+Cmd+="    "Alt+Cmd+Right" 
#>             strike              table                url 
#>       "Ctrl+Cmd+S"       "Ctrl+Cmd+T"       "Ctrl+Cmd+U" 
#>           xaringan            youtube 
#>       "Ctrl+Cmd+X"       "Ctrl+Cmd+Y"
```

### Managing Shortcuts

Use the [`{rsam}`](https://github.com/yonicd/rsam) package to set and
manage for you the hotkey settings of `{remedy}`.

If you want to edit the default settings you can view the defaults
`remedy_opts$get('hotkeys')` and change them through
`remedy_opts$set(hotkeys=<NEW_SETTINGS>)`.

``` r
hotkeys <- remedy::remedy_opts$get("hotkeys")
rsam::set_shortcut(sprintf('remedy::%sr',names(hotkeys)), hotkeys)
```

## Feedback and enhancement

You’ve found a bug, or have an enhancement idea? Feel free to open an
issue : <https://github.com/ThinkR-open/remedy/issues>.

## Code of conduct

Please note that the ‘remedy’ project is released with a [Contributor
Code of Conduct](CODE_OF_CONDUCT.md). By contributing to this project,
you agree to abide by its terms.
