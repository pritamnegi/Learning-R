record<-read.csv("C:/R-files/record1.csv",stringsAsFactors = F)
record

max_salary <- record[which.max(record$salary),]
max_salary
