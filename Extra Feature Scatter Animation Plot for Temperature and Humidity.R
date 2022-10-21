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

library(ggplot2)
library(gganimate)
library(plotly)

p <- ggplot(unique_data,
            aes(x=temp, y=humid, fill=origin))+
  geom_point(aes(frame=hour, id=origin))+
  scale_x_log10()+
  facet_wrap(~month)

ggplotly(p)
