## Currently taken verbatim from 
## https://github.com/seasmith/AlignAssign/blob/b32a2f0847a7818c9768a105cf2d891db0b0ee8d/R/align_assign.R
## as of 11-Nov-2016
## since AlignAssign is not on CRAN and CRAN packages can't have Remotes dependencies
## J. Carroll: I have updated the roxygen tags but otherwise this is as-per that commit

capture <- function() {
  # Get context
  rstudioapi::getActiveDocumentContext()
}

capture_area <- function(capture) {
  # Find range
  range_start <- capture$selection[[1L]]$range$start[[1L]]
  range_end   <- capture$selection[[1L]]$range$end[[1L]]
  
  # Dump contents and use highlighted lines as names.
  contents        <- capture$contents[range_start:range_end]
  names(contents) <- range_start:range_end
  return(contents)
}

find_regex <- function(find, where) {
  
  # Find matches, extract positions, find furthest <-, get rows/cols to align.
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
  # Unload variables
  matched.rows      <- info$matched.rows
  matched.cols      <- info$matched.cols
  lines.highlighted <- info$lines.highlighted
  which.max.col     <- info$which.max.col
  furthest_column   <- info$furthest_column
  
  # Find the rows to align and the current column position of each regEx match.
  rows_to_align    <- lines.highlighted[matched.rows[-which.max.col]]
  columns_to_align <- matched.cols[-which.max.col]
  
  # Set location for spaces to be inserted.
  location <- Map(c, rows_to_align, columns_to_align)
  
  # Find and set the number of spaces to insert on each line.
  text_num <- furthest_column - columns_to_align
  text     <- vapply(text_num,
                     function(x) paste0(rep(" ", x), collapse = ""),
                     character(1))
  
  return(list(location = location, text = text))
}

insertr <- function(list) {
  rstudioapi::insertText(list[["location"]], list[["text"]])
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
  capture <- capture()
  area    <- capture_area(capture)
  loc     <- find_regex("<-", area)
  insertList <- assemble_insert(loc)
  insertr(insertList)
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
  capture <- capture()
  area    <- capture_area(capture)
  loc     <- find_regex("=", area)
  insertList <- assemble_insert(loc)
  insertr(insertList)
}