#' session_infor
#'
#' Insert session info
#'
#' @return Inserts [devtools::session_info()], if available, 
#' or [sessionInfo()]. The command is wrapped in a collapsible details tag.
#' @export
#'

session_infor <- function(){
  si <- 
    if (requireNamespace("devtools", quietly = TRUE)) {
      "devtools::session_info()"
    } else {
      "sessionInfo()"
    }
  
  txt <- paste("<details><summary>Session info</summary>", 
                "```{r}",
                si,
                "```",
                "</details>", sep = "\n")
  
  a <- rstudioapi::getSourceEditorContext()
  
  rstudioapi::insertText(location = a$selection[[1]]$range, text = txt)
}
