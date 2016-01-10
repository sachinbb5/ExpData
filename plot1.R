pc<-read.table('household_power_consumption.txt',header=TRUE,
               sep=';',na.strings='?')
spc <- pc[pc$Date=='1/2/2007' | pc$Date=='2/2/2007',]
spc$DateTime <- strptime(paste(spc$Date , spc$Time),format="%d/%m/%Y %H:%M:%S")


# call plot1

 png(filename='plot1.png',width=480,height=480,units='px')
 hist( pc$Global_active_power, main = "Global Active Power"
       , xlab='Global Active Power(kilowatts)'
       , ylab= 'Frequency'
       , col='red' )
         
 x<-dev.off()
