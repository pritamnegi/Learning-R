library(readxl)

excel_sheets("C:/R-files/Day2/record_sheet.xlsx")
file1<- read_excel("C:/R-files/Day2/record_sheet.xlsx", sheet=1)
file2<- read_excel("C:/R-files/Day2/record_sheet.xlsx", sheet=2)

file1
file2

str(file1)
str(file2)

combined_file<-cbind(file1, file2[-1])
combined_file

summary(combined_file)

