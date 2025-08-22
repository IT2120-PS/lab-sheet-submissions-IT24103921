setwd("C:\\Users\\IT24103921\\Desktop\\IT24103921")
getwd()

#1
branch_data <- read.table("Exercise.txt", header = TRUE, sep=",")
attach(branch_data)
fix(branch_data)

#2
#Types & scales:
#Branch: identifier(nominal)
#Scales_X1: quantitative, ratio
#Advertising_X2: quantitative, ratio
#Years_X3: quantitative discrete, ratio

#3
boxplot(Sales_X1,
        main = "Box Plot for Sales",
        ylab = "Sales_X1",
        outline = TRUE,
        outpch = 8,
        horizontal = TRUE)

#4
quantile(Advertising_X2,
         probs = c(0, 0.25, 0.5, 0.75, 1))
IQR(Advertising_X2)

#5
get.outliers <- function(z){
  q1 <- quantile(z, 0.25)
  q3 <- quantile(z, 0.75)
  iqr <- q3 - q1
  lb <- q1 - 1.5*iqr
  ub <- q3 + 1.5*iqr
  outliers <- z[z < lb | z > ub]
  print(paste("Upper Bound = ", ub))
  print(paste("Lower Bound = ",lb))
  print(paste("Outliers:", paste(sort(z[z < lb | z > ub]), collapse = ", ")))
}
get.outliers(Years_X3)
