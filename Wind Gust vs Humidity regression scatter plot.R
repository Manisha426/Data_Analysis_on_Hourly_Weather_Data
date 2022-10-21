#Import data
data <- read.csv("D:/Manisha Files/4th sem coursse/PEDA Aryan sir/Hourly weather data.csv", TRUE, ",")
data
#To view csv file
view(data)
#Cleaning data
str(data)
weather_data <-data[complete.cases(data), ] #Handling NA/missing values
str(weather_data)
weather_data <- na.omit(data)
print(weather_data)
summary(weather_data)
#filtering data
unique_data <- weather_data[!duplicated(weather_data),]
unique_data
#loadind packages to plot
library(ggplot2)
library(tidyverse)
#Visualization plot

ggplot(
  unique_data,
  aes(humid, wind_gust, color = factor(month))
) +geom_point()+
  geom_smooth(method='lm', se=FALSE)+
  scale_color_viridis_d() +
  labs(title="Wind Gust Vs humidity", x = "Humidity", y = "Wind Gust") +
  theme_bw()

