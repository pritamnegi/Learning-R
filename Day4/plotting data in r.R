install.packages("MASS")
library(MASS)

plot(whiteside)

plot(whiteside$Temp, whiteside$Gas,xlab="Outside Temperature", ylab="Heating Gas Consumption")
dev.off()
plot(whiteside$Insul)

# Defining color as red
plot(Cars93$Price, Cars93$Max.Price,pch=17, col='red')

# Defining shape of plotted point as triangle by using pch attribute
plot(Cars93$Price, Cars93$Max.Price,pch=17, col='red')

#Adding new grsph on existing graph
points(Cars93$Price,Cars93$Min.Price, pch=16, col='blue')

# Add an equality reference line with abline
abline(a=0,b=1,lty=3)

#defining the width of the dashed line
abline(a=0,b=1,lty=3, lwd=3)


#creating multiple plot arrays
install.packages("robustbase")

library(robustbase)

# set up the side by side plot array
par(mfrow=c(1,2))

Animals2

#Plotting first graph
plot(Animals2$body, Animals2$body)

#add the first title
title("First Graph")

#Plotting second graph
plot(mtcars$mpg, mtcars$cyl)

#add the second title
title("Second Graph")


#plotting a pie chart
tbl<-sort(table(mtcars$mpg), decreasing = FALSE)
pie(tbl)
title("Pie chart")

#Setting screen for 2 graphs next to each other
par(mfrow=c(1,2))

#Plotting pie cahrt
tbl<-sort(table(mtcars$mpg), decreasing = FALSE)
pie(tbl)
title("Pie chart")

#Plotting a bar graph
barplot(tbl, las=2, cex.names=0.5)

#Adding a title
title("Bar chart")

#las used for label orientation
barplot(tbl, las=2)
barplot(tbl, las=0, cex.names = 0.5)



#Plotting a histogram
hist(cars$speed, msin="hidt() plot")

#various types of type available in plot function
plot(mtcars$mpg, type="line")
plot(mtcars$mpg, type="steps")
plot(mtcars$mpg, type="o")



#Add text to certain points 
index3<- which(Cars93$Cylinders == 3)
index3

plot(Cars93$Horsepower, Cars93$MPG.city)
text(x=Cars93$Horsepower[index3], y=Cars93$MPG.city[index3], labels=Cars93$Make[index3],adj=0)
text(x=Cars93$Horsepower[index3], y=Cars93$MPG.city[index3], labels=Cars93$Make[index3],adj=1)

#Adjust text position, size and font         

plot(Cars93$Horsepower, Cars93$MPG.city)

points(x=Cars93$Horsepower[index3], y=Cars93$MPG.city[index3], pch=16)

#Add car names, offset from points, with larger bold font
text(x=Cars93$Horsepower[index3], y=Cars93$MPG.city[index3],Cars93$Make[index3], adj=-0.2, cex=1.2, font=4)
