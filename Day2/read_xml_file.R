library("XML")
# install.packages("XML")

result<-xmlParse(file = "C:/R-files/Records.xml")
result
str(result)

print(result)

rootnode <- xmlRoot(result)
print(rootnode[1])


# Convert xml to data frame
xmldataframe<- xmlToDataFrame("C:/R-files/Records.xml")
xmldataframe
class(xmldataframe)


