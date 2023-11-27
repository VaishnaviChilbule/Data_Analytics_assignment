#Naive bayes in R classification
naive_Bayes <- read_excel("C:/Users/dbda/Downloads/naive Bayes.xlsx")
attach(naive_Bayes)
library(naivebayes)
library(dplyr)

library(ggplot2)
library(psych)
str(naive_Bayes)
naive_Bayes$admit<-as.factor(naive_Bayes$admit)
naive_Bayes$Rank<-as.factor(naive_Bayes$Rank)
str(naive_Bayes)
xtabs(~admit+Rank,data = naive_Bayes)
pairs.panels(naive_Bayes[-1])
naive_Bayes%>%ggplot(aes(x=admit,y=grade,fill=admit))+geom_boxplot()+ggtitle("Box plot")
naive_Bayes%>%ggplot(aes(x=admit,y=gpa,fill=admit))+geom_boxplot()+ggtitle("Box plot")
naive_Bayes%>%ggplot(aes(x=grade,fill=admit))+geom_density(alpha=0.8,color="black")+ggtitle("Density Plot")
naive_Bayes%>%ggplot(aes(x=gpa,fill=admit))+geom_density(alpha=0.8,color="black")+ggtitle("Density Plot")
ind<-sample(2,nrow(naive_Bayes),replace = T,prob = c(0.8,0.2))
ind

train<-naive_Bayes[ind==1,]
train
test<-naive_Bayes[ind==2,]
test
model<-naive_bayes(admit~.,data=train)
model

train%>%filter(admit=="0")%>%summarise(mean(grade),sd(grade))
train%>%filter(admit=="0")%>%summarise(mean(gpa),sd(gpa))
train%>%filter(admit=="1")%>%summarise(mean(grade),sd(grade))
train%>%filter(admit=="1")%>%summarise(mean(gpa),sd(gpa))
plot(model)
p<-predict(model,train,type = "prob")
p
head(p)
head(cbind(p,train))
p1<-predict(model,train)
p1
(tab1<-table(p1,train$admit))
1-sum(diag(tab1))/sum(tab1)
1-sum(diag(tab1))/sum(tab1)
p2<-predict(model,test)
p2
(tab2<-table(p2,test$admit))
1-sum(diag(tab2))/sum(tab2)
