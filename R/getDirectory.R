#' get.directory
#'
#' To look up the directory
#' @export
get.directory <- function(){
  dir <- choose.dir()
  dir <- gsub("\\" ,"/", dir, fixed=T)
  return(dir)
}
