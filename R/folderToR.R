#' folder.to.R
#'
#' To help with package organization
#' @param files If you want to manually specify the files that should be copied over to the R directory
#' @description  If files!=F, all R scripts in Rfolder will be copied over to the R direcory. If files==F, only the specified files will be copied over to the R project directory. 
#' @export

folder.to.R <- function(files=F){
  project_directory <- get.directory()
  destination_dir <- paste(project_directory, "R/", sep="")
  main_folder <- paste(project_directory, "Rfolder/", sep="")
  if (files==F){
    files <- get.file.paths()
  }else{
    files <- list.files("D:/Jordy/telprep/telprep/Rfolder", recursive = T)
  }
  for (file in files){
    file_dir <- paste(main_folder, file, sep="")
    file.copy(file_dir, destination_dir, overwrite = T)
  }
}
