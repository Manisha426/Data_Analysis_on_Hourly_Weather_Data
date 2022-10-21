#Import data
data <- read.csv("Hourly weather data.csv", TRUE, ",")
data
str(data)
#install packages
install.packages("tidyverse")
install.packages("margrittr")
install.packages("ggplot2")
install.packages("tibble")
install.packages("dplyr")

library(tidyverse)
library(margrittr)
library(ggplot2)
library(tibble)
library(dplyr)

"""    
Error
#Data Cleaning
weather_data <- data[complete.cases(data), ] #Handling NA/missing values
str(weather_data)
weather_data <- na.omit(data)
print(weather_data)
summary(weather_data)
"""

#removing all duplicates from dataset
unique_data <- data[!duplicated(data)]
view(unique_data)

??GGally
install.packages("GGally")
install.packages("ggpairs")
library(GGally)
library(ggpairs)
unique_data%>%ggpairs(columns=5:7, aes(color=origin)) + 
  ggtitle("Anderson's weather Data")

