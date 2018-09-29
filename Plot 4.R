
#Plot no.4

png(filename = "Plot4.png", height = 480, width = 480)
par(mfrow = c(2,2), mar = c(4,4,4,4))

data$Global_active_power = as.numeric(as.character(data$Global_active_power))
plot(data$Days, data$Global_active_power, type = "l",xlab = " ", ylab = "Global Active Power (kilowatts)")

data$Voltage = as.numeric(as.character(data$Voltage))
plot(data$Days, data$Voltage, type = "l",xlab = " ", ylab = "Voltage")


plot(data$Days, data$Sub_metering_1, type = "l", col = "black", xlab = "  ", ylab = "Enegry sub metering")
lines(data$Days, data$Sub_metering_2, col = "red", type = "l")
lines(data$Days, data$Sub_metering_3, col = "blue", type = "l")
legend("topright", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, lwd = 2, cex = 0.5)

data$Global_reactive_power = as.numeric(as.character(data$Global_reactive_power))
plot(data$Days, data$Global_reactive_power, type = "l",xlab = " ", ylab = "Global_reactive_power")

dev.off()