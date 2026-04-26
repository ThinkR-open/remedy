#' @title Interactively Add Names to Chunks
#' @description Addin that add in bulk a names to unnamed chunks in a
#' Rmarkdown document in the source editor.
#' @return NULL
#' @details
#'
#' By default the addin will use "remedy" as the stem of the chunk names. this an be changed using
#' \code{\link{remedy_opts}}$set(name='ANOTHER NAME'). The names are then added in sequential order using
#' an %02d naming scheme.
#'
#' Setting the option to an empty string (\code{remedy_opts$set(name = "")}) disables
#' auto-naming entirely (the addin becomes a no-op).
#'
#' Only `r` chunks are renamed; chunks in other engines such as `stan`,
#' `python`, `sql` or `bash` are left untouched.
#'
#' @rdname chunknamer
#' @export
chunknamer <- function(){

  adc <- rstudioapi::getSourceEditorContext()

  this <- adc$contents

  new <- rename_chunks(this, name = remedy_opts$get("name"))

  changed <- which(this != new)

  for (idx in changed) {
    rng <- Map(c, Map(c, idx, 1), Map(c, idx, Inf))
    rstudioapi::modifyRange(rng, new[idx], id = adc$id)
  }

  invisible(NULL)
}

#' Rename unnamed R chunks inside a character vector of lines
#'
#' Pure helper used by [chunknamer()]. Given the full contents of an Rmarkdown
#' document as a character vector (one line per element), it returns the same
#' vector with unnamed R chunks renamed using `name` as a stem and a
#' zero-padded counter. Chunks of engines other than `r` (e.g. `stan`,
#' `python`) are left untouched.
#'
#' If \code{name} is \code{""} or \code{NA}, the function is a no-op and the
#' input is returned as-is.
#'
#' @param lines character vector of document lines.
#' @param name character(1), stem used for new chunk names. Use \code{""} to
#'   disable auto-naming.
#'
#' @return a character vector the same length as \code{lines}.
#' @keywords internal
#' @export
rename_chunks <- function(lines, name = "remedy") {

  if (is.null(name) || length(name) == 0L || is.na(name) || !nzchar(name)) {
    return(lines)
  }

  # Header of an R chunk: ```{r}, ```{r ...}, ```{r, ...}.
  # knitr also accepts ```{R} (capital R), so match both cases.
  r_chunk_re <- "^```\\{[rR](\\s|,|\\})"

  idx_r <- grep(r_chunk_re, lines)
  if (!length(idx_r)) return(lines)

  # Extract current chunk "name" token (first comma-separated arg after {r)
  first_tokens <- vapply(
    strsplit(lines[idx_r], ","), `[`, character(1), 1
  )
  current_names <- gsub("```\\{[rR]|\\}|\\s+", "", first_tokens)

  # If the first token is an `x=y` option (no chunk name), treat as missing name
  has_option_in_first <- grepl("=", current_names)
  current_names[has_option_in_first] <- ""

  no_name <- which(!nzchar(current_names))
  if (!length(no_name)) return(lines)

  counter_size <- max(nchar(as.character(length(no_name))), 2L)
  counter <- paste0("%0", counter_size, "d")

  taken <- current_names
  for (i in seq_along(no_name)) {
    bump <- 0
    new_name <- sprintf(paste0("%s", counter), name, (i + bump))
    while (new_name %in% taken) {
      bump <- bump + 1
      new_name <- sprintf(paste0("%s", counter), name, (i + bump))
    }
    taken <- c(taken, new_name)

    line_idx <- idx_r[no_name[i]]
    comma <- if (has_option_in_first[no_name[i]]) "," else ""
    lines[line_idx] <- sub(
      "^```\\{[rR]",
      sprintf("```{r %s%s", new_name, comma),
      lines[line_idx]
    )
  }

  lines
}
