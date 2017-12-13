install.packages("RWeka")
install.packages("cluster")
install.packages("HSAUR")
install.packages("fpc")

library("RWeka")
library("cluster")
library("HSAUR")
library("fpc")

data(pottery)

data(mtcars)

plot(mtcars)

set.seed(123)
km2<- kmeans(mtcars,2)
class(km2)
summary(km2)
plotcluster(mtcars,km2$cluster)


set.seed(123)
km4<- kmeans(mtcars,4)
plotcluster(mtcars,km4$cluster)
km4$size
km4$iter


set.seed(123)
km8<- kmeans(mtcars,8)
plotcluster(mtcars,km8$cluster)
km8$size
km8$iter

# elbow method
k.ss<-km4$totss
k<-1:15
for(i in k[2:15]) k.ss[i] <- (kmeans(mtcars,centers=i)$tot.withinss)
k.ss
plot(k,k.ss, type="b", xlab="Number of Clusters", ylab="sum of squares")

