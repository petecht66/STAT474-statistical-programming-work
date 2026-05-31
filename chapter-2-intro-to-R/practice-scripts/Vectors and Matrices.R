tens<-seq(0, 100, 10)
tens

towns<-c("Roma", "Venezia", "Firenze", "Pisa")
towns

# Create a matrix to find the slope and y-intercept for
# the Least Squares Regression Equation
x<-c(1.7,1.5,2.8,5.0,1.3,2.2,1.3)
y<-c(368,340,665,954,331,556,376)
xsq<-x^2
ysq<-y^2
xy<-x*y
matrix1<-cbind(x, y, xsq, ysq, xy)
matrix1

sumx<-sum(matrix1[,1])
sumy<-sum(matrix1[,2])
sumxsq<-sum(matrix1[,3])
sumysq<-sum(matrix1[,4])
sumxy<-sum(matrix1[,5])

slopenumerator<-(7*sumxy)-(sumx*sumy) # numerator of the slope formula
slopenumerator
slopedenominator<-(7*sumxsq)-sumx^2 # denominator of the slope formula
slopedenominator
slope<-slopenumerator/slopedenominator
slope
xmean<-mean(x)
xmean
ymean<-mean(y)
ymean
intercept<-ymean-(slope*xmean)
intercept

# Factors for Gender and Race
gender<-c(3,1,1,2,2,1,3,2)
race<-c(3,3,1,2,2,2,4,1)
fgender<-factor(gender)
frace<-factor(race)
fgender
frace

levels(fgender)<-c("Male","Female","Intersex")
levels(frace)<-c("Asian","Black/African American","White","Other")

fgender
frace

ages<-c(21,43,18,55,50,31,62,37)
allinfo<-list(gender_code=gender, gender=fgender, race_code=race, race=frace, age=ages)
allinfo

allinfo$age[1]

t_output<-t.test(allinfo$age, mu=40)
t_output