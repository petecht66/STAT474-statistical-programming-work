#Listing packages to allow for work in VS Code 6-1-2026
library(ggplot2)
library(plotrix)

language<-read.csv("https://raw.githubusercontent.com/petecht66/STAT474-statistical-programming-work/refs/heads/main/chapters-11-12-13-14-Two-Sample-Inference-ANOVA-and-SLR/data/Language.csv")
language

two_factor_results<-aov(Words~Method*Sessions, data=language)
summary(two_factor_results)

words.vrb.two<-with(language,Words[Method=="Verbal" & Sessions=="2"])

words.vrb.five<-with(language,Words[Method=="Verbal" & Sessions=="5"])

words.vrb.ten<-with(language,Words[Method=="Verbal" & Sessions=="10"])

words.pic.two<-with(language,Words[Method=="Picture" & Sessions=="2"])

words.pic.five<-with(language,Words[Method=="Picture" & Sessions=="5"])

words.pic.ten<-with(language,Words[Method=="Picture" & Sessions=="10"])

words.vrb.two
words.vrb.five
words.vrb.ten

words.pic.two
words.pic.five
words.pic.ten

mean.words<-c(mean(words.vrb.two), mean(words.vrb.five),
              mean(words.vrb.ten), mean(words.pic.two),
              mean(words.pic.five), mean(words.pic.ten))
mean.words

se.words<-c(std.error(words.vrb.two), std.error(words.vrb.five),
            std.error(words.vrb.ten), std.error(words.pic.two),
            std.error(words.pic.five), std.error(words.pic.ten))
se.words

method<-rep(c("Verbal", "Picture"), each=3)
method

sessions<-rep(c(" 2 Days", " 5 Days", "10 Days"), 2)
sessions

mse_vp<-data.frame(method, sessions, mean.words, se.words)
colnames(mse_vp)=c("Method of Presentation", "Number of Sessions", "Mean", "SE")
mse_vp

ggplot(mse_vp, aes(x=`Method of Presentation`, y=Mean,
                   fill=`Number of Sessions`))+
  geom_bar(stat="identity", position="dodge", color="black", width=1)+
  geom_errorbar(aes(ymin=Mean, ymax=Mean+SE), position=position_dodge(width=1))



