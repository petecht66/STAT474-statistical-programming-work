#Programmer Name: Peter Chapman
#Date: October 29, 2024
#This program reads in the Cereal data set, creates
#an avg function using a numerator and denominator,
#and determines average fat and average calories.

#reading in Excel data set
Cereal<-read.csv("https://raw.githubusercontent.com/petecht66/STAT474-statistical-programming-work/refs/heads/main/chapter-2-intro-to-R/data/Cereal.csv")
Cereal

#avg function using numerator and denominator
avg<-function(a){
  numerator<-sum(a)
  denominator<-length(a)
  average<-(numerator/denominator)
  return(average)
}

#using avg function to calculate average fat and calories
avg_fat<-avg(Cereal$Fat)
avg_Calories<-avg(Cereal$Calories)
avg_fat
avg_Calories