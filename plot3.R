## Open & Save the plot3 to plot3.png
png(file = "plot3.png")
with(new_df, plot(new_df$Datetime, new_df$Sub_metering_1, type = "l", xlab = "", ylab = "Energy Sub metering"))
lines(new_df$Datetime, new_df$Sub_metering_2, type = "l", col = "red")
lines(new_df$Datetime, new_df$Sub_metering_3, type = "l", col = "blue")
legend(
    "topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
    col = c("black", "red", "blue"),
    lty = 1
)
dev.off()