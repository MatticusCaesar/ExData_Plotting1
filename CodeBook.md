##CodeBook for Exploratory Data Analysis, Project 1
###by: Matt Marchand
###last updated: 10/8/2014

###Data Transformation:
The R scripts for this project all use the same subset of the orginal dataset.

The subset of data includes only records found with a date of either Feb 1, 2007 or Feb 2, 2007.

The records were grabbed by using a visual skim of the data file and using the appropriate row numbers in the skip and nrow parameters.

The Date and Time columns concatenated into a single DateTime column and this is reformatted to POSIXlt format.

The original Date and Time columns are then removed, leaving the following 8 columns:

DateTime

Global_active_power

Global_reactive_power

Voltage

Global_intensity

Sub_metering_1

Sub_metering_2

Sub_metering_3

