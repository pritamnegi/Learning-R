install.packages("readxl")

library(readxl)

excel_sheets("C:/R-files/Day2/Criteria 2.xlsx")
year1<- read_excel("C:/R-files/Day2/Criteria 2.xlsx", sheet=1)
year2<- read_excel("C:/R-files/Day2/Criteria 2.xlsx", sheet=2)

year_list<-list(year1,year2)
year_list
