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

unique_data <- weather_data[!duplicated(weather_data),]
unique_data

library(ggplot2)
library(hrbrthemes)
library(viridis)

unique_data %>%
  ggplot( aes(x=wind_dir, y=pressure, fill="purple")) +
  geom_boxplot() +
  scale_fill_viridis(discrete = TRUE, alpha=0.9) +
  geom_jitter(color="brown", size=0.2, alpha=0.6) +
  theme_ipsum() +
  theme(
    legend.position="bottom",
    plot.title = element_text(size=11)
  ) +
  ggtitle("Jitter Boxplot") +
  xlab("Wind Direction")+
  ylab("Pressure")



       