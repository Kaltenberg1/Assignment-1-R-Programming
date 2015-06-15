## This script replicates the script used to print the average sulfite value for station 1
## this approach was chosen over an alternative approach of combining all elements
## of the sulfite column for the first two monitoring stations, and then
## computing the average value of the combined column values. The main advantage of the approach
## taken here is simplicity: it avoids the need to learn how to combine 
## column values from two different files, which would require a knowledge of methods
## for determining the row containing the last column value in one of the files, etc.

sum <- 0
count <- 0
## Identify relevant column in data frame (col 2)
## The variable file_content_1 was created in the script read-station-2.R
for (x in file_content_2[[2]]) 
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