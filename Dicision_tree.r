#Dicision_Tree
data("iris")
attach(iris)
summary(iris)
str(iris)
#partition data
set.seed(555)
ind<-sample(2,nrow(iris),replace = TRUE,prob = c(0.8,0.2))
train<-iris[ind==1,]
test<-iris[ind==2,]



set.seed(111)
ind<-sample(2,nrow(iris),replace = TRUE,prob = c(0.8,0.2))
train<-iris[ind==1,]
test<-iris[ind==2,]


#Decision Tree With Party Package
library(party)
tree<-ctree(Species~.,data=train)
print(tree)
#Visualization
plot(tree)
plot(tree,type="simple")
#Prediction 
p1<-predict(tree,train)
p1
p1<-predict(tree,train,type="prob")
p1

#Misclassification Error for Training data
p1<-predict(tree,train)
p1

tab1<-table(Predicted=p1,Actual=train$Species)
tab1
sum(diag(tab1)/sum(tab1))
(42+34+37)/118
#error
1-sum(diag(tab1)/sum(tab1))
#Misclassification for test data
p2<-predict(tree,test)
p2
tab2<-table(Predicted=p2,Actual=test$Species)
tab2

sum(diag(tab2)/sum(tab2))
1-sum(diag(tab2)/sum(tab2))





#For Numerical (Quantitative variable)[Regression_Tree]
tree1<-ctree(Sepal.Length~.,train)
plot(tree1)
