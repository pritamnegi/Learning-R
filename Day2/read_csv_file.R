
# Reading csv files
pools<-read.csv("C:/R-files/Swimming_pools.csv")
str(pools)

pools<-read.csv("C:/R-files/Swimming_pools.csv", stringsAsFactor=F)
str(pools)

a<-read.csv("C:/R-files/test_data.csv", stringsAsFactors = F)
str(a)

head(a)
dim(a)


head(pools)
dim(pools)
summary(pools)






