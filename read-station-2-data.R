## This script reads the data for the second monitoring station into a data frame variable 

## Create the path to the file with the first monitoring station data and 
## assigns this to filepath_1. It bases this on the file path to the resources directory 
## for this project and then appends the relevant individual filename to this base path.
filepath_2 <- paste(resource_path, "specdata/002.csv", sep="/")

## Reads in contents of file holding the second monitoring station data 
## and assigns to variable file_content_2
file_content_2 <- read.csv(filepath_2)

## Removes variable filepath 2 since the contents of the relevant file have already been read
## and we won;t need that filepath any more.
rm("filepath_2")
