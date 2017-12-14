install.packages("ggplot2")

library(ggplot2)

qplot(Sepal.Length, Petal.Length, dat=iris)

#Add color
qplot(Sepal.Length, Petal.Length, dat=iris, color=Species)


#Add size
qplot(Sepal.Length, Petal.Length, dat=iris, color=Species, size=Petal.Width)

#Add labels
qplot(Sepal.Length, Petal.Length, dat=iris, color=Species, size=Petal.Width, xlab="Sepal Length", ylsb="Petsl Length", main="Sepal vs Petal Length Fisher's Iris Data")


#Boxplot

qplot(gear,mpg,data=mtcars, geom=c("boxplot", "jitter"), fill=gear, main="Mileage by Gear Number", xlab="", ylab="Miles per Gallon")

#Omitting jitter
qplot(gear,mpg,data=mtcars, geom=c("boxplot"), fill=gear, main="Mileage by Gear Number", xlab="", ylab="Miles per Gallon")

#Exploring geom attribute
qplot(gear,mpg,data=mtcars, geom=c("point"), fill=gear, main="Mileage by Gear Number", xlab="", ylab="Miles per Gallon")

qplot(gear,mpg,data=mtcars, geom=c("smooth"), fill=gear, main="Mileage by Gear Number", xlab="", ylab="Miles per Gallon")

qplot(gear,mpg,data=mtcars, geom=c("smooth", "jitter"), fill=gear, main="Mileage by Gear Number", xlab="", ylab="Miles per Gallon")

qplot(gear,mpg,data=mtcars, geom=c("line", "smooth"), fill=gear, main="Mileage by Gear Number", xlab="", ylab="Miles per Gallon")

qplot(gear,mpg,data=mtcars, geom=c("jitter"), fill=gear, main="Mileage by Gear Number", xlab="", ylab="Miles per Gallon")


# Just exploring various options in ggplot2
ggplot(mtcars, aes(x = mtcars$mpg)) + geom_histogram()

#defining binwidth (large bins)
ggplot(mtcars, aes(x = mtcars$mpg)) + geom_histogram(binwidth=2)

# defining small bins
ggplot(mtcars, aes(x = mtcars$mpg)) + geom_histogram(binwidth=0.1)



ggplot(mtcars, aes(x = mtcars$mpg)) + geom_density(fill="darkgrey")



# Violin plots
p <- ggplot(mpg, aes(x=factor(cyl), y=hwy, fill=factor(cyl)))
p + geom_violin(scale = "width")  

p + geom_violin(scale = "width") + geom_point(size=2, position="jitter")


#Scatter plot


gg <- ggplot(midwest, aes(x=area, y=poptotal)) + 
  geom_point(aes(col=state, size=popdensity)) + 
  geom_smooth(method="loess", se=F) + 
  xlim(c(0, 0.1)) + 
  ylim(c(0, 500000)) + 
  labs(subtitle="Area Vs Population", 
       y="Population", 
       x="Area", 
       title="Scatterplot", 
       caption = "Source: midwest")

plot(gg)



pd <- ggplot(data = diamonds, aes(carat, price))
pd + geom_point()

pd+ geom_point(alpha=0.2)



qplot(mpg, data=mtcars, geom="density", fill=gear, alpha=I(.5), 
      main="Distribution of Gas Milage", xlab="Miles Per Gallon", 
      ylab="Density")


# Separate regressions of mpg on weight for each number of cylinders
qplot(wt, mpg, data=mtcars, geom=c("point", "smooth"), 
      method="lm", formula=y~x, color=cyl, 
      main="Regression of MPG on Weight", 
      xlab="Weight", ylab="Miles per Gallon")


p <- ggplot(mtcars, aes(x = hp, y = mpg)) + geom_point()

p + stat_smooth(method = "lm", formula = y ~ x, size = 1)


p + stat_smooth(method = "lm", formula = y ~ x + I(x^2), size = 1)

require(mgcv)
p + stat_smooth(method = "gam", formula = y ~ s(x), size = 1)

p + stat_smooth(method = "gam", formula = y ~ s(x, k = 3), size = 1)


## if we wanted the points coloured, but not separate lines there are two
## options---force stat_smooth() to have one group
ggplot(mtcars, aes(x = hp, y = mpg, colour = factor(vs))) + geom_point() +
  stat_smooth(aes(group = 1), method = "lm", formula = y ~ x, se = FALSE)

## or only add colour to the points, not in the global ggplot() call
ggplot(mtcars, aes(x = hp, y = mpg)) + geom_point(aes(colour = factor(vs))) +
  stat_smooth(method = "lm", formula = y ~ x, se = FALSE)