## Common functions
source(file = "common_components.R")

## Download, extract and process the data using the common function
hpc_subset <- process_data()

## Prepare to save plot 3 image

## Start png device
png(filename = "figure/plot3.png")

## Create plot 3
plot(hpc_subset$DateTime, hpc_subset$Sub_metering_1, type = "n", xlab = "", ylab = "Energy sub metering")
lines(hpc_subset$DateTime, hpc_subset$Sub_metering_1, type = "l")
lines(hpc_subset$DateTime, hpc_subset$Sub_metering_2, type = "l", col = "red")
lines(hpc_subset$DateTime, hpc_subset$Sub_metering_3, type = "l", col = "blue")
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

## Turn off png device
dev.off()

## All done!