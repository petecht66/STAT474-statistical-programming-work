#Programmer Name: Peter Chapman
#Date: November 5, 2024
#This code reads in the Car Mileage Data Set. It then finds
#the mean, median, and mode for the miles per gallon,
#regardless of country. Finally, the mean, median, and mode
#are calculated for MPG of both countries separately.

#reading in CSV data set
mpg<-read.csv("https://raw.githubusercontent.com/petecht66/STAT474-statistical-programming-work/refs/heads/main/chapters-456-measures-of-center-and-variability/data/car_mileage.csv")
mpg

#mean for miles per gallon, regardless of country
mpg_mean<-mean(mpg$MPG)
mpg_mean

#median for miles per gallon, regardless of country
mpg_median<-median(mpg$MPG)
mpg_median

#mode for miles per gallon, regardless of country
mpg_mode<-mfv(mpg$MPG)
mpg_mode

#mean miles per gallon for USA
US_mean_mpg<-with(mpg, mean(MPG[Country=="United States"]))
US_mean_mpg

#median miles per gallon for USA
US_median_mpg<-with(mpg, median(MPG[Country=="United States"]))
US_median_mpg

#mode miles per gallon for USA
US_mode_mpg<-with(mpg, mfv(MPG[Country=="United States"]))
US_mode_mpg

#mean miles per gallon for Japan
JP_mean_mpg<-with(mpg, mean(MPG[Country=="Japan"]))
JP_mean_mpg

#median miles per gallon for Japan
JP_median_mpg<-with(mpg, median(MPG[Country=="Japan"]))
JP_median_mpg

#mode miles per gallon for Japan
JP_mode_mpg<-with(mpg, mfv(MPG[Country=="Japan"]))
JP_mode_mpg