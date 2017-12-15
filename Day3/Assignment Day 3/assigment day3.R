# Regression
library(RWeka)
library(party)
library(partykit)

data(cars)
cars

x<- c(cars[,1])
y<-c(cars[,2])
x
y


rel<-lm(y~x)

coefficients(rel)

plot(rel)

plot(rel$coefficients)


# Multiple Regression

data(iris)
iris


input <- iris[,c("Sepal.Length","Sepal.Width","Petal.Length","Petal.Width")]
input

model <- lm(Sepal.Length~Sepal.Width+Petal.Length+Petal.Width ,data = input)

print(model)

class(model)

a<- coefficients(model)[1]
a

xsepal_width<-coefficients(model)[2]
xsepal_width

xpetal_length<-coefficients(model)[3]
xpetal_width<-coefficients(model)[4]


# Intercept for sample having sepal_width=4.0, petal_length=2 and petal_width=0.2
Y<- a+(xsepal_width)*4.0 + (xpetal_length)*2 + (xpetal_width)*0.2
Y

plot(model)



#Building decision tree using ID3

databuy<-read.csv("C:/R-files/Day3/Assignment Day 3/dataset.csv")

databuy

m2<-J48(Class~., data=databuy)

plot(m2)

install.packages("FSelector")

library(FSelector)

information.gain(Class~.,data=databuy)

subset1.data<-databuy[1:5,]
subset1.data



information.gain(Class~., data=subset1.data)

subset2.data<- databuy[1:3,]
information.gain(Class~., data=subset2.data)



# Building decision tree for question 4

data_record<-read.csv("C:/R-files/Day3/Assignment Day 3/tennis_data1.csv")

data_record
information.gain(Play.tennis~.,data=data_record)

subset1.data<-data_record[1:7,]
subset1.data


information.gain(Play.tennis~., data=subset1.data)

subset2.data<- data_record[8:14,]
information.gain(Play.tennis~., data=subset2.data)



library("caTools")
library("caret")

spl<- sample.split(data_record, SplitRatio=0.7)
??sample.split

dataTrain = subset(data_record, spl==TRUE)
dataTrain

view(dataTrain)
??view


dataTest =subset(data_record, spl=FALSE)
dataTest

resultJ48<- J48(as.factor(Play.tennis)~., dataTrain)

dataTest.pred<- predict(resultJ48, newdata = dataTest)


plot(dataTest$Play.tennis,dataTest.pred)
table(dataTest$Play.tennis,dataTest.pred)
dataTest.pred
summary(dataTest.pred)

matrix(dataTest.pred)

confusionMatrix(dataTest.pred,dataTest$Play.tennis)
