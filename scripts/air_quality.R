data(airquality)

head(airquality)

summary(airquality)

str(airquality)

df <- data.frame(airquality)

df[is.na(df)] <- 0

df['Norm_Solar_Rad'] <- as.data.frame(scale(df$Solar.R))

summary(df)
