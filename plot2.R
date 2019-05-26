house_data <- read.table("household_power_consumption.txt",sep=";",header=TRUE,as.is=1)
subset_data <- subset(house_data, (Date %in% c('1/2/2007', '2/2/2007')))
subset_data$cons_date <- strptime(paste(subset_data$Date, subset_data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

#plot2
library(lubridate)
png("plot2.png", width = 480, height = 480)
plot(subset_data$cons_date, as.numeric(as.character(subset_data$Global_active_power)),na.rm=TRUE,type='l',xlab = "", ylab= "Global Active Power (Kilowatts)")
dev.off()