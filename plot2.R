# load program that prepares data
source("./prepare_data.R")

# call function that prepares data
data <- prepare_data()

# plot2
with(data, {
  png(filename = "plot2.png")
  y <- data$Global_active_power
  x <- strptime(paste(data$Date, data$Time), "%Y-%m-%d %H:%M:%S")
  plot(x, y, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")
  dev.off()
})