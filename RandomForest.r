#Random_Forest
data("iris") 
attach(iris)
str(iris)
#Data Partition
set.seed(123)
ind<-sample(2,nrow(iris),replace=T,prob = c(0.8,0.2))
train<-iris[ind==1,]
test<-iris[ind==2,]
#Random Forest 
library(randomForest)
set.seed(222)
rf<-randomForest(Species~.,data = train)
print(rf)
#Prediction and Confusion Matrix on Training Data
rf$confusion
attributes(rf)
p1<-predict(rf,train)
p1
library(caret)
library(e1071)
confusionMatrix(p1,train$Species)
#OOB
p2<-predict(rf,test)
confusionMatrix(p2,test$Species)
#Variable Importance
varImpPlot(rf)
varImpPlot(rf,sort=T,n.var = 3,main="top 3")
importance(rf)

#Partial Dependence plot 
partialPlot(rf,train,Petal.Length,"setosa")
plot(rf)
t<-tuneRF(train[,-5],train[,5],stepFactor = 1,plot = TRUE,ntreeTry = 350,trace = TRUE,improve = 0.05)
plot(rf)
