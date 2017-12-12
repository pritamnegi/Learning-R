record<-xmlParse(file = "C:/R-files/xml_record_file.xml")
record

root<-xmlRoot(record)
print(root[1])

