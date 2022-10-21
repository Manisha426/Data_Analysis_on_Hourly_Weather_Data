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

ggplot(unique_data, aes(x=precip, y=visib)) +
  geom_segment( aes(x=precip, xend=precip, y=0, yend=visib), color="grey") +
  geom_point( color="orange", size=4) +
  xlim(0.0,0.2)+
  ylim(0.0,10.0)+
  theme_light() +
  theme(
    panel.grid.major.x = element_blank(),
    panel.border = element_blank(),
    axis.ticks.x = element_blank()
  ) +
  ggtitle("Lolipop Plot")+
  xlab("Precipitation") +
  ylab("Visibility")+
    theme_classic()



