## This script prints the average sulphite value for the data frame 
## note the difference between printing and computing a value - 
## only the latter stores that value in a variable that can be accessed by a script

## Learning progression that led to this file was first to 
## create script to read in values from one of the 332 csv files
## then, when that first script works, to save it and then copy it into this file
## whilst making any changes to the code needed for the files to be pasted together

sum <- 0
count <- 0
## Identify relevant column in data frame (col 2)
## The variable file_content_1 was created in the script read-station-1.R
for (x in file_content_1[[2]]) 
{
## skip over the NA values
  if(!is.na(x))
  {
## Cumulative sum and count of sulphite values for later averaging
    sum <- sum + x
    count <- count + 1
  }  
      
}
## compute average suplhite value in station
print(sum / count)