bp<-read.csv("https://raw.githubusercontent.com/petecht66/STAT474-statistical-programming-work/refs/heads/main/chapters-78910-normal-distribution-confidence-and-hypothesis-testing/data/blood_pressure2.csv")
bp

xbar_dbp<-mean(na.omit(bp$dbp))
s_dbp<-sd(na.omit(bp$dbp))
n_dbp<-length(na.omit(bp$dbp))
se_dbp<-s_dbp/sqrt(n_dbp)
critval_90CI<-qnormGC(.05, region="above")
E_90CI_dbp<-critval_90CI*se_dbp
LCL_90CI_dbp<-xbar_dbp-E_90CI_dbp
UCL_90CI_dbp<-xbar_dbp+E_90CI_dbp

xbar_dbp
s_dbp
n_dbp
se_dbp
critval_90CI
E_90CI_dbp
LCL_90CI_dbp
UCL_90CI_dbp

mean_CI<-function(a, b, c, d){
  avg<-mean(na.omit(a))
  std<-sd(na.omit(a))
  se<-std/sqrt(length(na.omit(a)))
  critval<-qnorm(b, lower.tail=FALSE)
  E<-critval*se
  LCL<-avg-E
  UCL<-avg+E
  
  stat_names<-c("Variable:","Confidence Level:", "Mean:", "Standard Deviation:",
                "Standard Error:", "Critical Value:", "Margin of Error:", "LCL:", "UCL:")
  stat_values<-c(c, d, avg, std, se, critval, E, LCL, UCL)
  CI_output<-cbind(stat_names, stat_values)
  return(CI_output)
}

mean_CI(bp$dbp, .025, "Dialostic Blood Pressure", "95%")

mean_CI(bp$dbp, .05, "Dialostic Blood Pressure", "90%")

mean_CI(bp$sbp, .05, "Systolic Blood Pressure", "90%")

s_dbp<-sd(na.omit(bp$dbp))
CI_95_mean_dbp<-z.test(bp$dbp, sigma.x=s_dbp, conf.level=.95)
CI_95_mean_dbp$conf.int

s_sbp<-sd(na.omit(bp$sbp))
CI_90_mean_sbp<-z.test(bp$sbp, sigma.x=s_sbp, conf.level=.90)
CI_90_mean_sbp$conf.int

