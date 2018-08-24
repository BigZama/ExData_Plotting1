data <- read.table("C:/Coursera/plots/household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
februarydata <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
days <- strptime(paste(februarydata$Date, februarydata$Time, sep = " "), "%d/%m/%Y %H:%M:%S")
plot(days, februarydata$Sub_metering_1, type = "l", ylab = "Energy Submetering")
lines(days, februarydata$Sub_metering_2, type = "l", col = "red")
lines(days, februarydata$Sub_metering_3, type = "l", col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, lwd = 2.5, col = c("black", "red", "blue"))
dev.copy(png, file = "plot3.png", height = 480, width = 480)
dev.off()