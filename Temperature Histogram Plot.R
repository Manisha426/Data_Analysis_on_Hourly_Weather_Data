#Import dataset
data <- read.csv("D:/Manisha Files/4th sem coursse/PEDA Aryan sir/Hourly weather data.csv", TRUE, ",")
data
#Cleaning data
str(data)
weather_data <-data[complete.cases(data), ] #Handling NA/missing values
str(weather_data)
weather_data <- na.omit(data)
print(weather_data)
summary(weather_data)
#removing all duplicates from dataset
unique_data <- weather_data[!duplicated(weather_data),]
unique_data
#Filtering data
plot_data <- unique_data[(500:1500),]
plot_data

ggplot(plot_data, aes(x=temp))+
  geom_histogram(binwidth = 6, color="red", aes(fill=..count..), position = "dodge",
                 alpha=.5)+
  scale_fill_gradient("Count", low="green", high="red")+
  ggtitle("Temperature Plot")+
  ylab("Frequency of Temperature")+
  xlab("Temperature in Celsius")+
  theme_bw()
