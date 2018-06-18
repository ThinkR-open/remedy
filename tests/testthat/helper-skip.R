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

set_text <- function(txt = '',sec,mark = FALSE){
  
  rng <- rstudioapi::document_range(start = rstudioapi::document_position(1,1),
                                    end   = rstudioapi::document_position(Inf,Inf))
  
  rstudioapi::modifyRange(location = rng, text = txt, id = sec$id)
  rstudioapi::documentSave(sec$id) 
  
  if(mark)
    rstudioapi::setSelectionRanges(rng)
}

this_strrep <- function(n) sprintf('%s ',strrep('#',times = n))