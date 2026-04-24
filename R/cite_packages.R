#' Discover package names referenced in a character vector
#'
#' Scans lines for `library(pkg)`, `require(pkg)`, `requireNamespace("pkg")`
#' and `pkg::fun` patterns and returns the set of package names.
#'
#' @param lines character vector of lines.
#'
#' @return a character vector of unique package names.
#' @export
packages_in_text <- function(lines) {
  text <- paste(lines, collapse = "\n")
  pkgs <- character()
  pkgs <- c(pkgs, regmatches_all(text,
    "(?<=library\\()\\s*['\"]?([.A-Za-z][.A-Za-z0-9]*)"))
  pkgs <- c(pkgs, regmatches_all(text,
    "(?<=require\\()\\s*['\"]?([.A-Za-z][.A-Za-z0-9]*)"))
  pkgs <- c(pkgs, regmatches_all(text,
    "(?<=requireNamespace\\()\\s*['\"]?([.A-Za-z][.A-Za-z0-9]*)"))
  pkgs <- c(pkgs, regmatches_all(text,
    "([.A-Za-z][.A-Za-z0-9]*)(?=::)"))
  unique(pkgs[nzchar(pkgs)])
}

regmatches_all <- function(text, pattern) {
  m <- gregexpr(pattern, text, perl = TRUE)
  unlist(regmatches(text, m))
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
