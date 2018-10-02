
  localFile <- tempfile(fileext = ".csv")
  fileToRead <- "https://www2.census.gov/programs-surveys/popest/datasets/2010-2017/state/asrh/scprc-est2017-18+pop-res.csv"
  fileToRead
  #states <- read.csv(url(csvFile))
  #install.packages("httr")
  #library(httr)
  
  # -- only once 
  #GET(fileToRead, write_disk(localFile))
  localFile <- "/var/folders/yz/7kxbn9kn68z0chlvk4khdf9c0000gn/T//Rtmp9Mk1IE/file18f570e571c.csv"
  states <- read.csv(localFile)
  
  
# create a function called "readStates" that can read in a CSV file from a URL
readStates <- function()
{
  
  # 1) Read the csv file
  #csvFile <- "https://www2.census.gov/programs-surveys/popest/datasets/2010-2017/state/asrh/scprc-est2017-18+pop-res.csv"
  #states <- read.csv(url(csvFile))
  
  localFile <- tempfile(fileext = ".csv")
  fileToRead <- "https://www2.census.gov/programs-surveys/popest/datasets/2010-2017/state/asrh/scprc-est2017-18+pop-res.csv"
  #states <- read.csv(url(csvFile))
  #install.packages("httr")
  #library(httr)
  
  # -- only once 
  #GET(fileToRead, write_disk(localFile))
  localFile <- "/var/folders/yz/7kxbn9kn68z0chlvk4khdf9c0000gn/T//Rtmp9Mk1IE/file18f570e571c.csv"
  states <- read.csv(localFile)
  
  
  # remove rows that not needed
  # -- first row is the total for the US, we do not need that
  states <- states[-1,]
  # -- last row is Puerto Rico, it's not a state
  num.row <- nrow(states)
  states <- states[-num.row,]
  
  #remove the first for columns
  states <- states[,-1:-4]
  
  # change names for remaining columns
  colnames(states)<-c("stateName", "population", "popOver18","percentOver18")
  
  # return the results
  return(states)
}

