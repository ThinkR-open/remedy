## Currently taken verbatim from 
## https://github.com/seasmith/AlignAssign/blob/b32a2f0847a7818c9768a105cf2d891db0b0ee8d/R/align_assign.R
## as of 11-Nov-2016
## since AlignAssign is not on CRAN and CRAN packages can't have Remotes dependencies
## J. Carroll: I have updated the roxygen tags but otherwise this is as-per that commit

capture <- function() {
  # Get context
  rstudioapi::getSourceEditorContext()
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
  matched.rows <- grep(find, where,fixed = TRUE)
  positions <- regexec(find, where,fixed = TRUE)
  positions <- positions[matched.rows]
  
  lines.highlighted <- as.integer(names(where))
  matched.cols      <- sapply(positions, `[[`, 1L)
  
  if(length(matched.cols)==0)
    return(NULL)
  
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
  list2env(info,envir = environment())
  
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

trim_insert <-function(rows,text,id) {

  location <- Map(c, Map(c,rows,1), Map(c,rows,Inf))
  rstudioapi::modifyRange(location, text,id = id)
  
}

insertr <- function(list) {
  rstudioapi::insertText(list[["location"]], list[["text"]])
}

#' @title Align a highlighted region's by pattern.
#' @param pattern character, regex pattern to align on, Default: remedy_opts$get('align_pattern')
#' @param anchor character, align to the 'right' or 'left', Default: remedy_opts$get('align_anchor')
#' @return Aligns by regex pattern within a highlighted region.
#' @examples
#' \dontrun{
#' remedy_example(
#'     c( "# Align arrows",
#'     "a <- 12", 
#'     "aaa <- 13"), 
#'     align_arrow
#'     )
#'     
#' remedy_example(
#'     c( "# Align equal signs",
#'     "a = 12", 
#'     "aaa = 13"), 
#'     align_equal
#'     )
#' }
#' @rdname align
#' @export
align <- function(pattern = remedy_opts$get('align_pattern'), anchor = remedy_opts$get('align_anchor')) {
  capture <- capture()
  area    <- capture_area(capture)
  loc     <- find_regex(pattern, area)
  
  if(is.null(loc))
    return(NULL)

  if(anchor=='left'){
    area[loc$matched.rows] <- gsub('\\s+',' ',area[loc$matched.rows])
    trim_insert(loc$lines.highlighted[loc$matched.rows],area[loc$matched.rows],id = capture$id)
    loc     <- find_regex(pattern, area)
  }
  
  insertList <- assemble_insert(loc)
  insertr(insertList)
}

#' @rdname align
#' @export
align_arrow <- function(pattern = '<-', anchor = remedy_opts$get('align_anchor')){
  align(pattern = pattern, anchor = remedy_opts$get('align_anchor')) 
}

#' @rdname align
#' @export
align_equal <- function(pattern = '=', anchor = remedy_opts$get('align_anchor')){
  align(pattern = pattern, anchor = remedy_opts$get('align_anchor')) 
}
