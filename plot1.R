data <- read.table("C:/Coursera/plots/household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
februarydata <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
hist(februarydata$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (Kilowatts)")
dev.copy(png, file = "plot1.png", height = 480, width = 480)