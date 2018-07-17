par(mfrow=c(2,2), mar=c(4,4,2,1), oma=c(0,0,2,0))
with(t, {
  plot(Global_active_power~dateTime, type="l", 
       ylab="Global Active Power (kilowatts)", xlab="")
  plot(Voltage~dateTime, type="l", 
       ylab="Voltage(volt)", xlab="")
  with(t, {
    plot(Sub_metering_1~dateTime, type= "l",
         ylab="Global Active Power (kilowatts)", xlab = "")
    lines(Sub_metering_2~dateTime,col='Green')
    lines(Sub_metering_3~dateTime,col= 'Pink')
  })
  legend("topright", col=c("Black", "Green", "Pink"), lwd=c(1,1,1), 
         c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  plot(Global_reactive_power~dateTime, type="l", 
       ylab="Global Rective Power (kilowatts)",xlab="")
})





