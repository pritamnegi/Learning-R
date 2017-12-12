x= c(12,7,3,4,2,18,2,54,-21,8,-5)

result.mean<- mean(x)
result.mean

result.mean<- mean(x, trim=0.3)
result.mean


y= c(12,7,3,4,2,18,2,54,-21,8,-5,NA)

result.mean<- mean(y, na.rm=TRUE)
result.mean


