# September 25, 2022
# Lab 4, Ordinary Least Squares; Pollution example


# Load visualization packages
library(carData)
library(car)
library(ggplot2)
library(hrbrthemes)
library(GGally)

# Read data from csv file with ";" instead of ","
setwd("~/Downloads")
bmwdata <- read.csv("bmwpricing.csv",sep=",", header=TRUE)
attach(bmwdata)
# price vs mileage
model <- lm(price ~ mileage, bmwdata)
summary(model)
ggplot(bmwdata, aes(x = mileage, y = price)) + geom_point(size = 0.1) + geom_smooth(method = 'lm')
plot(model)

# price vs engine power
model1 <- lm(price ~ engine_power, bmwdata)
summary(model1)
ggplot(bmwdata, aes(x = engine_power, y = price)) + geom_point(size = 0.1) + geom_smooth(method = 'lm')
plot(model1)

