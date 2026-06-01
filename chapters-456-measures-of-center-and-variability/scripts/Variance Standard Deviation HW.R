#Programmer Name: Peter Chapman
#Date: November 5, 2024
#This code reads in the Car Mileage Data Set. It then finds
#the variance and standard deviation for the miles per gallon,
#regardless of country. Finally, the variance and standard deviation
#are calculated for MPG of both countries separately.

#reading in CSV data set to data frame
mpg<-read.csv("https://raw.githubusercontent.com/petecht66/STAT474-statistical-programming-work/refs/heads/main/chapters-456-measures-of-center-and-variability/data/car_mileage.csv")
mpg

#variance of miles per gallon, regardless of country
mpg_var<-var(mpg$MPG)
mpg_var

#standard deviation of miles per gallon, regardless of country
mpg_sd<-sd(mpg$MPG)
mpg_sd

#variance of miles per gallon for USA
US_var_mpg<-with(mpg, var(MPG[Country=="United States"]))
US_var_mpg

#standard deviation of miles per gallon for USA
US_sd_mpg<-with(mpg, sd(MPG[Country=="United States"]))
US_sd_mpg

#variance of miles per gallon for Japan
JP_var_mpg<-with(mpg, var(MPG[Country=="Japan"]))
JP_var_mpg

#standard deviation of miles per gallon for Japan
JP_sd_mpg<-with(mpg, sd(MPG[Country=="Japan"]))
JP_sd_mpg

