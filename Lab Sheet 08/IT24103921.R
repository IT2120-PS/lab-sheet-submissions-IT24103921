setwd("C:\\Users\\IT24103921\\Desktop\\IT24103921")
getwd()

#Q1
data <- read.table("Exercise - LaptopsWeights.txt", header = TRUE)
fix(data)
attach(data)

popmn <- mean(Weight.kg.)
popmn

popsd <- sd(Weight.kg.)
popsd

#Q2
samples <- c()
n <- c()

for(i in 1:25) {
  s <- sample(Weight.kg., 6, replace = TRUE)
  samples <-cbind(samples, s)
  n <- c(n, paste('S', i))
  
}

colnames(samples) = n

s.means <- apply(samples, 2, mean)
s.means

s.sd <- apply(samples, 2, sd)
s.sd


#Q3
samplemean <- mean(s.means)
cat("Relationship 1: Mean of Sample Means vs Population Mean\n")
cat("  Mean of Sample Means =", samplemean, "\n")
cat("  Population Mean =", popmn, "\n")
#They are approximately equal (unbiased estimator)

samplesd <- sd(s.means)
cat("Relationship 2: SD of Sample Means vs Population SD\n")
cat("  SD of Sample Means =", samplesd, "\n")

# Theoretical standard error (what we expect)
theoretical_se <- popsd / sqrt(6)
cat("Theoretical Standard Error (pop_sd / sqrt(6)):", theoretical_se, "\n\n")

#They are approximately equal (Central Limit Theorem)

cat("Population SD =", popsd, "\n")








