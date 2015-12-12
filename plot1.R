## Common functions
source(file = "common_components.R")

## Download, extract and process the data using the common function
hpc_subset <- process_data()

## Prepare to save plot 1 image

## Start png device
png(filename = "figure/plot1.png")

## Create plot 1
hist(x = hpc_subset$Global_active_power, xlab = "Global Active Power (kilowatts)", main = "Global Active Power", col = "red")

## Turn off png device
dev.off()

## All done!