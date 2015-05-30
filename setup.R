## This script sets up for a working session. 
# It initializes all relevant variables.
# Must clean up global enviroment to avoid the new script using variable values from other scripts


## The following line removes all variables from the global environment
rm(list = ls())


## The following line sets up the resource path. This points to the directory for storing input data.
resource_path <- "~/Resources/Assignment-1-R-Programming"
