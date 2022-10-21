  #Import data
data <- read.csv("Hourly weather data.csv", TRUE, ",")
data
#To view csv file
library(tidyverse)
library(tidyr)
view(data)

install.packages("sparklyr")
library(sparklyr)
options(na.omit.cache = FALSE)

#Cleaning data
str(data)
weather_data <- na.omit(data)
view(weather_data)
str(weather_data)
print(weather_data)
summary(weather_data)

unique_data <- data[!duplicated(data),]
view(unique_data)
plot_data <- unique_data[(1000:2000),]
plot_data

ggplot(plot_data, aes(x=visib, y=wind_gust, fill=origin)) + 
  geom_boxplot() +
  facet_wrap(~visib, scale="free")+
  ggtitle("Wind_gust vs visibility boxplot") +
  xlab("Visibility")+
  ylab("wind_gust")+
  theme_bw()
