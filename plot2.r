hpc <- read.csv("household_power_consumption.txt", head=TRUE, sep=";")
hpc <- hpc[(as.Date(hpc$Date, "%d/%m/%Y") >= "2007-02-01") & (as.Date(hpc$Date, "%d/%m/%Y") <= "2007-02-02"),]
DateTime <- strptime(paste(hpc$Date, hpc$Time), "%d/%m/%Y %H:%M:%S")
png(file="plot2.png")
GAP <- as.numeric(as.character(hpc$Global_active_power))
plot(DateTime, GAP, type="l" ,xlab="", ylab="Global Active Power (kilowatts)" )
dev.off()
