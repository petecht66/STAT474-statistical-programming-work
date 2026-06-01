#Programmer Name: Peter Chapman
#Date: November 5, 2024
#This code reads in the Car Mileage Data Set. It then finds
#the percentiles of miles per gallon, regardless of country. 
#Then it finds the ranks and creates a new data frame with ranks.
#Summary values are then found using this data frame. Finally, 
#the new data frame is used to find percentiles and summaries
#for the miles per gallon of both countries separately.

#reading in CSV data set to data frame
mpg<-read.csv("https://raw.githubusercontent.com/petecht66/STAT474-statistical-programming-work/refs/heads/main/chapters-456-measures-of-center-and-variability/data/car_mileage.csv")
mpg

#0, 25th, 50th, 75th, and 100th percentiles of mpg,
#regardless of country
mpg_Percentiles<-quantile(mpg$MPG)
mpg_Percentiles

#minimum miles per gallon, regardless of data set
mpg_min<-min(mpg$MPG)
mpg_min

#maximum miles per gallon, regardless of data set
mpg_max<-max(mpg$MPG)
mpg_max

#Calculating ranks, creating new data frame
Ranks<-rank(mpg$MPG)
mpg_with_ranks<-data.frame(mpg, Ranks)
mpg_with_ranks

#Summary values of mpg_with_ranks data frame
Summary_mpg_all<-summary(mpg_with_ranks$MPG)
Summary_mpg_all

#US percentiles using mpg_with_ranks data frame
US_Percentiles<-with(mpg_with_ranks, quantile(MPG[Country=="United States"]))
US_Percentiles

#Japan percentiles using mpg_with_ranks data frame
JP_Percentiles<-with(mpg_with_ranks, quantile(MPG[Country=="Japan"]))
JP_Percentiles

#US summary using mpg_with_ranks data frame
US_Summary<-with(mpg_with_ranks, summary(MPG[Country=="United States"]))
US_Summary

#Japan summary using mpg_with_ranks data frame
JP_Summary<-with(mpg_with_ranks, summary(MPG[Country=="Japan"]))
JP_Summary