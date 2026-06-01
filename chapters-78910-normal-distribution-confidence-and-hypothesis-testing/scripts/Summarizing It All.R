#Listing packages to allow for work in VS Code 6-1-2026
library(moments)
library(ggplot2)

#Read in data set
bld_pressure2<-read.csv("https://raw.githubusercontent.com/petecht66/STAT474-statistical-programming-work/refs/heads/main/chapters-78910-normal-distribution-confidence-and-hypothesis-testing/data/blood_pressure2.csv")
bld_pressure2

num_col_bld_1<-length(bld_pressure2)
num_col_bld_2<-ncol(bld_pressure2)
num_col_bld_1
num_col_bld_2

num_row_bld_1<-length(bld_pressure2$Subj)
num_row_bld_1
num_row_bld_2<-nrow(bld_pressure2)
num_row_bld_2
num_col_bld_3<-NROW(bld_pressure2$Subj)
num_col_bld_3

num_not_missing_dbp<-length(na.omit(bld_pressure2$dbp))
num_not_missing_dbp

num_m<-sum(bld_pressure2$Gender=="M")
num_m
num_f<-sum(bld_pressure2$Gender=="F")
num_f

n_f_DrugB<-with(bld_pressure2, sum(Gender=="F" & Drug=="Drug B"))
n_f_DrugB

sk_dbp<-skewness(na.omit(bld_pressure2$dbp))
sk_dbp

ggplot(bld_pressure2, aes(x=dbp)) + 
  geom_histogram(color="white", fill="orange", binwidth=2.5)

ggplot(bld_pressure2, aes(x=dbp)) +
  geom_histogram(color="White", fill="violet", binwidth=2.5) +
  facet_wrap(vars(Gender))

drugtype_freq<-table(bld_pressure2$Drug)
drugtype_freq

drugtype_relfreq<-round(prop.table(drugtype_freq), 2)
drugtype_relfreq

cum_freq_drugtype<-cumsum(drugtype_freq)
cum_freq_drugtype

cum_relfreq_drugtype<-cumsum(drugtype_relfreq)
cum_relfreq_drugtype

dbp_freq_table<-hist(bld_pressure2$dbp, plot=F, breaks=5)
dbp_freq_table$breaks
dbp_freq_table$counts
dbp_freq_table$mids

dbp_freq_matrix<-matrix(c(dbp_freq_table$mids, dbp_freq_table$counts), ncol=2)
dbp_freq_matrix

dbp_freq_frame<-data.frame(dbp_freq_matrix)
colnames(dbp_freq_frame)<-c("DBP Class Midpoint", "Frequency")
dbp_freq_frame

stem(bld_pressure2$dbp)

bp_both<-subset(bld_pressure2, select=c(dbp, sbp))
bp_stats<-summary(bp_both)
bp_stats





