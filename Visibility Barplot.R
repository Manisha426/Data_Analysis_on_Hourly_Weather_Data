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

unique_data <- weather_data[!duplicated(weather_data[1:10]),]
range(unique_data$visib)

library(dplyr)
ggplot(unique_data, aes(x=day, y=visib, fill=wind_speed)) +
  geom_bar(stat="identity", alpha=0.9) +
  labs(title = 'Bar Plot of Visiblity in a day',x = 'Day ',
       y = 'Visibility')+
  theme_classic()
