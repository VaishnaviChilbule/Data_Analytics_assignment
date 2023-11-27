#logistic regression
logit <- read_excel("C:/Users/dbda/Downloads/logit.xlsx")
attach(logit)
z<-logit[,-c(1,1)]
z
#model
model<-glm(type~npreg+glu+bp+skin+bmi+ped+age,data=z,family = "binomial")
summary(model)

res<-predict(model,z,type="response")
res

head(z)
#confusion matrix
table(Actualvalue=z$type,Predictedvalue=res>0.5)

table(Actualvalue=z$type,Predictedvalue=res>0.4)
table(Actualvalue=z$type,Predictedvalue=res>0.3)


library(rcompanion)
nagelkerke(model)
