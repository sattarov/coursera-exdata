hpc <- read.csv("household_power_consumption.txt", head=TRUE, sep=";")
hpc <- hpc[(as.Date(hpc$Date, "%d/%m/%Y") >= "2007-02-01") & (as.Date(hpc$Date, "%d/%m/%Y") <= "2007-02-02"),]
hpc$Date <- as.Date(hpc$Date, "%d/%m/%Y")
hpc$Time <- strptime(hpc$Time, "%H:%M:%S")

png(file="plot1.png")
hist(as.numeric(as.character(hpc$Global_active_power)), col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")
dev.off()

