## Common functions
source(file = "common_components.R")

## Download, extract and process the data using the common function
hpc_subset <- process_data()

## Prepare to save plot 2 image

## Start png device
png(filename = "figure/plot2.png")

## Create plot 2
plot(hpc_subset$DateTime, hpc_subset$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")

## Turn off png device
dev.off()

## All done!