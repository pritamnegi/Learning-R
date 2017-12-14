library(RWeka)
library(party)
library(partykit)
library(rJava)
m1<-J48(Species~., data= iris )

plot(m1)
summary(m1)

databuy<-read.csv("C:/R-files/Day3/Ass2Data.csv")
databuy

m2<-J48(Age~., data=databuy)

plot(m2)

install.packages("FSelector")

library(FSelector)

information.gain(Species~.,data=iris)

subset1.iris<-subset(iris, Petal.Width>0.6)
information.gain(Species~., data=subset1.iris)

subset2.iris<- subset(subset1.iris, Petal.Width<=1.7)
information.gain(Species~., data=subset2.iris)




install.packages("caTools")
library(caTools)

data<- read.csv("C:/R-files/Day3/input_csv.csv")
spl<- sample.split(data, SplitRatio=0.7)

dataTrain = subset(data, spl=TRUE)
view(dataTrain)

dataTest =subset(data, spl=FALSE)

resultJ48<- J48(as.factor(class)~., dataTrain)
dataTest.pred<- predict(resultJ48, newdata = dataTest)
plot(dataTest$class,dataTest.pred)
table(dataTest$class,dataTest.pred)



set.seed(1234)
ind<- sample(2, nrow(iris), replace = TRUE, prob=c(0.7,0.3))
train.data<-iris[ind==1,]
test.data<-iris[ind==2,]
myFormula<-Species ~ Sepal.Length + Sepal.Width +Petal.Length + Petal.Width
iris_ctree<- ctree(myFormula, data=train.data) 

table(predict(iris_ctree), train.data$Species)
print(iris_ctree)
plot(iris_ctree)

testPred<- predict(iris_ctree, newdata = test.data)
plot(testPred, test.data$Species)
print(testPred)


# learning VGAM 
install.packages("VGAM")
library(VGAM)
fit<-vglm(Species~., family=multinomial, data = iris)

summary(fit)


probabilities<- predict(fit, iris[,1:4], type="response")
probabilities


predictions<- apply(probabilities,1, which.max)

predictions[which(predictions=="1")]<-levels(iris$Species)[1]
predictions[which(predictions=="2")]<-levels(iris$Species)[2]
predictions[which(predictions=="3")]<-levels(iris$Species)[3]
head(predictions)

table(predictions, iris$Species)


#linear_discriminant analysis

install.packages("pls")
install.packages("klaR")

library(pls)
library(klaR)

x<- iris[,1:4]
y<- iris[,5]

fit<- plsda(x,y,probMethod = "Bayes")

predictions<- predict(fit, iris[,1:4])

table(predictions, iris$Species)               


#Non linear data
#ML Algorithm

install.packages("RTextTools")
library(RTextTools)

data<- read.csv("C:/R-files/Day3/sunnyData.csv")

dtMatrix<- create_matrix(data["Text"])

tableOTM<- as.table(dtMatrix)

container<- create_container(dtMatrix, data$IsSunny, trainSize=1:11, virgin=FALSE)

model<- train_model(container, "SVM", kernel = "linear", cost=1)

trace("create_matrix", edit=T)
predictionData<- list("sunny sunny sunny rainy rainy","rainy rainy rainy rainy", "hello", "","this is another rainy world")

predMatrix<- create_matrix(predictionData, originalMatrix = dtMatrix)

predSize = length(predictionData)

predictionContainer<- create_container(predMatrix, labels=rep(0,predSize),testSize = 1:predSize, virgin=FALSE)
results <- classify_model(predictionContainer, model)
results
