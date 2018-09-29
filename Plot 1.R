#Plot no. 1

png(filename = "Plot4.png", height = 480, width = 480)

hist(as.numeric(as.character(data$Global_active_power)), xaxt = "n", col = "red", main = "Global Active Power", xlab = "Global Active Power")
axis(1, c(0,2,4,6))

dev.off()