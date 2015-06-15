## Reads monitoring station 1 data into data frame variable.
## Computes sum and count of non NA values.

## Creates path to file with first monitoring station data and assigns it to filepath_1. 
## Does this by appending relevant filename to base path ("resource_path").
filepath_1 <- paste(resource_path, "specdata/001.csv", sep="/")

## Reads first station's data (in filepath_1), assigns it to variable file_content_1
file_content_1 <- read.csv(filepath_1)

## Removes filepath_1 after data has been read b/c won't need that variable any more.
rm("filepath_1")

## Initialize variables for the sum and count of non N/A values in station 1 data
sum_1 <- 0
count_1 <- 0

## Specify relevant column in data frame (col 2) and put column contents into variable x.
for (x in file_content_1[[2]]) 
{
  ## skip over the NA values
  if(!is.na(x))
  {
    ## Accumulate the sum and count of sulphite values for later averaging
    sum_1 <- sum_1 + x
    count_1 <- count_1 + 1
  }  
  
}

