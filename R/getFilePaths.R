#' get.directory
#'
#' To look up the directory
#' @export
get.file.paths <- function(){
  file <- choose.files()
  file <- gsub("\\" ,"/", file, fixed=T)
  return(file)
}
