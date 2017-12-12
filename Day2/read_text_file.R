

# Reading text files
hotdogs<-read.delim("C:/R-files/Day2/hotdogs.txt", stringsAsFactor=F, header=T)
hotdogs<-read.delim("C:/R-files/Day2/hotdogs.txt", stringsAsFactor=F, header=F) 

hotdogs<-read.delim("C:/R-files/Day2/hotdogs.txt")
str(hotdogs)

head(hotdogs)
dim(hotdogs)
summary(hotdogs)

b<-read.delim("C:/R-files/Day2/test_data.txt", stringsAsFactors = F)
str(b)

c<-read.delim("C:/R-files/Day2/test_data1.txt", stringsAsFactors = F)
str(c)
head(c)
dim(c)
summary(c)
