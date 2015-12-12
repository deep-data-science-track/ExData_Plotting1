## Common components for re-use

## Function to download, extract and process the data
process_data <- function() {
  ## Download and extract the file
  if (!(file.exists("data/household_power_consumption.txt"))) {
    if (!(file.exists("data/household_power_consumption.zip"))) {
      download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", destfile="data/household_power_consumption.zip")
    }
    unzip("data/household_power_consumption.zip", exdir = "data", overwrite=T)
  }
  ## Read the file
  setClass('myDate')
  setAs('character', 'myDate', function(from) as.Date(from, format = '%d/%m/%Y'))
  hpc <- read.csv("data/household_power_consumption.txt", sep = ";", na.strings = "?", colClasses = c("myDate", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"))
  ## Filter the data
  hpc_subset <- hpc[hpc$Date == '2007-02-01' | hpc$Date == '2007-02-02', ]
  hpc_subset$DateTime <- as.POSIXct(paste(hpc_subset$Date, hpc_subset$Time))
  return(hpc_subset)
}
