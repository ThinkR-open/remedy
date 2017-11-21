#' @title Interactivley Create Rmarkdown Chunks
#' @description Addin that splits full documents into Rmarkdown chunks or
#' wraps highlighted text in an active RStudio document editor in a Rmarkdown chunk.
#' @return NULL
#' @details
#'
#' Setting \code{\link{remedy_opts}}$set(list(full_doc=TRUE)) chunky will convert entire document by
#' \code{\link{remedy_opts}}$get('token'). The default token is the output from a \code{\link[knitr]{purl}}
#' conversion (## ----chunk name,chunk options----).
#'
#' Setting \code{\link{remedy_opts}}$set(list(full_doc=FALSE)), user highlights text and chunky will
#'  wrap a new Rmarkdown chunk around it, utilizing the other options in \code{\link{remedy_opts}}.
#'
#' @rdname chunkify
#' @export
chunkify <- function() {
  if (remedy_opts$get("full_doc")) {
    chunkify_doc()
  } else {
    chunkify_section()
  }
}

#' @importFrom rstudioapi getActiveDocumentContext
chunkify_doc <- function() {
  adc <- rstudioapi::getActiveDocumentContext()

  find_chunks <- grep(remedy_opts$get("token"), adc$contents)

  if (length(find_chunks) == 0) return(NULL)

  chunk_idx <- mapply(seq, find_chunks, to = c(find_chunks[-1] - 1, length(adc$contents)))

  new_chunks <- lapply(chunk_idx, function(x) {
    this <- adc$contents[x]
    this[1] <- sprintf("```{r%s}", gsub("[#-]", "", this[1]))
    this[length(x) + 1] <- "```"
    this
  })

  new_text <- c(adc$contents[1:chunk_idx[[1]][1] - 1], unlist(new_chunks))

  cat(new_text, file = adc$path, sep = "\n")
}

#' @importFrom rstudioapi insertText getActiveDocumentContext setCursorPosition
chunkify_section <- function() {
  adc <- rstudioapi::getActiveDocumentContext()

  newend <- adc$selection[[1]]$range$start[[1]] + (adc$selection[[1]]$range$end[[1]] - adc$selection[[1]]$range$start[[1]]) + 3

  adc$selection[[1]]$range$start[[1]] <- adc$selection[[1]]$range$start[[1]] - 1
  adc$selection[[1]]$range$end[[1]] <- newend
  adc$selection[[1]]$range$end[[2]] <- 1

  start_text <- "\n```{r"

  if (!remedy_opts$get("basic")) {
    if (remedy_opts$get("counter")) {
      chunky_num <- length(grep(sprintf("\\`\\`\\`\\{r %s", remedy_opts$get("name")), adc$contents[1:adc$selection[[1]]$range$start[[1]]])) + 1
      start_text <- paste(start_text, sprintf("%s%03d", remedy_opts$get("name"), chunky_num))
    } else {
      start_text <- paste(start_text, remedy_opts$get("name"))
    }

    if (!is.null(remedy_opts$get("chunk_opts"))) {
      start_text <- paste(start_text, remedy_opts$get("chunk_opts"), sep = ",")
    }
  }

  start_text <- paste0(start_text, "}\n")

  # Insert text that splits the code chunk in two
  rstudioapi::insertText(location = adc$selection[[1]]$range$start, start_text)
  rstudioapi::insertText(location = adc$selection[[1]]$range$end, "\n```\n")
}
