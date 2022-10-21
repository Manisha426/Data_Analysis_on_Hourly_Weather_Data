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
#Filter data
unique_data <- weather_data[!duplicated(weather_data[500:1500,]),]
unique_data
#Load packages
library(ggplot2)
library(hrbrthemes)
library(viridis)
#Plot

unique_data %>%
  ggplot( aes(x=temp, y=pressure, fill="voilet"))+
  geom_boxplot()+
  scale_fill_viridis(discrete = TRUE, alpha=0.8)+
  theme_ipsum()+
  theme(
    plot.title = element_text(size=11)
  )+
  labs(title="Temperature and pressure box plot",
       x="Temperature",
       y="Pressure")+
  theme_bw()
