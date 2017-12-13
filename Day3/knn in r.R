library("RWeka")
library("cluster")
library("HSAUR")
library("fpc")

install.packages("caret")
# install.packages("class")

library(caret)
library(class)

dataurl <- "https://archive.ics.uci.edu/ml/machine-learning-databases/wine/wine.data"
download.file(url = dataurl, destfile = "wine.data")

setwd("C:/R-files/Day3")
getwd()

wine_df<- read.csv("C:/R-files/Day3/wine.data", header=FALSE)
str(wine_df)

set.seed(123)

intrain<-createDataPartition(y=wine_df$V1, p=0.7, list = FALSE)
intrain

training<- wine_df[intrain,]
testing<-wine_df[-intrain,]

dim(training)
dim(testing)
anyNA(wine_df)

training[["V1"]] = factor(training[["V1"]])
trctrl<- trainControl(method="repeatedcv", number=10, repeats=3)

set.seed(3333)

knn_fit<- train(V1 ~., data=training, method="knn", trControl=trctrl,preProcess=c("center", "scale"),tuneLength= 10)
knn_fit
plot(knn_fit)


test_pred<- predict(knn_fit, newdata = testing)
test_pred
confusionMatrix(test_pred, testing$V1)
