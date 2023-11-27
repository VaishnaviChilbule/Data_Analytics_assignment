Discriminant_Analysis_2_ <- read_excel("C:/Users/dbda/Downloads/Discriminant Analysis 2 .xlsx")
#Discriminant_Analysis
attach(Discriminant_Analysis_2_)
library(MASS)
model<-lda(customer~.,data=Discriminant_Analysis_2_)
summary(model)
ldapred<-predict(model,Discriminant_Analysis_2_)
ldapred
ldaclass<-ldapred$class
ldatable<-table(ldaclass,Discriminant_Analysis_2_$Customer)
ldatable
accur<-sum(diag(ldatable))/sum(ldatable)*100
