# forked from https://github.com/yihui/knitr/blob/master/R/defaults.R
new_defaults = function(value = list()) {
  defaults = value
  
  get = function(name, default = FALSE, drop = TRUE) {
    if (default) defaults = value  # this is only a local version
    if (missing(name)) defaults else {
      if (drop && length(name) == 1) defaults[[name]] else {
        stats::setNames(defaults[name], name)
      }
    }
  }
  resolve = function(...) {
    dots = list(...)
    if (length(dots) == 0) return()
    if (is.null(names(dots)) && length(dots) == 1 && is.list(dots[[1]]))
      if (length(dots <- dots[[1]]) == 0) return()
    dots
  }
  set = function(...) {
    dots = resolve(...)
    if (length(dots)) defaults <<- merge(dots)
    invisible(NULL)
  }
  merge = function(values) merge_list(defaults, values)
  restore = function(target = value) defaults <<- target
  append = function(...) {
    dots = resolve(...)
    for (i in names(dots)) dots[[i]] <- c(defaults[[i]], dots[[i]])
    if (length(dots)) defaults <<- merge(dots)
    invisible(NULL)
  }
  
  list(get = get, set = set, append = append, merge = merge, restore = restore)
}

#' @title Default and current remedy options
#'
#' @description Options for functions in the remedy package. When running R code, the object \code{remedy_opts}
#' (default options) is not modified by chunk headers (local chunk options are
#' merged with default options), whereas \code{remedy_opts_current} (current options)
#' changes with different chunk headers and it always reflects the options for
#' the current chunk.
#'
#' Normally we set up the global options once in the first code chunk in a
#' document using \code{remedy_opts$set()}, so that all \emph{latter} chunks will
#' use these options. Note the global options set in one chunk will not affect
#' the options in this chunk itself, and that is why we often need to set global
#' options in a separate chunk.
#'
#' Below is a list of default chunk options, retrieved via
#' \code{remedy_opts$get()}:
#'
# @references Usage: \url{https://yihui.name/knitr/objects/}
#'
#   A list of available options:
#   \url{https://yihui.name/knitr/options/#chunk_options}
#' @note \code{remedy_opts_current} is read-only in the sense that it does nothing if
#'   you call \code{remedy_opts_current$set()}; you can only query the options via
#'   \code{remedy_opts_current$get()}.
#' @export
#' @rdname remedyOpts
#' @examples remedy_opts$get()
remedy_opts <- new_defaults(list(
  basic=FALSE,
  name='remedy',
  counter=TRUE,
  chunk_opts=NULL,
  kable_opts=NULL,
  full_doc=FALSE,
  token_purl='^#{2} -{4}(.*?)-{4,}$',
  token_url = "^(?:(?:https?|ftp|file)://|www\\.|ftp\\.)[A-z0-9+&@#/%=~_|$?!:,.-]*[A-z0-9+&@#/%=~_|$]$", # URL regex
  token_rel_link = "^.*[/|\\.][^\\.]+$", # Relative link regex
  token_img_link = c('jpeg','jpg','png','gif'), # Image link
  youtube_output = 'html',
  youtube_width = '100%',
  youtube_height = '400',
  hotkeys = c(
    backtick = "Ctrl+Cmd+`",
    bold = "Ctrl+Cmd+B",
    chunk = "Ctrl+Alt+Cmd+C",
    chunksplit = "Ctrl+Shift+Alt+C",
    chunkname = "Ctrl+Shift+Alt+N",
    footnote = "Ctrl+Cmd+Shift+6",
    h1 = "Ctrl+Cmd+1",
    h2 = "Ctrl+Cmd+2",
    h3 = "Ctrl+Cmd+3",
    h4 = "Ctrl+Cmd+4",
    h5 = "Ctrl+Cmd+5",
    h6 = "Ctrl+Cmd+6",
    htmlcomment = "Ctrl+Alt+C",
    image = "Ctrl+Cmd+P",
    italics = "Ctrl+Cmd+I",
    latex = "Ctrl+Cmd+L",
    list = "Ctrl+Shift+Cmd+=",
    right = "Alt+Cmd+Right",
    strike = "Ctrl+Cmd+S",
    table = "Ctrl+Cmd+T",
    url = "Ctrl+Cmd+U",
    xaringan = "Ctrl+Cmd+X",
    youtube = "Ctrl+Cmd+Y"
  )
))

#' @rdname remedyOpts
#' @export
remedy_opts_current <- new_defaults()

# merge elements of y into x with the same names
merge_list <- function(x, y) {
  x[names(y)] <- y
  x
}

#from stats
setNames <- function (object = nm, nm) 
{
  names(object) <- nm
  object
}