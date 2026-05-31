#Programmer Name: Peter Chapman
#Date: October 29, 2024
#This code creates vectors about cake brand, color, height,
#and average cake height. A data frame called Cakes stores all of this
#information. The difference between the height and the average height
#is calculated. The average and variance of these differences is calculated.
#Finally, a t-test is performed to test if average difference is significantly
#different from zero.

#creating initial vectors
Brand<-c(1,1,1,1,1,1,2,2,2,2,2,2)
Color<-c(3,3,2,2,1,1,2,2,1,1,3,3)
Height<-c(35.5,36,35.5,37.5,32.5,32.5,39,36.5,30.5,34.5,37,35)
Average<-c(35.4,35.4,35.4,35.4,35.4,35.4,34.9,34.9,34.9,34.9,34.9,34.9)
Brand
Color
Height
Average

#creating the factors and levels
BrandName<-factor(Brand)
CakeColor<-factor(Color)
levels(BrandName)<-c("Betty Crocker", "Duncan Hines")
levels(CakeColor)<-c("White", "Brown", "Yellow")
BrandName
CakeColor

#creating Cakes data frame from previous vectors
Cakes<-data.frame(BrandName, CakeColor, Height, Average)
Cakes

#Creating the difference vector
Diff<-(Height-Average)
Diff

#Creating second data frame with Diff included
Cakes2<-cbind(Cakes, Diff)
Cakes2

#Average difference and variance
avg_diff<-mean(Cakes2$Diff)
var_diff<-var(Cakes2$Diff)
avg_diff
var_diff

#T-test to test for significant height difference from zero
t_results<-t.test(Cakes2$Diff, mu=0)
t_results

#Writing in Cakes2.csv to working directory
write.csv(Cakes2, "Cakes2.csv")

