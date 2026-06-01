#Read in data set
bld_pressure<-read.csv("https://raw.githubusercontent.com/petecht66/STAT474-statistical-programming-work/refs/heads/main/chapters-456-measures-of-center-and-variability/data/blood_pressure.csv")
bld_pressure

#create a vector of dbp values and find the mean dbp for all patients
dbp<-bld_pressure[,5]
dbp
dbp_mean<-mean(dbp)
dbp_mean

#or specify the variable using the $ notation
dbp_avg<-mean(bld_pressure$dbp)
dbp_avg

#or use the with function
avg_dbp<-with(bld_pressure, mean(dbp))
avg_dbp

#create two separate data frames, one for each gender
dbp_male<-bld_pressure[(bld_pressure$Gender=="M"),]
dbp_male

dbp_female<-bld_pressure[(bld_pressure$Gender=="F"),]
dbp_female

#Find the average dbp for Males and Females separately
m_dbpavg<-mean(dbp_male$dbp)
f_dbpavg<-mean(dbp_female$dbp)
m_dbpavg
f_dbpavg

#Find the average dbp for Males and Females using original data frame
avgbp_m<-with(bld_pressure, mean(dbp[Gender=="M"]))
avgbp_f<-with(bld_pressure, mean(dbp[Gender=="F"]))
avgbp_m
avgbp_f

#Median using median function
dbp_median<-median(dbp)
dbp_median

#Median using $ notation
dbp_med<-median(bld_pressure$dbp)
dbp_med

#Median using with function
median_dbp<-with(bld_pressure, median(dbp))
median_dbp

#Median of Males and Females separately
m_dbpmed<-median(dbp_male$dbp)
f_dbpmed<-median(dbp_female$dbp)
m_dbpmed
f_dbpmed

#Find the median dbp for Males and Females using original data frame
meddbp_m<-with(bld_pressure, median(dbp[Gender=="M"]))
meddbp_f<-with(bld_pressure, median(dbp[Gender=="F"]))
meddbp_m
meddbp_f

#Mode using the dbp vector
dbp_mode<-mfv(dbp)
dbp_mode

#Mode using dollar sign notation
dbpmode<-mfv(bld_pressure$dbp)
dbpmode

#Mode using with
mode_dbp<-with(bld_pressure, mfv(dbp))
mode_dbp

#Mode of Female and Male data separately
m_dbpmode<-mfv(dbp_male$dbp)
f_dbpmode<-mfv(dbp_female$dbp)
m_dbpmode
f_dbpmode

#Find the mode dbp for Males and Females using original data frame
modedbp_m<-with(bld_pressure, mfv(dbp[Gender=="M"]))
modedbp_f<-with(bld_pressure, mfv(dbp[Gender=="F"]))
modedbp_m
modedbp_f

#Mean, median, mode dbp for females taking drug A
avgdbp_F_A<-with(bld_pressure, mean(dbp[Gender=="F" & Drug=="Drug A"]))
meddbp_F_A<-with(bld_pressure, median(dbp[Gender=="F" & Drug=="Drug A"]))
modedbp_F_A<-with(bld_pressure, mfv(dbp[Gender=="F" & Drug=="Drug A"]))
avgdbp_F_A
meddbp_F_A
modedbp_F_A






