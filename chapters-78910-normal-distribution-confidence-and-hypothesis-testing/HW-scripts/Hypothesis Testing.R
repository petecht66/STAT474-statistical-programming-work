#Programmer Name: Peter Chapman
#Date: November 19, 2024
#This code reads in the Car Mileage Data Set. Then it conducts
#a hypothesis test to evaluate if the proportion of cars with
#mpg greater than 22 mpg is significantly different from 0.40.

#Reading in the Car Mileage Data Set, creating data frame
mpg<-read.csv("https://raw.githubusercontent.com/petecht66/STAT474-statistical-programming-work/refs/heads/main/chapters-78910-normal-distribution-confidence-and-hypothesis-testing/data/car_mileage2.csv")
mpg

#function to conduct hypothesis test for proportion
#uses sprintf function to have 2 decimal places in matrix
hypoth_ne_p<-function(a,b){
  n_mpg<-length(a)
  x_gt22<-sum(a>22)
  phat_gt22<-round(x_gt22/n_mpg, 2)
  p0<-round(b, 2)
  se_gt22<-round(sqrt(p0*(1-p0) / n_mpg), 2)
  z_gt22<-round((phat_gt22-p0) / se_gt22, 2)
  pvalue_gt22<-round(2*pnorm(-abs(z_gt22)), 4)
  col1<-c("Null:","Alt:","phat:","Standard Error:","Test Statistic:","P-value:")
  col2<-c(sprintf("=%.2f", p0), sprintf("not equal to %.2f", p0), phat_gt22, se_gt22, z_gt22, pvalue_gt22)
  results_p_gt22<-cbind(col1, col2)
  return(results_p_gt22)
}

hypoth_ne_p(mpg$MPG, 0.40)     