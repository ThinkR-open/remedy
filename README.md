
<!-- README.md is generated from README.Rmd. Please edit that file -->
[![Travis-CI Build Status](https://travis-ci.org/ThinkR-open/remedy.svg?branch=master)](https://travis-ci.org/ThinkR-open/remedy)[![Coverage status](https://codecov.io/gh/ThinkR-open/remedy/branch/master/graph/badge.svg)](https://codecov.io/github/ThinkR-open/remedy?branch=master)[![Covrpage Summary](https://img.shields.io/badge/covrpage-Last_Build_2018_11_01-brightgreen.svg)](http://tinyurl.com/y76olv3v)

<img src="readme_gif/thinkr-hex-remedy.png" width="250px" />

remedy
======

`{remedy}` provides addins to facilitate writing in markdown with RStudio.

![](readme_gif/remedy_example.gif)

All the functions are meant to be mapped to keyboard shortcuts. A list of suggested shortcuts is provided towards the end of this README.

> Note that most of the addins/shortcuts below will also work without selecting any text.

Install
-------

``` r
remotes::install_github("ThinkR-open/remedy")
```

Once you've installed the package, you don't need to load it with `library()`, the addins are installed on your machine as part of the package install process.

Using `{remedy}`
----------------

Write quicker in markdown with `{remedy}`!

Here's a list of all available helpers:

![](readme_gif/remedy_example.gif)

You can also have an overview of how the functions behave with the `remedy_example()` function:

``` r
library(remedy)
remedy_example( c("Never gonna", "give you up", "let you down"), listr )
```

### Align

Align selected blocks to their assignment operator, either `<-`

![](readme_gif/align.gif)

or `=`

![](readme_gif/alignequal.gif)

### Backtick

Enclose the selected word(s) in backticks.

![](readme_gif/backtick.gif)

### Blockquote

Turn selected line(s) to blockquote.

![](readme_gif/blockquote.gif)

### Chunk

Turn the selected text into a chunk.

![](readme_gif/chunk.gif)

> Note that every chunk is given a name.

chunksplit split the chunk at a given spot.

![](readme_gif/chunksplit.gif)

### Emphasize

Embolden, italicize or strikethrough the selected text.

![](readme_gif/emphasise.gif)

### Footnotes

Turn the given text into a footnote.

![](readme_gif/footnote.gif)

### Headers

Turn the selected text into a header.

![](readme_gif/header.gif)

### HTML Comment

Turn the text into an html comment

![](readme_gif/htmlcomment.gif)

### Image

Turn the selected path into an image.

This element is context aware: if you select a text and a link, it turns the text into title between `![]`, and puts the link between `()`.

If the last element of the selection is not a link, you get an error message straight into you markdown document.

![](readme_gif/image.gif)

### LaTeX

LaTeX syntax :

![](readme_gif/latex.gif)

### List

Turn the selected text into an unordered list.

![](readme_gif/list.gif)

### Moving

#### On the right

Copy the selected text or the current line to the right.

![](readme_gif/right.gif)

### Table

Insert a table inside your doc.

There are basically two way to do that with remedy :

#### Ttable

![](readme_gif/table.gif)

#### Parse your data

Turn your dataframe into a markdown table :

![](readme_gif/table_remedy.gif)

### URL

Turn the selected text into a link.

This element is context aware: if you select a text and a link, it turns the text into title between `[]`, and puts the link between `()`.

If the last element of the selection is not a link, you get an error message straight into you markdown document.

![](readme_gif/url.gif)

### Youtube

Turn an url into a youtube embed:

![](readme_gif/youtube.gif)

### xaringan

Insert a xaringan pull-left and pull-right template.

![](readme_gif/xaringan.gif)

Recommended shortcuts (macOS)
-----------------------------

Here's a list of recommended shortcuts:

``` r
remedy::remedy_opts$get('hotkeys')
#>           backtick               bold              chunk 
#>       "Ctrl+Cmd+`"       "Ctrl+Cmd+B"   "Ctrl+Alt+Cmd+C" 
#>         chunksplit           footnote                 h1 
#> "Ctrl+Shift+Alt+C" "Ctrl+Cmd+Shift+6"       "Ctrl+Cmd+1" 
#>                 h2                 h3                 h4 
#>       "Ctrl+Cmd+2"       "Ctrl+Cmd+3"       "Ctrl+Cmd+4" 
#>                 h5                 h6        htmlcomment 
#>       "Ctrl+Cmd+5"       "Ctrl+Cmd+6"       "Ctrl+Alt+C" 
#>              image            italics              latex 
#>       "Ctrl+Cmd+P"       "Ctrl+Cmd+I"       "Ctrl+Cmd+L" 
#>               list              right             strike 
#> "Ctrl+Shift+Cmd+="    "Alt+Cmd+Right"       "Ctrl+Cmd+S" 
#>              table                url           xaringan 
#>       "Ctrl+Cmd+T"       "Ctrl+Cmd+U"       "Ctrl+Cmd+X" 
#>            youtube 
#>       "Ctrl+Cmd+Y"
```

### Managing Shortcuts

Use the [`{rsam}`](https://github.com/yonicd/rsam) package to set and manage for you the hotkey settings of `{remedy}`.

If you want to edit the default settings you can view the defaults `remedy_opts$get('hotkeys')` and change them through `remedy_opts$set(hotkeys=<NEW_SETTINGS>)`.

``` r
hotkeys <- remedy::remedy_opts$get("hotkeys")
rsam::set_shortcut(sprintf('remedy::%sr',names(hotkeys)), hotkeys)
```

Feedback and enhancement
------------------------

You've found a bug, or have an enhancement idea? Feel free to open an issue : <https://github.com/ThinkR-open/remedy/issues>.
