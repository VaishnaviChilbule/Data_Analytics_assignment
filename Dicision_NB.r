N_B <- read_excel("C:/Users/dbda/Downloads/N_B.xlsx")
attach(N_B)
summary(N_B)
str(N_B)
N_B$admit<-as.factor(N_B$admit)
N_B$Rank<-as.factor(N_B$Rank)
set.seed((555))
ind<-sample(2,nrow(N_B),replace = TRUE,prob = c(0.8,0.2))
train<-N_B[ind==1,]
test<-N_B[ind==2,]
library(party)
tree<-ctree(admit~.,data=train)
print(tree)
plot(tree)
plot(tree,type="simple")
p1<-predict(tree,train)
p1


tab1<-table(Predicted=p1,Actual=train$Species)
tab1
sum(diag(tab1)/sum(tab1))
1-sum(diag(tab1)/sum(tab1))
p2<-predict(tree,test)
p2
tab2<-table(Predicted=p2,Actual=test$Species)
tab2

sum(diag(tab2)/sum(tab2))
1-sum(diag(tab2)/sum(tab2))