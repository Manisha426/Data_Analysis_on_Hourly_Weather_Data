#Import data
data <- read.csv("D:/Manisha Files/4th sem coursse/PEDA Aryan sir/Hourly weather data.csv", TRUE, ",")
data

#install packages
install.packages("tidyverse")
install.packages("margrittr")
install.packages("ggplot2")
install.packages("tibble")
install.packages("dplyr")

#Data Cleaning
weather_data <-data[complete.cases(data), ] #Handling NA/missing values
str(weather_data)
weather_data <- na.omit(data)
print(weather_data)
summary(weather_data)

#removing all duplicates from dataset
unique_data <- weather_data[!duplicated(weather_data),]
unique_data

ggplot(unique_data, aes(x=dewp))+
  geom_histogram(binwidth = 3, color="brown", aes(fill=..count..),
                 alpha=.4, position = "dodge")+
  scale_fill_gradient("Dewp", low="green", high="brown")+
  ggtitle("Dewp Plot")+
  ylab("Frequency")+
  xlab("Dewp Point")+
  theme_bw()
