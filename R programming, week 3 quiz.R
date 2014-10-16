library(datasets)
data(iris)
?iris
str(iris)
mean(iris[iris$Species == "virginica","Sepal.Length"])

data(mtcars)
str(mtcars)
(hp <- sapply(split(mtcars$hp, mtcars$cyl), mean))
hp[3]-hp[1]
