#Import dataset
data <- read.csv("D:/Manisha Files/4th sem coursse/PEDA Aryan sir/Hourly weather data.csv", TRUE, ",")
data
#Cleaning data
weather_data <-data[complete.cases(data), ] #Handling NA/missing values
str(weather_data)
weather_data <- na.omit(data)
print(weather_data)
summary(weather_data)
#removing all duplicates from dataset
unique <- weather_data[!duplicated(weather_data[1450:1500,]),]
unique

ggplot(unique, aes(x=day, fill=as.factor(unique$origin))) +
  geom_density(alpha=0.6, color="cyan")+
  scale_fill_brewer(palette="Dark2")+
  ggtitle("Day Density Plot")+
  labs(x="Day", y="Density")+
  facet_wrap(~origin, scale="free")+
  theme_bw()
?scale_fill_brewer
