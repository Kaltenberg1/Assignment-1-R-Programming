## Reads monitoring station 2 data into data frame variable.
## Computes sum and count of non NA values.

## Creates path to file with 2nd monitoring station data and assigns it to filepath_2. 
## Does this by appending relevant filename to base path ("resource_path").
filepath_2 <- paste(resource_path, "specdata/002.csv", sep="/")

## Reads 2nd station's data (in filepath_2), assigns it to variable file_content_2
file_content_2 <- read.csv(filepath_2)

## Removes filepath_2 after data has been read b/c won't need that variable any more.
rm("filepath_2")

## Initialize variables for the sum and count of non N/A values in station 2 data
sum_2 <- 0
count_2 <- 0

## Specify relevant column in data frame (col 2) and put column contents into variable x.
for (x in file_content_2[[2]]) 
{
  ## skip over the NA values
  if(!is.na(x))
  {
    ## Accumulate the sum and count of sulphite values for later averaging
    sum_2 <- sum_2 + x
    count_2 <- count_2 + 1
  }  
  
}

