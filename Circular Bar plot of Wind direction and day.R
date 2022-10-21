#Import data
data <- read.csv("D:/Manisha Files/4th sem coursse/PEDA Aryan sir/Hourly weather data.csv", TRUE, ",")
data
#To view csv file
library(tidyverse)
view(data)
#Cleaning data
str(data)
weather_data <-data[complete.cases(data), ] #Handling NA/missing values
str(weather_data)
weather_data <- na.omit(data)
print(weather_data)
summary(weather_data)

library(ggplot2)
library(tidyverse)

unique_data <- weather_data[!duplicated(weather_data),]
unique_data

plot_data <- unique_data[(1450:1700),]
plot_data

library(dplyr)
ggplot(plot_data, aes(x=reorder(day, wind_dir), y=wind_dir, fill=wind_dir)) +
  geom_bar(stat="identity", alpha=0.9) +
  ylim(-25,400)+
  coord_polar(start = 0) +
  labs(title = 'Circular Bar Plot between Wind Direction and day',x = 'Day',
       y = 'Wind Direction')

