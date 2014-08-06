# load program that prepares data
source("./prepare_data.R")

# call function that prepares data
data <- prepare_data()

# plot1
with(data, {
  png(filename = "plot1.png")
  hist(data$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
  dev.off()
})

