#one sample t-test
Indian_oil_ethanol <- read_excel("C:/Users/dbda/Downloads/Indian oil_ethanol.xlsx")
attach(Indian_oil_ethanol)
#assumptions
library(nortest)
shapiro.test(`Mileage with ethanol`)
#as p value>0.05 therefore null hypothesis accepted and data is normally distributed 
#thus One sample t test 
hist(`Mileage with ethanol`)
boxplot(`Mileage with ethanol`)
library(moments)
skewness(`Mileage with ethanol`)
kurtosis(`Mileage with ethanol`)
ad.test(`Mileage with ethanol`)
lillie.test(`Mileage with ethanol`)
?T.TE