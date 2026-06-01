#Programmer Name: Peter Chapman
#Date: December 3, 2024
#This code reads in the MPG data set, creates the cars data frame, and then
#uses the cars data frame to conduct a hypothesis test to evaluate if there is a
#significant difference between the average gas mileage of cars manufactured
#in the US and cars manufactured in Japan. This test assumes unequal variances.

#Read in the MPG data set and creates the cars data frame.
cars<-read.csv("https://raw.githubusercontent.com/petecht66/STAT474-statistical-programming-work/refs/heads/main/chapters-11-12-13-14-Two-Sample-Inference-ANOVA-and-SLR/data/mpg.csv")
cars

#Using cars data frame to conduct a hypothesis test to evaluate if there is a
#significant difference between the average gas mileage of cars manufactured
#in the US and cars manufactured in Japan. This test assumes unequal variances.
with(cars, t.test(MPG~Country, var.equal=FALSE, alternative="two.sided", mu=0))