skip_if_not_rstudio <- function(version = NULL) {
  available <- rstudioapi::isAvailable(version)
  message <- if (is.null(version))
    "RStudio not available"
  else
    paste("RStudio version '", version, "' not available", sep = "")
  
  if (!available)
    skip(message)
  
  TRUE
}

scratch_file <- function() {
  if (rstudioapi::isAvailable()) {
    path <- tempfile(pattern = 'test', fileext = '.R')
    file.create(path)
    rstudioapi::navigateToFile(path)
    Sys.sleep(1)
    rstudioapi::getSourceEditorContext()
  }
}

entire_document <- function() {
  rstudioapi::document_range(start = rstudioapi::document_position(1,1),
                             end   = rstudioapi::document_position(Inf,Inf))
}

individual_lines <- function() {
  lines <- rstudioapi::getSourceEditorContext()$contents
  n <- length(lines)
  Map(rstudioapi::document_range,
      Map(rstudioapi::document_position, 1:n, 1),
      Map(rstudioapi::document_position, 1:n, unlist(lapply(lines, nchar)) + 1)
  )
}

set_text <- function(txt = '', sec, mark) {
  rstudioapi::modifyRange(location = entire_document(), text = txt, id = sec$id)
  rstudioapi::documentSave(sec$id) 
  Sys.sleep(.1)
  if (!missing(mark))
    rstudioapi::setSelectionRanges(mark())
}

this_strrep <- function(n) sprintf('%s ',strrep('#',times = n))
