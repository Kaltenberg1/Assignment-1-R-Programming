## Create variable to hold file number
filenum <- 1

## create a 3 digit string from filenum variable to create file name
filename <- sprintf("%03d", filenum)

extendedfilename <- paste(filename,"csv", sep=".")

filepath <- paste(resource_path, "specdata", extendedfilename, sep="/")

