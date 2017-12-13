install.packages("party")
install.packages("partykit")

library(RWeka)
library(party)
library(partykit)

x<-c(20,16,19.79999924,18.39999962,17.10000038,15.5,14.69999981,17.10000038,15.39999962,16.20000076,15,17.20000076,16,17,14.39999962)
y<-c(88.59999847,71.59999847,93.30000305,84.30000305,80.59999847,75.19999695,69.69999695,82,69.40000153,83.30000305,79.59999847,82.59999847,80.59999847,83.5,76.30000305)

plot(x,y)
x
y

rel<-lm(y~x)

coefficients(rel)

plot(rel)


plot(rel$coefficients)


# Multiple Regression
head(mtcars)

input <- mtcars[,c("mpg","disp","hp","wt")]
input

model <- lm(mpg~disp+hp+wt,data = input)

print(model)

class(model)

a<- coefficients(model)[1]
a

xdisp<-coefficients(model)[2]
xdisp

xhp<-coefficients(model)[3]
xwt<-coefficients(model)[4]

Y<- a+(xdisp)*221 + (xhp)*102 + (xwt)*2.91
Y

plot(model)

