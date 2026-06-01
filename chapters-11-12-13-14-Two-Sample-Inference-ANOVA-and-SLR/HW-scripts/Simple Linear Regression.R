#Programmer Name: Peter Chapman
#Date: December 3, 2024
#This code reads in the Sleep.csv data set. It then creates the sleep data frame,
#and uses it to create a scatter plot of brain weight vs total sleep, finds the Least
#Squares Regression Model, and then predicts total sleep when brain weight is 100 and when
#brain weight is 500.

#Reads in Sleep data set, creates sleep data frame
sleep<-read.csv("https://raw.githubusercontent.com/petecht66/STAT474-statistical-programming-work/refs/heads/main/chapters-11-12-13-14-Two-Sample-Inference-ANOVA-and-SLR/data/Sleep.csv")
sleep

#Create a scatter plot of brain weight vs total sleep
ggplot(sleep, aes(x=Brain_Weight, y=Total_Sleep))+
  geom_point()+geom_smooth(method=lm)+
  ggtitle("Linear Relationship between Brain Weight\n
          and Total Sleep")+
  labs(x="Brain Weight", y="Total Sleep")+
  theme(plot.title = element_text(hjust=.5))

#Finding the Least Squares Regression Model
LSRM<-lm(Total_Sleep~Brain_Weight, data=sleep)
summary(LSRM)

#Predicting total sleep when brain weight is 100 and when brain weight is 500
predict(LSRM, data.frame(Brain_Weight=c(100, 500)))