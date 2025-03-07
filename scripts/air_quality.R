library(ggplot2)
library(lubridate)

data(airquality)

head(airquality)

summary(airquality)

str(airquality)

df <- data.frame(airquality)

df[is.na(df)] <- 0

df['Norm_Solar_Rad'] <- as.data.frame(scale(df$Solar.R))

summary(df)

ggplot(df, aes(x = Solar.R, y = Temp)) +
  geom_point(color = "blue", size = 2) +
  theme_minimal() +
  ggtitle("Temperature vs. Solar radiation)")

df
