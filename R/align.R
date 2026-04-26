## Core alignment primitives were originally taken from
## https://github.com/seasmith/AlignAssign (see also #67, #58)

capture <- function() {
  rstudioapi::getActiveDocumentContext()
}

capture_area <- function(capture) {
  range_start <- capture$selection[[1L]]$range$start[[1L]]
  range_end   <- capture$selection[[1L]]$range$end[[1L]]

  contents        <- capture$contents[range_start:range_end]
  names(contents) <- range_start:range_end
  return(contents)
}

find_regex <- function(find, where) {

  matched.rows <- grep(find, where)
  positions <- regexec(find, where)
  positions <- positions[matched.rows]

  lines.highlighted <- as.integer(names(where))
  matched.cols      <- sapply(positions, `[[`, 1L)
  which.max.col     <- which.max(matched.cols)

  furthest_row    <- lines.highlighted[matched.rows[which.max.col]]
  furthest_column <- max(matched.cols)

  return(list(matched.rows      = matched.rows,
              matched.cols      = matched.cols,
              lines.highlighted = lines.highlighted,
              which.max.col     = which.max.col,
              furthest_column   = furthest_column))
}

assemble_insert <-function(info) {
  matched.rows      <- info$matched.rows
  matched.cols      <- info$matched.cols
  lines.highlighted <- info$lines.highlighted
  which.max.col     <- info$which.max.col
  furthest_column   <- info$furthest_column

  rows_to_align    <- lines.highlighted[matched.rows[-which.max.col]]
  columns_to_align <- matched.cols[-which.max.col]

  location <- Map(c, rows_to_align, columns_to_align)

  text_num <- furthest_column - columns_to_align
  text     <- vapply(text_num,
                     function(x) paste0(rep(" ", x), collapse = ""),
                     character(1))

  return(list(location = location, text = text))
}

insertr <- function(list) {
  rstudioapi::insertText(list[["location"]], list[["text"]])
}

#' Pad a character vector so the first occurrence of `find` lines up
#'
#' Pure helper shared by the `align_*` addins. Adds spaces before the
#' first match of `find` on each line so the matches sit at the same column.
#' Lines without a match are left untouched.
#'
#' @param lines character vector of lines.
#' @param find character(1), a regular expression (unless `fixed = TRUE`).
#' @param fixed logical, passed to `regexpr`.
#'
#' @return a character vector the same length as `lines`.
#' @keywords internal
#' @export
align_text <- function(lines, find, fixed = TRUE) {
  positions <- as.integer(regexpr(find, lines, fixed = fixed))
  hits <- positions > 0
  if (sum(hits) < 2L) return(lines)
  target <- max(positions[hits])
  to_pad <- which(hits & positions < target)
  for (i in to_pad) {
    n <- target - positions[i]
    lines[i] <- paste0(
      substr(lines[i], 1L, positions[i] - 1L),
      strrep(" ", n),
      substr(lines[i], positions[i], nchar(lines[i]))
    )
  }
  lines
}

#' Align pipe (`|`) columns in a markdown table
#'
#' Pure helper used by [align_pipe()]. Each line that contains a `|` is
#' treated as a table row; cells are right-padded so the `|` separators
#' line up across rows. Non-pipe lines pass through untouched.
#'
#' @param lines character vector of lines.
#'
#' @return a character vector the same length as `lines`.
#' @keywords internal
#' @export
align_pipe_text <- function(lines) {
  has_pipe <- grepl("|", lines, fixed = TRUE)
  if (!any(has_pipe)) return(lines)

  idx <- which(has_pipe)
  cells <- lapply(lines[idx], function(line) {
    parts <- strsplit(line, "|", fixed = TRUE)[[1L]]
    # strsplit drops trailing empty fields; preserve the closing `|`.
    if (endsWith(line, "|")) parts <- c(parts, "")
    parts
  })
  n_cols <- max(lengths(cells))
  cells <- lapply(cells, function(r) {
    if (length(r) < n_cols) c(r, rep("", n_cols - length(r))) else r
  })

  widths <- do.call(pmax, lapply(cells, nchar))

  for (i in seq_along(cells)) {
    row <- cells[[i]]
    padded <- mapply(function(cell, w) {
      if (nchar(cell) < w) paste0(cell, strrep(" ", w - nchar(cell))) else cell
    }, row, widths, SIMPLIFY = TRUE, USE.NAMES = FALSE)
    lines[idx[i]] <- paste(padded, collapse = "|")
  }
  lines
}

## Internal: rewrite the highlighted region in-place via align_text().
align_addin <- function(find, fixed = TRUE) {
  adc <- rstudioapi::getActiveDocumentContext()
  sel <- adc$selection[[1L]]$range
  start_row <- sel$start[[1L]]
  end_row   <- sel$end[[1L]]

  lines   <- adc$contents[start_row:end_row]
  aligned <- align_text(lines, find = find, fixed = fixed)

  rng <- rstudioapi::document_range(
    start = rstudioapi::document_position(start_row, 1L),
    end   = rstudioapi::document_position(end_row,
                                          nchar(lines[length(lines)]) + 1L)
  )
  rstudioapi::modifyRange(rng, paste(aligned, collapse = "\n"), id = adc$id)
  invisible(NULL)
}

#' Align a highlighted region's assignment operators.
#'
#' @return Aligns the single assignment operators (\code{<-}) within a highlighted region.
#' @export
#'
#' @examples
#' \dontrun{
#' remedy_example(
#'     c( "# Align arrows",
#'     "a <- 12",
#'     "aaa <- 13"),
#'     align_arrow
#'     )
#' }
align_arrow <- function() {
  align_addin("<-")
}

#' Align a highlighted region's assignment operators.
#'
#' @return Aligns the equal sign assignment operators (\code{=}) within a
#' highlighted region.
#' @export
#' @examples
#' \dontrun{
#' remedy_example(
#'     c( "# Align equal signs",
#'     "a = 12",
#'     "aaa = 13"),
#'     align_equal
#'     )
#' }
align_equal <- function() {
  align_addin("=")
}

#' Align a highlighted region's tildes (`~`)
#'
#' Useful e.g. for the right-hand side of `case_when()` branches.
#'
#' @return Aligns the first `~` on each highlighted line.
#' @export
#' @examples
#' \dontrun{
#' remedy_example(
#'     c( "# Align tildes",
#'     "a ~ 12",
#'     "aaa ~ 13"),
#'     align_tilde
#'     )
#' }
align_tilde <- function() {
  align_addin("~")
}

#' Align `|` columns in a markdown table
#'
#' Pads cells in a highlighted markdown table so the `|` separators line up.
#'
#' @return Modifies the selected region in-place in the RStudio editor.
#' @export
#' @examples
#' \dontrun{
#' remedy_example(
#'   c(
#'     "|a|bb|ccc|",
#'     "|1|2|3|"
#'   ),
#'   align_pipe
#' )
#' }
align_pipe <- function() {
  adc <- rstudioapi::getActiveDocumentContext()
  sel <- adc$selection[[1L]]$range
  start_row <- sel$start[[1L]]
  end_row   <- sel$end[[1L]]

  lines <- adc$contents[start_row:end_row]
  aligned <- align_pipe_text(lines)

  rng <- rstudioapi::document_range(
    start = rstudioapi::document_position(start_row, 1L),
    end   = rstudioapi::document_position(end_row, nchar(lines[length(lines)]) + 1L)
  )
  rstudioapi::modifyRange(rng, paste(aligned, collapse = "\n"), id = adc$id)
}
