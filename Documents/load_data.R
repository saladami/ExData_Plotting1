data <- read.table("household_power_consumption.txt",
                   header = TRUE,
                   sep = ";",
                   colClasses = c("character", "character", rep("numeric",7)),
                   na = "?")
power <- data
dates <- c("2/2/2007", "1/2/2007")
#strip out any data from days that are not Feb. 1st 2007 or Feb 2nd 2007
power <- power[which(power$Date %in% dates),]

#combine date and time and convert to a datetime object
power$DateTime <- strptime(paste(power$Date, power$Time), "%d/%m/%Y %H:%M:%S")

attach(power)

 

