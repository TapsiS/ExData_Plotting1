
#-------extract and reading fle
unzip <- unzip(zipfile="~/Documents/Courses/JHU_Data Science/4_Exploratory Data Analysis/proj1/exdata-data-household_power_consumption.zip")
fileread <- read.table("household_power_consumption.txt", sep=";", header=TRUE, stringsAsFactors =FALSE)
data1 <- fileread[fileread$Date %in% c("1/2/2007","2/2/2007") ,]
#--------creating plot
png("plot1.png", width = 480, height = 480)
plot <- hist(as.numeric(data1$Global_active_power), col="red",
     main = "Global Active Power",xlab="Global Active Power (kilowatts)")
dev.off()
