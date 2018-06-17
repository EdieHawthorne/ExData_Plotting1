## Open & Save the plot2 to plot2.png
new_date <- paste(new_df$Date, new_df$Time)
new_df$Datetime <- as.POSIXct(strptime(new_date, "%Y-%m-%d %H:%M:%S"))
png(file = "plot2.png")
with(new_df, plot(new_df$Datetime, new_df$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (killowatts)"))
dev.off()