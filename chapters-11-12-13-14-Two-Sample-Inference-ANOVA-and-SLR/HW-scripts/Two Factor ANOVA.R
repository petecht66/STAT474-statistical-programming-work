#Programmer Name: Peter Chapman
#Date: December 3, 2024
#This code reads in the Teaching.csv data set, creates the teach data frame,
#and conducts a Two Factor ANOVA to test for significant interaction between
#type of test and the subject being taught, if the test type has
#a significant effect on test performance, and if the subject being
#taught has a significant effect on test performance.

#Reads in the Teaching data set, creates the teach data frame
teach<-read.csv("https://raw.githubusercontent.com/petecht66/STAT474-statistical-programming-work/refs/heads/main/chapters-11-12-13-14-Two-Sample-Inference-ANOVA-and-SLR/data/Teaching.csv")
teach

#Two Factor ANOVA to test for significant interaction between
#type of test and the subject being taught, if the test type has
#a significant effect on test performance, and if the subject being
#taught has a significant effect on test performance.
twofactor_results<-aov(Score~Test_Type*Subject, data=teach)
summary(twofactor_results)