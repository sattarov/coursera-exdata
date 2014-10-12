hpc <- read.csv("household_power_consumption.txt", head=TRUE, sep=";")
hpc <- hpc[(as.Date(hpc$Date, "%d/%m/%Y") >= "2007-02-01") & (as.Date(hpc$Date, "%d/%m/%Y") <= "2007-02-02"),]
DateTime <- strptime(paste(hpc$Date, hpc$Time), "%d/%m/%Y %H:%M:%S")
su1 <- as.numeric(as.character(hpc$Sub_metering_1))
su2 <- as.numeric(as.character(hpc$Sub_metering_2))
su3 <- as.numeric(as.character(hpc$Sub_metering_3))
png(file="plot3.png")
plot(DateTime, su1, type="l", col="black", xlab="", ylab="Energy Sub Metering")
lines(DateTime, su2, type="l", col="red")
lines(DateTime, su3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, col=c("black","red","blue"))
dev.off()

