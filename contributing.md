Hey, thank you for your contribution to {remedy}. 

----

## You're opening an issue 

### Feature request

Be sure to be as precise as possible describing what you would like to implement. Suggestion for a function would be very appreciated. 

### You've found a bug 

Please describe as precisely as possible the bug you have encountered. 

----

## You're opening a Pull Request 

Thanks a lot for your contribution!

Before opening a Pull Request, be sure that:

+ [ ] binding functions have a trailing `r` (for example `listr()` or `urlr()`) 

+ [ ] documentation contain example (CRAN forces examples for the addins)

Example roxygen2 header

```r
#' @title Imager
#'
#' @description Convert the selected path into an embedded image
#'
#'
#' @return a markdown image link
#' @export
#' @importFrom rstudioapi getSourceEditorContext modifyRange
#' 
#' @examples 
#' \dontrun{
#' remedy_example( 
#'     c( "https://thinkr.fr/wp-content/uploads/2015/03/thinkR1.png"), 
#'     imager
#'     )
#' }
imager <- function() {
```

+ [ ] you've updated the binding field in addins.dcf

+ [ ] you've added element to hotkey field in [opts.R](https://github.com/ThinkR-open/remedy/blob/master/R/opts.R#L78). Name of element function name without the trailing `r`.

+ [ ] you've added suggested hotkey for macOS, this is for when end users add hotkeys in bulk and use `remedy::remedy_opts$get("hotkeys")`

+ [ ] you've added unit tests in testthat

+ [ ] you've run covrpage `covrpage::covrpage(update_badge = TRUE,vignette = TRUE)` locally since ci can't run the unit tests for addins.
