logit123 <- read_excel("C:/Users/dbda/Downloads/logit123.xlsx")
attach(logit123)
str(logit123)
model<-glm(Selection~.,data=logit123,family = "binomial")
summary(model)

res<-predict(model,logit123,type = "response")
res
head(logit123)


table(Actualvalue=logit123$Selection,predictedvalue=res>0.5)
(13+22)/40
library(rcompanion)
nagelkerke(model)
table(Actualvalue=logit123$Selection,predictedvalue=res>0.4)
