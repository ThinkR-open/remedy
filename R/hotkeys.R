#' @title Set remedy addin hotkeys
#' @description Helper function that sets remedy addin hotkeys to defaults
#' @param overide boolean, set to TRUE to ignore any existing hotkeys, Default: FALSE
#' @param verbose boolean, set to TRUE to return a message on actions taken, Default: TRUE
#' @rdname set_hotkeys
#' @export 
#' @importFrom jsonlite fromJSON toJSON
set_hotkeys <- function(overide = FALSE, verbose=TRUE){
  
  json_now <- jsonlite::fromJSON('~/.R/rstudio/keybindings/addins.json')
  
  current_keys <- unlist(json_now)
  names(current_keys) <- NULL
  
  nm <- names(json_now)
  
  remedy_keys <- remedy_opts$get('hotkeys')
  
  skip <- intersect(current_keys,remedy_keys)

  set_keys <- names(remedy_keys)
  
  if(length(skip)>0 & !overide)
    set_keys <- set_keys[-which(skip%in%remedy_keys)]
  
  new_keys <- NULL
  
  for(this in set_keys){
    
    this_key <- sprintf('remedy::%sr',this)

    if(overide){
      json_now[[this_key]] <- remedy_keys[this]
      new_keys <- c(new_keys,this_key)
    }else{
      if(!this_key%in%nm){
        json_now[[this_key]] <- remedy_keys[this]
        new_keys <- c(new_keys,this_key)
      }  
    }
  }
  
  if(!is.null(new_keys)){
    json_now <- json_now[sort(names(json_now))]
    
    cat(jsonlite::toJSON(json_now,auto_unbox = TRUE,pretty = TRUE),
        file = '~/.R/rstudio/keybindings/addins.json',sep = '\n')

    msg = paste0('The following {remedy} addin hotkeys were set, restart RStudio to initialize\n',paste0(sprintf('%s = %s',names(remedy_keys[set_keys]),remedy_keys[set_keys]),collapse ='\n')) 
  }else{
    msg='{remedy} addin hotkeys already present'
  }
  
  if(verbose)
    message(msg)
}