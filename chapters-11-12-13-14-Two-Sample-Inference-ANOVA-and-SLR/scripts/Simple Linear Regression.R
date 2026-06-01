punts<-read.csv("https://raw.githubusercontent.com/petecht66/STAT474-statistical-programming-work/refs/heads/main/chapters-11-12-13-14-Two-Sample-Inference-ANOVA-and-SLR/data/Punting.csv")
punts

ggplot(punts, aes(x=R_Leg_Strength, y=Avg_Punt_Distance))+
  geom_point()+geom_smooth(method=lm)+
  ggtitle("Linear Relationship between Right Leg Strength\n
          and Average Punting Distance")+
  labs(x="Right Leg Strength", y="Average Punting Distance")+
  theme(plot.title = element_text(hjust=.5))

r<-cor(punts$R_Leg_Strength,punts$Avg_Punt_Distance, method="pearson")
r

LSRM<-lm(Avg_Punt_Distance~R_Leg_Strength, data=punts)
summary(LSRM)

predict(LSRM, data.frame(R_Leg_Strength=c(125, 175)))
