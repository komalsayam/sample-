
# Sampling Distribution Implementation in R

# (a) Generate a sampling distribution
set.seed(123)
population <- rnorm(10000, mean = 5, sd = 2)
sample_means <- replicate(1000, mean(sample(population, 30, replace = TRUE)))

# (b) Visualize the sampling distribution
png("sampling_distribution.png")
hist(sample_means, breaks = 30, col = "lightblue", main = "Sampling Distribution of Sample Means", xlab = "Sample Mean")
dev.off()

# (c) Calculate mean and standard deviation of sampling distribution
mean_val <- mean(sample_means)
sd_val <- sd(sample_means)

# (d) Calculate probability that sample mean <= 6
prob <- mean(sample_means <= 6)

# Save results to text file
output <- paste("Mean of sampling distribution:", mean_val,
                "\nStandard Deviation of sampling distribution:", sd_val,
                "\nProbability that sample mean <= 6:", prob)
write(output, file = "sampling_output.txt")
