library(ggplot2)
library(lubridate)
library(tidyverse)

data(airquality)

head(airquality)

summary(airquality)

str(airquality)

df <- data.frame(airquality)

df[is.na(df)] <- 0

df['Norm_Solar_Rad'] <- as.data.frame(scale(df$Solar.R))

summarywithdate <- df |> 
  dplyr::mutate(Date = paste(Month, Day, "2020", sep = '-')) |> 
  dplyr::mutate(Date = lubridate::mdy(Date))


summary(summarywithdate)

ggplot(summarywithdate, aes(x = Date, y = Temp)) +
  geom_point(color = "blue", size = 2) +
  theme_minimal() +
  ggtitle("Temperature vs. Date")


ggplot(summarywithdate, aes(x = Date, y = Solar.R)) +
  geom_point(color = "red", size = 2) +
  theme_minimal() +
  ggtitle("Temperature vs. Solar radiation")

