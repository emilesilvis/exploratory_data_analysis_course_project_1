# load program that prepares data
source("./prepare_data.R")

# call function that prepares data
data <- prepare_data()

# plot4
with(data, {
  png(filename = "plot4.png")
  par(mfrow = c(2, 2))
  
  # 1st plot
  y <- data$Global_active_power
  x <- strptime(paste(data$Date, data$Time), "%Y-%m-%d %H:%M:%S")
  plot(x, y, type = "l", ylab = "Global Active Power", xlab = "")

  #2nd plot
  y <- data$Voltage
  x <- strptime(paste(data$Date, data$Time), "%Y-%m-%d %H:%M:%S")
  plot(x, y, type = "l", ylab = "Voltage", xlab = "datetime")
  
  #3rd plot
  x <- strptime(paste(data$Date, data$Time), "%Y-%m-%d %H:%M:%S")
  plot(x, data$Sub_metering_1, type = "n", ylab = "Energy sub metering", xlab = "")
  lines(x, data$Sub_metering_1, col = "black")
  lines(x, data$Sub_metering_2, col = "red")
  lines(x, data$Sub_metering_3, col = "blue")
  legend("topright", bty = "n", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  
  #4th plot
  y <- data$Global_reactive_power
  x <- strptime(paste(data$Date, data$Time), "%Y-%m-%d %H:%M:%S")
  plot(x, y, type = "l", ylab = "Global_reactive_power", xlab = "datetime")
  
  dev.off()
  
})
