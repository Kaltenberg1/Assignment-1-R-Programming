## Sets up path to relevant monitoring station data files, reads file values into data frame
## creates variables to be used in calculating average station values and computes those values

## Create variable to hold file number
filenum <- 1

## Create a variable to hold values in an inidividual file. I think
## this is best done with a vector but its size varies between files

## The following code needs to be put in a loop

## create a string from variables to point to correct station file
## this involves padding a number with leading zeroes because 
## filenames have format 001.csv, 002.csv,...,332.csv
sprintf("Leading zeros:%03d", filenum);
filepath <- paste(resource_path, "specdata/filenum.csv", sep="/")


## Specify relevant file number and put it into variable x.
for (x in filenum) 
{
  ## skip over the NA values
  if(!is.na(x))
  {
    ## Accumulate the sum and count of sulphite values for later averaging
    sum_1 <- sum_1 + x
    count_1 <- count_1 + 1
  }  
  
}




## Create file paths to first two stations' data and assigns it to filepath_1. 
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







## Reads monitoring station 1 data into data frame variable.
## Computes sum and count of non NA values.
## Computes average sulfite value for stations 1 and 2 combined

## This script uses the following variables:
## ADD VARIABLE NAMES

count_combined <- count_1 + count_2
sum_combined <- sum_1 + sum_2
average <- sum_combined / count_combined
