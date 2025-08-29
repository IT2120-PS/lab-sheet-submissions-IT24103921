setwd("C:\\Users\\IT24103921\\Desktop\\IT24103921")
getwd()

#1)
Delivery_Times <- read.table("Exercise - Lab 05.txt", header=TRUE, sep=",")
fix(Delivery_Times)
attach(Delivery_Times)

#2)
histogram <- hist(Delivery_Time_.minutes., main = "Histogram of Delivery Times", breaks = seq(20, 70, length = 9), right = TRUE)

#3)
#It's symmetric Distribution (slightly right-skewed)D


#4)
freq <- histogram$counts
breaks <- histogram$breaks
cum.freq <- cumsum(freq)
new <- c()

for (i in 1:length(breaks)) {
  if (i==1) {
    new[i] <- 0
  } else{
    new[i] <- cum.freq[i-1]
  }
}

plot(breaks, new, type = "o",
     main = "Cumulative Frequency Polygon (Ogive)",
     xlab = "Delivery Time (minutes)",
     ylab = "Cumulative Frequency",
     ylim = c(0, max(cum.freq)))

cbind(Upper_Boundary = breaks, CumFreq = new)

