#' #' folder.to.R
#' #' 
#' #' To help with package organization
#' #' @description All R scripts in the folder Rfolder will be copied over to the folder R. The copied files will replaced existing files in the folder R if they share the same name.
#' #' @export
#' 
#' folder.to.R <- function(project_directory){
#'   main_folder <- paste(project_directory, "Rfolder/", sep="")
#'   folders <- list.files(main_folder)
#'   for (folder_name in folders){
#'     folder <- paste(main_folder, folder_name, "/", sep="")
#'     files <- list.files(folder)
#'     for (file in files){
#'       file_dir <- paste(folder, file, sep="")
#'       destination_dir <- paste(project_directory, "R/", sep="")
#'       file.copy(file_dir, destination_dir)
#'     }
#'   }
#' }