input <- read.table("household_power_consumption.txt",skip = 66637, nrow = 2880, sep = ";",col.names = colnames(read.table("household_power_consumption.txt",nrow = 1, header = TRUE, sep=";")))
hist(input[,3],main="Global Active Power",col="red",xlab="Global Active Power (kilowatts)")
dev.copy(png,file="plot1.png")
dev.off()