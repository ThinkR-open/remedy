#' @title Convert to header
#'
#' @description Convert selected text into a header.
#'
#' 
#' @rdname header
#'
#' @return a markdown header
#' @export
#' @examples 
#' \dontrun{
#' remedy_example( c( "h1"), h1r)
#' remedy_example( c( "h2"), h2r)
#' remedy_example( c( "h3"), h3r)
#' remedy_example( c( "h4"), h4r)
#' remedy_example( c( "h5"), h5r)
#' remedy_example( c( "h6"), h6r)
#' }
h1r <- function() add_prefix("# ")

#' @rdname header
#' @export
h2r <- function() add_prefix("## ")

#' @rdname header
#' @export
h3r <- function() add_prefix("### ")

#' @rdname header
#' @export
h4r <- function() add_prefix("#### ")

#' @rdname header
#' @export
h5r <- function() add_prefix("##### ")

#' @rdname header
#' @export
h6r <- function() add_prefix("###### ")

#' Cycle the header level of a line
#'
#' Pure helper used by [headr_toggler()]. Given a character vector of lines,
#' each line's header level is promoted by one step: plain text becomes `# H1`,
#' `H1` becomes `## H2`, etc. `###### H6` cycles back to plain text (issue #59).
#' Empty lines pass through unchanged.
#'
#' @param lines character vector of lines.
#'
#' @return a character vector the same length as `lines`.
#' @export
toggle_header <- function(lines) {
  vapply(lines, function(line) {
    if (!nzchar(line)) return(line)
    m <- regmatches(line, regexpr("^#{1,6}\\s+", line))
    if (length(m) == 0L) {
      return(paste0("# ", line))
    }
    level <- nchar(sub("\\s+$", "", m))
    rest <- sub("^#{1,6}\\s+", "", line)
    if (level >= 6L) {
      return(rest)
    }
    paste0(strrep("#", level + 1L), " ", rest)
  }, character(1), USE.NAMES = FALSE)
}

#' Cycle the header level on the current line
#'
#' RStudio addin wrapping [toggle_header()]. Rewrites each line intersecting
#' the current selection in-place.
#'
#' @return Invisible NULL. Used for its side effect on the active document.
#' @export
headr_toggler <- function() {
  adc <- rstudioapi::getActiveDocumentContext()
  sel <- adc$selection[[1L]]$range
  start_row <- sel$start[[1L]]
  end_row   <- sel$end[[1L]]
  if (end_row < start_row) end_row <- start_row

  lines <- adc$contents[start_row:end_row]
  new_lines <- toggle_header(lines)

  last <- lines[length(lines)]
  rng <- rstudioapi::document_range(
    start = rstudioapi::document_position(start_row, 1L),
    end   = rstudioapi::document_position(end_row, nchar(last) + 1L)
  )
  rstudioapi::modifyRange(rng, paste(new_lines, collapse = "\n"), id = adc$id)
  invisible(NULL)
}
