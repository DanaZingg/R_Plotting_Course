input <- read.table("household_power_consumption.txt",skip = 66637, nrow = 2880, sep = ";",col.names = colnames(read.table("household_power_consumption.txt",nrow = 1, header = TRUE, sep=";")))
date.time <- strptime(paste(input$Date, input$Time), format='%d/%m/%Y %H:%M:%S')
cbind(date.time,input)-> d
plot(d$date.time,d[,4],type="l",ylab="Global Active Power (kilowatts)",xlab="",xaxt="n")
axis(1, at=c(min(d$date.time), min(d$date.time)+86400,  min(d$date.time)+2*86400),labels=c("Thu", "Fri", "Sat")) 
dev.copy(png,file="plot2.png")
dev.off()
