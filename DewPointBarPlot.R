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

unique_data <- weather_data[!duplicated(weather_data),]%>% filter(dewp>60)
unique_data

ggplot(unique_data, aes(x=as.factor(dewp), fill=as.factor(origin) )) + 
  geom_bar( ) +
  scale_fill_hue(c = 30) +
  ylim(0,40)+
  labs(title = "Dewpoint Bar plot", x="Dewpoint", y="Frequeny")+
  theme_bw()
?scale_fill_hue
