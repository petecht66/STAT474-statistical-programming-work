anorexia<-read.csv("https://raw.githubusercontent.com/petecht66/STAT474-statistical-programming-work/refs/heads/main/chapters-11-12-13-14-Two-Sample-Inference-ANOVA-and-SLR/data/Anorexia.csv")
anorexia

anova_results<-aov(Weight_Change~Treatment, data=anorexia)
summary(anova_results)

boxplot(Weight_Change~Treatment, data=anorexia, main="Weight Change by 
        Treatment", xlab="Treatment",
        ylab="Weight Change",
        col="pink",
        border="black")


