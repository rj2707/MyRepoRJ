#The dataset is downloaded from the UCI website and saved in the following destination folder
#Reading the dataset
r = read.table("C:/Users/purva/Desktop/ESSENTIALS/Coursera/household_power_consumption.txt", sep = ";", header = TRUE)
attach(r)


#Creating a subset of data with respect to the mentioned dates
req.dates = c("1/2/2007", "2/2/2007")
data = subset(r, Date == req.dates, select = Date:Sub_metering_3)

#Combining the date and time variables
data$Days = strptime(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S")   
data$Days = as.POSIXct(data$Days)
