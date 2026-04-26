#' Discover package names referenced in a character vector
#'
#' Scans lines for `library(pkg)`, `require(pkg)`, `requireNamespace("pkg")`
#' and `pkg::fun` patterns and returns the set of package names. Quoted and
#' unquoted spellings (`library(dplyr)` and `library("dplyr")`) collapse to
#' the same name.
#'
#' @param lines character vector of lines.
#'
#' @return a character vector of unique package names.
#' @export
packages_in_text <- function(lines) {
  text <- paste(lines, collapse = "\n")
  # R package names: start with a letter, then letters/digits/dot.
  pkg_re <- "[A-Za-z][A-Za-z0-9.]*"
  pkgs <- character()
  pkgs <- c(pkgs, regmatches_group(
    text, sprintf("library\\(\\s*['\"]?(%s)", pkg_re)))
  pkgs <- c(pkgs, regmatches_group(
    text, sprintf("require\\(\\s*['\"]?(%s)", pkg_re)))
  pkgs <- c(pkgs, regmatches_group(
    text, sprintf("requireNamespace\\(\\s*['\"]?(%s)", pkg_re)))
  pkgs <- c(pkgs, regmatches_group(
    text, sprintf("(%s)::", pkg_re)))
  unique(pkgs[nzchar(pkgs)])
}

# Returns the first capture group of every match of `pattern` in `text`.
regmatches_group <- function(text, pattern) {
  m <- gregexpr(pattern, text, perl = TRUE)[[1L]]
  if (length(m) == 1L && m == -1L) return(character())
  starts <- attr(m, "capture.start")[, 1L]
  lengths <- attr(m, "capture.length")[, 1L]
  substring(text, starts, starts + lengths - 1L)
}

#' Render a bulleted list of package citations
#'
#' Given a character vector of package names, returns a single string with one
#' markdown bullet per package, each containing the output of
#' `utils::citation()` formatted as plain text. Intended as the text payload of
#' a future RStudio addin.
#'
#' @param pkgs character vector of package names. If `NULL`, `pkgs` is
#'   discovered via [packages_in_text()] on the lines in
#'   `rstudioapi::getSourceEditorContext()$contents`.
#' @param lines character vector of lines to scan when `pkgs` is `NULL`.
#'
#' @return a single character string.
#' @export
cite_packages <- function(pkgs = NULL, lines = NULL) {
  if (is.null(pkgs)) {
    if (is.null(lines)) {
      lines <- tryCatch(
        rstudioapi::getSourceEditorContext()$contents,
        error = function(e) character()
      )
    }
    pkgs <- packages_in_text(lines)
  }
  pkgs <- sort(unique(pkgs))
  bullets <- vapply(pkgs, function(p) {
    cit <- tryCatch(
      paste(format(utils::citation(p)), collapse = " "),
      error = function(e) sprintf("%s (citation unavailable)", p)
    )
    sprintf("+ %s", cit)
  }, character(1), USE.NAMES = FALSE)
  paste(bullets, collapse = "\n")
}
