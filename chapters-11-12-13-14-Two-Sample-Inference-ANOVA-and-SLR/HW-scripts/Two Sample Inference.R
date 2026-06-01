#Programmer Name: Peter Chapman
#Date: December 3, 2024
#This code reads in the Reality TV data set. It then uses 
#the t.test() function to conduct the hypothesis test to see
#if there is a significant difference between the baseline
#self-esteem scores and the post exposure self-esteem scores.

#Reading in Reality TV data set, creating data frame
reality_tv<-read.csv("https://raw.githubusercontent.com/petecht66/STAT474-statistical-programming-work/refs/heads/main/chapters-11-12-13-14-Two-Sample-Inference-ANOVA-and-SLR/data/RealityTV.csv")
reality_tv

#Create data frames for the two parts of the data set to be tested
baseline<-reality_tv$Baseline
post<-reality_tv$Post

#Use the t.test() function to conduct the hypothesis test to see
#if there is a significant difference between the baseline
#self-esteem scores and the post exposure self-esteem scores
#Data is paired
t.test(baseline, post, alternative="two.sided", paired=TRUE)