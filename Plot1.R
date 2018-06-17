## Creating data frame
house_df <- fread(
    "household_power_consumption.txt"
)

fix_date <- as.Date(house_df$Date, format = "%d/%m/%Y")
house_df$Date <- fix_date

new_df <- house_df[house_df$Date >= "2007-02-01" & house_df$Date <= "2007-02-02",]

hist(new_df$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (killowatts)", )

## Open & Save the plot1 to plot1.png
png(file = "plot1.png")
with(new_df, hist(new_df$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (killowatts)", ))
dev.off()









