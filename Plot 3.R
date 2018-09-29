#plot no.3

png(filename = "Plot3.png", height = 480, width = 480)

plot(data$Days, data$Sub_metering_1, type = "l", col = "black", xlab = "  ", ylab = "Enegry sub metering")
lines(data$Days, data$Sub_metering_2, col = "red", type = "l")
lines(data$Days, data$Sub_metering_3, col = "blue", type = "l")
title("Global Active Power (kilowatts)")
legend("topright", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, lwd = 2)

dev.off()