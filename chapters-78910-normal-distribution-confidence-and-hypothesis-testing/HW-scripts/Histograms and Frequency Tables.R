#Programmer Name: Peter Chapman
#Date: November 19, 2024
#This code reads in the Car Mileage Data Set. It then creates a frequency
#histogram for miles per gallon by country and then a frequency table for miles
#per gallon. It creates a stem and leaf plot for miles per gallon values, and then
#finds descriptive statistics of miles per gallon by country through a new data frame.
#Finally, probabilities are calculated using the standard normal distribution.

#Listing packages to allow for work in VS Code 6-1-2026
library(ggplot2)
library(tigerstats)

#Reading in Car Mileage data set
mpg<-read.csv("https://raw.githubusercontent.com/petecht66/STAT474-statistical-programming-work/refs/heads/main/chapters-78910-normal-distribution-confidence-and-hypothesis-testing/data/car_mileage2.csv")
mpg

#Plotting a frequency histogram for miles per gallon by country
ggplot(mpg, aes(x=MPG))+
  geom_histogram(color="yellow", fill="blue", binwidth=3)+
  facet_wrap(vars(Country))

#Producing a frequency table for miles per gallon
mileage_freq_table<-hist(mpg$MPG, plot=F, breaks=6)
mileage_freq_matrix<-matrix(c(mileage_freq_table$mids, mileage_freq_table$counts), ncol=2)
mileage_freq_matrix
mileage_tab_frame<-data.frame(mileage_freq_matrix)
colnames(mileage_tab_frame)<-c("Mileage Class Midpoints", "Frequency")
mileage_tab_frame

#Stem and leaf diagram for the miles per gallon values
stem(mpg$MPG)

#Data frame with two columns: one with the MPG for United States and
#the other with the MPG for Japan
mpg_by_country<-data.frame(mpg$MPG[mpg$Country=="United States"], mpg$MPG[mpg$Country=="Japan"])
colnames(mpg_by_country)<-c("UnitedStates", "Japan")
mpg_by_country

#Descriptive statistics of MPG for each country
summary_stats_mpg<-summary(mpg_by_country)
summary_stats_mpg

#Finding P(Z<0), with graph
prob_lt0<-pnormGC(0, region="below", graph=TRUE)
prob_lt0

#Finding P(Z>0), with graph
prob_gt0<-pnormGC(0, region="above", graph=TRUE)
prob_gt0

#Finding P(-1.96<Z<1.96) to 2 decimal places, with graph
prob_btw1.96<-round(pnormGC(c(-1.96, 1.96), region="between", graph=TRUE), 2)
prob_btw1.96