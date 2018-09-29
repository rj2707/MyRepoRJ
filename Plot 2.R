
#Plot no.2
data$Global_active_power = as.numeric(as.character(data$Global_active_power))
plot(data$Days, data$Global_active_power, type = "l",xlab = " ", ylab = "Global Active Power (kilowatts)")

