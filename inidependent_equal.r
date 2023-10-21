#independent sample t test
independent_t <- read_excel("C:/Users/dbda/Downloads/independent_t.xlsx")
attach(independent_t)
str(independent_t)
t.test(Perception~City,data = independent_t)
library(car)
t.test(Perception~City,data = independent_t,alternative=c("two.sided"),paired=F,var.equal = T,conf.level = 0.05)
