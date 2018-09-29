
#Plot no.2

png(filename = "Plot2.png", height = 480, width = 480)

data$Global_active_power = as.numeric(as.character(data$Global_active_power))
plot(data$Days, data$Global_active_power, type = "l",xlab = " ", ylab = "Global Active Power (kilowatts)")

dev.off()