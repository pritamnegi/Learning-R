getmode<- function(v) {
  uniqv = unique(v)
  uniqv[which.max(tabulate(match(v,uniqv)))]
}

v<-c(2,1,2,3,1,2,3,4,1,5,5,3,2,3)
getmode(v)
