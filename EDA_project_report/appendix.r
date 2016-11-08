df<-read.csv("roifinal.csv")

# Subset on  Private Non-profit and Public institutions
pubProf<-subset(roifinal,roifinal$CONTROL!="Private for-profit")

# Perform analysis of variance
obj<-aov(md_earn_wne_p10~CONTROL,data=pubProf)

#  Multiple linear regression  
model<-lm(md_earn_wne_p10~COSTT4_A+CONTROL,roifinal)