#Listing packages to allow for work in VS Code 6-1-2026
library(moments)
library(tigerstats)

#read in the blood pressure readings for the patients receiving Placebo.
bld_placebo<-read.csv("https://raw.githubusercontent.com/petecht66/STAT474-statistical-programming-work/refs/heads/main/chapters-78910-normal-distribution-confidence-and-hypothesis-testing/data/blood_pressure_placebo.csv")
bld_placebo

xbar_dbp<-mean(bld_placebo$dbp)
stdev_dbp<-sd(bld_placebo$dbp)
n_dbp<-length(bld_placebo$dbp)
se_dbp<-stdev_dbp/sqrt(n_dbp)

#Find the critical value for a 90% C.I. using the student's t distribution.
tcrit_90CI<-qt(0.05, n_dbp-1, lower.tail=FALSE)

#Find the margin of error.
E_dbp_90CI<-tcrit_90CI*se_dbp

#Find the lower confidence limit.
LCL_90CI_dbp<-xbar_dbp-E_dbp_90CI

#Find the upper confidence limit.
UCL_90CI_dbp<-xbar_dbp+E_dbp_90CI

LCL_90CI_dbp
UCL_90CI_dbp

ttest_CI90_dbp<-t.test(bld_placebo$dbp, conf.level=.90)
ttest_CI90_dbp$conf.int

consumers<-read.csv("https://raw.githubusercontent.com/petecht66/STAT474-statistical-programming-work/refs/heads/main/chapters-78910-normal-distribution-confidence-and-hypothesis-testing/data/Consumers.csv")
consumers

n<-length(consumers$Status)
x<-length(consumers$Status[consumers$Status=="Single"])
phat<-round(x/n, 2)
se_phat<-round(sqrt(phat*(1-phat)/n), 4)
critval_95CI<-round(qnormGC(0.025, region="above"), 2)
E_p<-round(critval_95CI*se_phat, 4)
LCL_p<-phat-E_p
UCL_p<-phat+E_p

n
x
phat
se_phat
critval_95CI
E_p
LCL_p
UCL_p

column1<-c("Variable:", "Confidence Level:", "Phat", "Standard Error:",
           "Critical Value:", "Margin of Error", "LCL:", "UCL:")
column2<-c("Proportion", "95%", phat, se_phat, critval_95CI, E_p, LCL_p, UCL_p)
CI95_output_p<-cbind(column1, column2)
CI95_output_p

