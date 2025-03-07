# Module1_final_exercise

## Tasks done using the Air Quality dataset

### In this exercise I used the Air Quality dataset, modified it, and created two charts.


I did the followings:
- created a new repository in GitHub
- cloned the repository to my local computer
- created a *renv* environment
- created the **air_quality.R** script within the scripts folder
- within the script I included the necessary libraries
- opened a built-in *Air Quality* dataset, and created a new data frame from it
- I used some simple summary functions to display basic info about the dataframe
- by using the *is.na* function, I inserted zero values into the missing data places
- by using the *scale* function, I created the new *Norm_Solar_Rad* column in the dataframe. This column shows normalized data based on the *Solar.R* column
- by using the *dplyr* package, I created the new *Date* column from the Month and Day columns. Since the *year* information was missing from the dataset, I assumed 2020 as the year data
- I converted (type-cast) the new column to date format with the *lubridate* library
- I created a simple time-series plot chart that shows the temperature values based on the dates
- I created another time-series plot chart that displays the solar radiation values based on the dates.

### The script can be found in the /scripts folder, and named as air_quality.R.