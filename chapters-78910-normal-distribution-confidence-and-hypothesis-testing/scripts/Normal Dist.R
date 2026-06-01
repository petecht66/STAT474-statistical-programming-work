#Listing packages to allow for work in VS Code 6-1-2026
library(moments)
library(tigerstats)

prob_z_lt_1.32<-round(pnorm(1.32), 4)
prob_z_lt_1.32

prob_z_gt_1.32<-round(pnorm(1.32, lower.tail=FALSE), 4)
prob_z_gt_1.32

probGC_Z_lt_1.32<-round(pnormGC(1.32, region="below", graph=TRUE), 4)
probGC_Z_lt_1.32

probGC_Z_gt_1.32<-round(pnormGC(1.32, region="above", graph=TRUE), 4)
probGC_Z_gt_1.32

probGC_Z_bt_neg1.32and1.32<-round(pnormGC(c(-1.32,1.32), region="between", graph=TRUE), 4)
probGC_Z_bt_neg1.32and1.32

unknown_z_prob_lt.9750<-round(qnorm(.9750), 2)
unknown_z_prob_lt.9750

unknown_z_prob_gt.9525<-round(qnorm(.9525, lower.tail=FALSE), 2)
unknown_z_prob_gt.9525

unknown_zlandz2_prob_bt_.0250<-round(qnormGC(0.0250, region="between", graph=TRUE), 3)
unknown_zlandz2_prob_bt_.0250