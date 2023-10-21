#Exploratory Factor Analysis
Factor_Analysis_Delta_Cars <- read_excel("C:/Users/dbda/Downloads/Factor Analysis_Delta Cars.xlsx")
attach(Factor_Analysis_Delta_Cars)
r=cor(Factor_Analysis_Delta_Cars)
r       
library(psych)

KMO(Factor_Analysis_Delta_Cars)
cortest.bartlett(Factor_Analysis_Delta_Cars)
KMO(r)
#2nd type
library(REdaS)
KMOS(Factor_Analysis_Delta_Cars)
bart_spher(Factor_Analysis_Delta_Cars)
pca(r,nfactors =10 ,rotate=F)
z=pca(r,nfactors = 3,method=regression,rotate="varimax",scores=T)
z
z$communality
z$values
print(z$values,digits = 3)
print(z$values,digits = 3,cutoff=0.7)
