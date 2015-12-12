## Common functions
source(file = "common_components.R")

## Download, extract and process the data using the common function
hpc_subset <- process_data()

## Prepare to save plot 5 image

## Start png device
png(filename = "figure/plot4.png")

## Create plot 4
par(mfrow = c(2, 2))
plot(hpc_subset$DateTime, hpc_subset$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")
plot(hpc_subset$DateTime, hpc_subset$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")
plot(hpc_subset$DateTime, hpc_subset$Sub_metering_1, type = "n", xlab = "", ylab = "Energy sub metering")
lines(hpc_subset$DateTime, hpc_subset$Sub_metering_1, type = "l")
lines(hpc_subset$DateTime, hpc_subset$Sub_metering_2, type = "l", col = "red")
lines(hpc_subset$DateTime, hpc_subset$Sub_metering_3, type = "l", col = "blue")
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty = "n")
plot(hpc_subset$DateTime, hpc_subset$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")

## Turn off png device
dev.off()

## All done!