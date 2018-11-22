#' @title Functions to run examples and tests
#' @description Utility functions to deploy functions and tests for addins
#' @param txt character, text to place in temporary document
#' @param addin function, addin function to deploy
#' @param mark function, highlight using entire_document or individual_lines
#' @param sec source editor context object
#' @return New document in source editor of RStudio
#' @details These function only will work in a RStudio IDE
#' @rdname remedy_example
#' @export 
#' @importFrom rstudioapi documentSave
remedy_example <- function(txt, addin, mark = entire_document){
  if(interactive()){ 
    sec <- scratch_file()
    set_text(paste0(txt,collapse = '\n'), sec = sec, mark = mark)
    Sys.sleep(0.5)
    addin()
    invisible(rstudioapi::documentSave(sec$id))
  } else {
      message("{remedy} not available in non-interactive sessions.")
    }
}

#' @rdname remedy_example
#' @export 
#' @importFrom rstudioapi isAvailable navigateToFile getSourceEditorContext
scratch_file <- function() {
  if (rstudioapi::isAvailable()) {
    path <- tempfile(pattern = 'remedy', fileext = '.Rmd')
    file.create(path)
    rstudioapi::navigateToFile(path)
    Sys.sleep(1)
    rstudioapi::getSourceEditorContext()
  }
}

#' @rdname remedy_example
#' @export 
#' @importFrom rstudioapi document_position document_range
entire_document <- function() {
  rstudioapi::document_range(start = rstudioapi::document_position(1,1),
                             end   = rstudioapi::document_position(Inf,Inf))
}

#' @rdname remedy_example
#' @export 
#' @importFrom rstudioapi getSourceEditorContext document_position document_range
individual_lines <- function() {
  lines <- rstudioapi::getSourceEditorContext()$contents
  n <- length(lines)
  Map(rstudioapi::document_range,
      Map(rstudioapi::document_position, 1:n, 1),
      Map(rstudioapi::document_position, 1:n, unlist(lapply(lines, nchar)) + 1)
  )
}

#' @rdname remedy_example
#' @export 
#' @importFrom rstudioapi modifyRange documentSave setSelectionRanges
set_text <- function(txt = '', sec, mark) {
  rstudioapi::modifyRange(location = entire_document(), text = txt, id = sec$id)
  rstudioapi::documentSave(sec$id) 
  Sys.sleep(.1)
  if (!missing(mark))
    rstudioapi::setSelectionRanges(mark())
}

this_strrep <- function(n) sprintf('%s ',strrep('#',times = n))
