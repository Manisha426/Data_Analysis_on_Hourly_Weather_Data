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

unique_data <- weather_data[!duplicated(weather_data),]%>%
  filter(temp>70)
unique_data

install.packages("IRdisplay")
library(ggplot2)
library(dplyr)
library(tidyr)
library(plotly)
library(IRdisplay)

unique_data %>% plot_ly(x=~wind_dir, type = 'violin',
                        box=list(visible=TRUE, width=0.5))%>%
  layout(title="Wind Direction Violin Plot",
         xaxis=list(title="Wind Direction"))%>%
  hide_legend()
