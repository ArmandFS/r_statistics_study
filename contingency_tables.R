#for assignment 2, 1b

#we can create a contingency table based on the observed values
observed_table <- matrix(c(38, 12, 
                           293, 154, 
                           475, 431, 
                           489, 570, 
                           55, 129, 
                           7, 61), 
                         nrow = 6, byrow = TRUE)


#test using Pearson Chi-Square test
chi_test <- chisq.test(observed_table, correct= FALSE)
print(chi_test)





#test using G-Test (Likelihood Ratio Chi-square test)
#for this problem, I manually calculated it due to library errors
expected <- chisq.test(observed_table, correct=FALSE)$expected

#Compute G-statistic correctly
G_stat <- 2 * sum(observed_table * log(observed_table / expected))


#Compute degrees of freedom
df <- (nrow(observed_table) - 1) * (ncol(observed_table) - 1)

#Compute p-value
p_value <- pchisq(G_stat, df, lower.tail = FALSE)

#Print output 
cat(sprintf("G-squared = %.4f, df = %d, p-value = %s\n", 
G_stat, df, ifelse(p_value < 2.2e-16, "< 2.2e-16", format(p_value, digits=5))))



#use Fisher's exact test for this contingency table
new_table <- matrix(c(1295, 1167, 62, 190), nrow = 2, byrow = TRUE)

#Perform Fisher's Exact Test (one-sided test for ?? < 1)
fisher.test(new_table, alternative = "less")


#pearson's chi-square test
chisq.test(new_table, correct=FALSE)


#perform mid-p test 
library(exact2x2)
exact2x2(new_table, alternative ="less", midp = TRUE)
