x=T
cat(x)
x=charToRaw("Hello")
cat("bytes in Hello are :",x," details:",class(x), typeof(x), mode(x), storage.mode(x))
x_dim1 = c(10,20,30,40,50,60)
print(x_dim1)
class(x_dim1)
x_complex = c(3,0,TRUE,2+2i) 
print(x_complex)
x_char = c(0,TRUE)    
print(x_char)
x_vec = vector("numeric", 5) 
print(x_vec) 

xlist <- list(a = "Shantanu Pathak", b = 1:10)
xlist
ylist<-list(T,vector("numeric",5),"Disha")
ylist
M = matrix( c('a','a','b','c'), nrow=4,ncol=3)
print(M)



x_dim2 = array(c(10,20,30,40,50,60,70,80,90,100),dim=c(3,3,2),byrow=TRUE)
print(x_dim2)



department= factor(c(100,0,100,0,0,0), levels = c(0, 100), labels = c("tech", "non-tech"))
department

designation <- factor(c("SME", "Team Lead","Manager"), unordered =TRUE,levels=c("SME","Team Lead","Manager"))
designation

