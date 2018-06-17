## Open & Save the plot4 to plot4.png
png(file = "plot4.png")
par(mfrow=c(2,2))
plot(new_df$Datetime, new_df$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (killowatts)")
plot(new_df$Datetime, new_df$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")
plot(new_df$Datetime, new_df$Sub_metering_1, type = "l", xlab = "", ylab = "Energy Sub metering")
lines(new_df$Datetime, new_df$Sub_metering_2, type = "l", col = "red")
lines(new_df$Datetime, new_df$Sub_metering_3, type = "l", col = "blue")
legend(
    "topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
    col = c("black", "red", "blue"),
    lty = 1
)
plot(new_df$Datetime, new_df$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")
dev.off()