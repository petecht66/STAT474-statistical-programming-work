# Read in the Males.csv and Females.csv files
Males<-read.csv("https://raw.githubusercontent.com/petecht66/STAT474-statistical-programming-work/refs/heads/main/chapter-2-intro-to-R/data/Males.csv")
Females<-read.csv("https://raw.githubusercontent.com/petecht66/STAT474-statistical-programming-work/refs/heads/main/chapter-2-intro-to-R/data/Females.csv")
Males
Females

All<-rbind(Males, Females)
All

ssize_All<-nrow(All)
ssize_All

ssize_pain<-length(All$pain)
ssize_pain

avg_all<-mean(All$pain)
avg_all

avg_m<-mean(All$pain[1:15])
avg_f<-mean(All$pain[16:33])
avg_m
avg_f

type<-c("All", "Males", "Females")
type
combine<-rbind(avg_all,avg_m,avg_f)
combine

Averages<-data.frame(cbind(type, combine))
Averages
write.csv(Averages, "Averages.csv")

