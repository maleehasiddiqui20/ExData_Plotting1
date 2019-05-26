house_data <- read.table("household_power_consumption.txt",sep=";",header=TRUE,as.is=1)
subset_data <- subset(house_data, (Date %in% c('1/2/2007', '2/2/2007')))
subset_data$cons_date <- strptime(paste(subset_data$Date, subset_data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

#plot3
png("plot3.png", width = 480, height = 480)
plot(subset_data$cons_date, as.numeric(as.character(subset_data$Sub_metering_1)),type='l',xlab = "",ylab = "Energy sub metering")
lines(subset_data$cons_date, as.numeric(as.character(subset_data$Sub_metering_2)),type = 'l',xlab = "",col="red")
lines(subset_data$cons_date, as.numeric(as.character(subset_data$Sub_metering_3)),type='l',xlab = "",col="blue")
legend("topright",pch ="______", col = c("black", "red", "blue"),legend= c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()