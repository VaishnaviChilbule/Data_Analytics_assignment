#Simple_regression
SR <- read_excel("C:/Users/dbda/Downloads/SR.xlsx")
attach(SR)
library(nortest)
shapiro.test(Compensation)
plot(Compensation,Performance)
boxplot(Compensation)
boxplot(Performance)
#regression analysis
Model<-lm(Performance~Compensation,data=SR)
summary(Model)




















































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































