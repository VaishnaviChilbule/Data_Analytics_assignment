#cluster Analysis
Case_1_Godrej_Ltd <- read_excel("C:/Users/dbda/Downloads/Case 1_ Godrej Ltd.xlsx")
attach(Case_1_Godrej_Ltd)
z<-Case_1_Godrej_Ltd[,-c(1,1)]
z
head(z)
tail(z)
m<-apply(z,2,mean)
m
s<-apply(z,2,sd)
s
z<-scale(z,m,s)
distance<-dist(z)
distance
print(distance,digits = 2)
#hierarchical Cluster analysis
hc.c<-hclust(distance)
hc.c
#dendrogram
plot(hc.c)
plot(hc.c,hang=-1)

hc.a<-hclust(distance,method="average")
hc.a
plot(hc.a,hang=-1)
member.c<-cutree(hc.c,3)
member.c

member.a<-cutree(hc.a,3)
member.a
table(member.a,member.c)


aggregate(z,list(member.c),mean)
aggregate(Case_1_Godrej_Ltd[,-c(1,1)],list(member.c),mean)

member.c<-cutree(hc.c,2)
member.c