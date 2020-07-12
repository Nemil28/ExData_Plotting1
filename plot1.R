#Load in the data set

data <- read.csv("~/ExData_Plotting1/household_power_consumption.txt", header=TRUE, sep=";")
names(data) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")

#Subset the data for the required observations

subdata <- subset(data,Date=="1/2/2007" | Date =="2/2/2007")

#Open the PNG graphics device for the following plot

png(file = "plot1.png", height = 480, width = 480)
hist(as.numeric(as.character(subdata$Global_active_power)), col = "red", xlab = "Global Active Power (Kilowatts)", main = "Global Active Power")
dev.off()