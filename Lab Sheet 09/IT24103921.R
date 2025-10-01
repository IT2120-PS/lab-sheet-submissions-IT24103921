setwd("C:\\Users\\USER\\Desktop\\IT24103921")
getwd()

#Exercise

#Q1 - (i)
x <- rnorm(25, mean=45, sd=2)
x

#(ii)
result <- t.test(x, mu=46, alternative="less")
result
