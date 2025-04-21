hits <- c(15, 25 ,18 ,12 ,28, 20 ,18, 30, 22 ,10,
          23, 16 ,14, 27, 19, 11, 32 ,21 ,16 ,29 ,17 ,9, 26,
          23, 13, 31, 15 ,17, 24, 24)
x <- rep(c(1, 2, 3), 10)
potions <- rep(c('e', 'p', 't'), 10)
df <- data.frame(x, hits, potions)


#calculate overall mean
grand_mean <- mean(df$hits)

#compute group means
means <- tapply(df$hits, df$potions, mean)

print(paste("Grand mean is", grand_mean))
print(paste("The group means are ", means))

# Compute SSB (Sum of Squares Between groups)
# Each group has n = 10
SSB <- sum(10 * (means - grand_mean^2))

# Compute SSW (Sum of Squares Within groups)
SSW <- sum((df$hits[df$potions =='e'] - means[1])^2) +
  sum((df$hits[df$potions =='p'] - means[2])^2) +
  sum((df$hits[df$potions =='t'] - means[3])^2)

print(paste("SSB is ", SSB))
print(paste("SSW is ", SSW))

#calculate degrees of freedom
dfB <- 3 - 1 #between group df (k - 1)
dfW <- 30 - 3 # Within-group df (N - k)

print(paste("The degree of freedom between groups: ", dfB))

print(paste("The degree of freedom with groups: ", dfW))


#compute mean squares

MSB <- SSB / dfB
MSW <- SSW / dfW
print(paste("Mean Square between groups: ", MSB))
print(paste("Mean Square within groups: ", MSW))

# The F-values is
F_value <- MSB / MSW
print(paste("Computed F-value:", round(F_value, 3)))

#finally, compute the p value:
pval <- pf(F_value, 2, 27, lower.tail = FALSE)
print(paste("Computed p-value:", round(pval, 3)))

#compute and run an anova
anova <- aov(hits ~ factor(potions), data = df)
summary(anova)

