record<-xmlParse(file = "C:/R-files/Day2/xml_record_file.xml")
record

root<-xmlRoot(record)
print(root[1])

