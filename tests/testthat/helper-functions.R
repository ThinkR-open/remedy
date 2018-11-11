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
