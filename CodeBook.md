##CodeBook for Exploratory Data Analysis, Project 1
###by: Matt Marchand
###last updated: 10/8/2014

###Data Transformation:
The R scripts for this project all use the same subset of the orginal dataset.

The subset of data includes only records found with a date of either Feb 1, 2007 or Feb 2, 2007.

The records were grabbed by using a visual skim of the data file and using the appropriate row numbers in the skip and nrow parameters.

The Date and Time columns concatenated into a single DateTime column and this is reformatted to POSIXlt format.

The original Date and Time columns are then removed, leaving the following 8 columns:

DateTime: Date & Time string in POSIXlt format)
Global_active_power: household global minute-averaged active power (in kilowatt)
Global_reactive_power: household global minute-averaged reactive power (in kilowatt)
Voltage: minute-averaged voltage (in volt)
Global_intensity: household global minute-averaged current intensity (in ampere)
Sub_metering_1: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered).
Sub_metering_2: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light.
Sub_metering_3: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.

