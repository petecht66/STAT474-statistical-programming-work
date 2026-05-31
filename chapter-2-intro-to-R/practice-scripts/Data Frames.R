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

demog_all<-data.frame(gender, fgender, race, frace, ages)
demog_all

demog_all[8,5]
demog_all[6,]

demog_all<-edit(demog_all)
demog_all


