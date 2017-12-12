library(readxl)

excel_sheets("C:/R-files/Day2/Assignment Day 2/marks_record.xlsx")
year1<- read_excel("C:/R-files/Day2/Assignment Day 2/marks_record.xlsx", sheet=1)
year2<- read_excel("C:/R-files/Day2/Assignment Day 2/marks_record.xlsx", sheet=2)
year3<-read_excel("C:/R-files/Day2/Assignment Day 2/marks_record.xlsx", sheet=3)
year4<- read_excel("C:/R-files/Day2/Assignment Day 2/marks_record.xlsx", sheet=4)

combined_result<-cbind(year1,year2[-1],year3[-1],year4[-1])
combined_result
summary(combined_result)
dim(combined_result)

year_2<- read_excel("C:/R-files/Day2/Assignment Day 2/marks_record.xlsx", sheet=2,range="A1:B8")
year_2

m<-mean(mtcars$wt)
m

m1<-median(mtcars$wt)
m1

getmode<- function(v) {
  uniqv = unique(v)
  uniqv[which.max(tabulate(match(v,uniqv)))]
}

getmode(mtcars$wt)


m2<-mean(airquality$Temp)
m2

m3<-median(airquality$Temp)
m3

getmode<- function(v) {
  uniqv = unique(v)
  uniqv[which.max(tabulate(match(v,uniqv)))]
}

getmode(airquality$Temp)



a<-read.csv("C:/R-files/Day2/Assignment Day 2/record.csv")
a
summary(a)
str(a)
dim(a)

mean_1<-mean(a$trans_face_val_amt, na.rm=TRUE)
mean_1

median_1<-median(a$trans_face_val_amt, na.rm=TRUE)
median_1

getmode(a$trans_face_val_amt)



