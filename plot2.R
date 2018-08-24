data <- read.table("C:/Coursera/plots/household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
februarydata <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
days <- strptime(paste(februarydata$Date, februarydata$Time, sep = " "), "%d/%m/%Y %H:%M:%S")
plot(days, februarydata$Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)")
dev.copy(png, file = "plot2.png", height = 480, width = 480)
dev.off()
