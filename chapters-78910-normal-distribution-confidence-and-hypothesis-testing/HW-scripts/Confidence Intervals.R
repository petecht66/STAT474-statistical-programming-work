#Programmer Name: Peter Chapman
#Date: November 19, 2024
#This code reads in the Car Mileage Data Set. Additionally, it
#finds the 98% confidence interval for the average 
#miles per gallon for all cars in the population of cars
#manufactured regardless of country. It uses the z-test
#because sample size is 56, which is greater than 30.

#Listing packages to allow for work in VS Code 6-1-2026
library(moments)
library(tigerstats)

#Reading in Car Mileage data set, creating data frame
mpg<-read.csv("https://raw.githubusercontent.com/petecht66/STAT474-statistical-programming-work/refs/heads/main/chapters-78910-normal-distribution-confidence-and-hypothesis-testing/data/car_mileage2.csv")
mpg

#Finding the 98% confidence interval for the average 
#miles per gallon for all cars in the population of cars
#manufactured regardless of country
#Uses z-test function, because sample size is 56 (56>30)
s_mpg<-sd(na.omit(mpg$MPG))
CI_98_mean_mpg<-z.test(mpg$MPG, sigma.x=s_mpg, conf.level=.98)
CI_98_mean_mpg
CI_98_mean_mpg$conf.int
