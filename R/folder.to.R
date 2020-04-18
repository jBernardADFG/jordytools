#' #' folder.to.R
#' #'
#' #' To help with package organization
#' #' @param project_directory ...
#' #' @description All R scripts in the folder Rfolder will be copied over to the folder R. The copied files will replaced existing files in the folder R if they share the same name.
#' #' @export
#' 
#' folder.to.R <- function(project_directory){
#'   destination_dir <- paste(project_directory, "R/", sep="")
#'   main_folder <- paste(project_directory, "Rfolder/", sep="")
#'   folders <- list.files(main_folder)
#'   for (folder_name in folders){
#'     folder <- paste(main_folder, folder_name, "/", sep="")
#'     files <- list.files(folder)
#'     for (file in files){
#'       dir <- paste(folder, file, sep="")
#'       if (substr(dir, nchar(dir)-1, nchar(dir))==".R"){
#'         file.copy(dir, destination_dir, overwrite = T)
#'       }else{
#'         new_dir <- paste(dir, "/", sep="")
#'         files <- list.files(dir)
#'         for (file in files){
#'           file.copy(file_dir, destination_dir, overwrite = T)
#'         }
#'       }
#'     }
#'   }
#' }