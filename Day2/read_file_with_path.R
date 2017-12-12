path<-file.path("C:/R-files/", "hotdogs.txt")

hotdogs<-read.table(path,sep="\t",header=TRUE)

str(hotdogs)
hotdogs

lily <- hotdogs[which.min(hotdogs$Calories),]
lily