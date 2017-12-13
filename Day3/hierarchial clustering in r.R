library("RWeka")
library("cluster")
library("HSAUR")
library("fpc")

hclust_iris <- hclust(dist(iris[1:40, -5]))
plot(hclust_iris)
dim(iris)

dim(pottery)
hclust_pottery <- hclust(dist(pottery))
plot(hclust_pottery)
?pottery
?iris
?dist


