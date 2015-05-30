## This script readsthe data for the first monitoring station into the variable file_content_1

## Create the path to the file with the first monitoring station data and 
## assigns this to filepath_1. It bases this on the file path to the resources directory for this project
## abd then appends the relevant individual filename to this base path.
filepath_1 <- paste(resource_path, "specdata/001.csv", sep="/")

## Reads in contents of file holding first monitoring station data 
## and assigns to variable file_content_1
file_content_1 <- read.csv(filepath_1)

## Removes variable filepath 1 since the contents of the relevant file have already been read
## and we won;t need that filepath any more.
rm("filepath_1")
