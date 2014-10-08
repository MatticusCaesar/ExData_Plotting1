# Exploratory Data Analysis - Project 1
# by: Matt Marchand
# Last Updated: 10/8/2014

# This is the R Code for plot 4 in Project 1


##########COMMON CODE BLOCK FOR ALL PLOTX.R FILES################
# Load necessary libraries
library(data.table)
library(datasets)

# Set working directory (unique to my laptop) - if you try to run this, edit this line to reflect where 
# you placed the source data file
setwd("C:/Users/Matt/Desktop/Coursera/Exploratory Data Analysis/Project1")

# Read in the raw data from dates Feb 1-2, 2007.  
# The skip & nrow values are obtained through a visual skim of the data file.
# The raw data file appears to collect once every minute, 
# so over the course of 2 days
# the result should contain 2880 records
energy_data <- read.table("household_power_consumption.txt", header = FALSE, sep = ";", skip = 66637, nrows = (69517-66637))

# Read the column names need into a separate table
header_row <- read.table("household_power_consumption.txt", header = FALSE, sep = ";", nrows = 1)

# Rename the columns in the dataset
colnames(energy_data) <- unlist(header_row)

# Reformat Date & Time columns to a single column in standard internal R format
dates <- energy_data$Date
times <- energy_data$Time
datetimestrings <- paste(dates, times)
energy_data$DateTime <- strptime(datetimestrings, "%d/%m/%Y %H:%M:%S")

# Strip out original Date & Time columns
energy_data$Date <- NULL
energy_data$Time <- NULL

# Reorder columns for easy reading - not necessary, but easy for me 
# when referring back to data frame
energy_data <- energy_data[, c(8,1:7)]
######### END COMMON CODE BLOCK #################################

######### CODE FOR PLOT4 ########################################
# Open the png device
png(filename = "plot4.png", width = 480, height = 480)

# Lay out the 2x2 array of graph images, set margins, adjust text font size
par(mfrow = c(2, 2), mar = c(4, 4, 2, 2), oma = c(0, 0, 0, 0), ps = 14)

# Define the 4 graphs
with(energy_data, {
    # Upper left plot
    plot(DateTime, Global_active_power, type = "l", xlab="", ylab = "Global Active Power")
    # Upper right plot
    plot(DateTime, Voltage, type="l", xlab = "datetime", ylab = "Voltage")
    # Lower left plot
    plot(DateTime, Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
		  lines(DateTime, Sub_metering_2, col = "Red")
		  lines(DateTime, Sub_metering_3, col = "Blue")
    # Lower left plot legend annotation
		legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("Black", "Red", "Blue"), cex = 0.75, bty = "n", lty = 1)
    # Lower right plot
    plot(DateTime, Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")
	})

# Close the png device
dev.off()
######### END OF CODE FOR PLOT4 #################################
