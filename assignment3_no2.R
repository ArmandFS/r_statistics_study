Apples_df <- read.table("~/VICTORIA UNIVERSITY STUFF/Trimester 1, Year 1/Applied Stats (STAT 292)/Assignment 3/Apples.csv", 
             header = TRUE, , sep = ",")

#create linear regression
apple_linear_model <- lm(Rate ~ Days, data = Apples_df)

#view the summary of the linear regression
summary(apple_linear_model)


#create scatterplot with regression line 
plot(x = Apples_df$Days, y = Apples_df$Rate,
     main = "Scatterplot of Fungal Growth Rate vs Days",
     xlab = "Days Since Apple Was Picked",
     ylab = "Fungal Growth Rate")

#Add regression line
abline(apple_linear_model, col = "red")

#anova on the linear regression model
anova(apple_linear_model)



#qq plot
qqnorm(residuals(apple_linear_model),
       main = "QQ-Plot of Residuals")
qqline(residuals(apple_linear_model), col = "red")

#create Cook's distance barplot


#this is for the threshold line
cooks_d_lm <- cooks.distance(apple_linear_model)
n <- length(cooks_d_lm)
threshold <- 4 / n

#create Cook's distance barplot
barplot(cooks_d_lm,
        main = "Cook's Distances from Regression",
        xlab = "Observation", ylab = "Cook's Distance")
abline(h = threshold, col = "red", lty = 2)




