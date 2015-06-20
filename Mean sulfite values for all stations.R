## Computes mean sulfite value in selected monitoring stations
## Using input variables relevant_station_numbers and resource_path 
## the average sulfite value is stored in variable "mean"
sum <- 0
count <- 0

for (filenum in relevant_station_numbers)
{
  ## create a 3 digit string from filenum variable to create file name
  ## old code (cumbersome version) is the next 3 lines
  ## filename <- sprintf("%03d", filenum)
  ## extended_filename <- paste(filename,"csv", sep=".")
  ## filepath <- paste(resource_path, "specdata", extended_filename, sep="/")
  
  ## better code (because shorter) for creating a filepath
  ## it computes file path from a number and a resource path
  filepath <- sprintf("%s/specdata/%03d.csv", resource_path, filenum)
  
  ## Read each station's data, assign it to variable file_content_filenum
  file_content <- read.csv(filepath)
  for (x in file_content[[2]]) 
  {
    ## skip over the NA values
    if(!is.na(x))
    {
      ## Cumulative sum and count of sulphite values for later averaging
      sum <- sum + x
      count <- count + 1
    }  
    
  }
}

mean <- sum/count    

## Removes filepath after data has been read b/c won't need that variable any more.
rm("filepath")    
rm("count")
rm("filenum")
rm("sum")
rm("x")
rm("file_content")