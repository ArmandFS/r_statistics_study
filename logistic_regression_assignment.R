#create the data based on the table
island_data <- data.frame(
  Island = c("Ulkokrunni", "Maakrunni", "Ristikari", "Isonkivenletto", "Hietakraasukka", "Kraasukka", "Lansiletto"),
  Area = c(185.8, 105.8, 30.7, 8.5, 4.8, 4.5, 4.3),
  Extinct = c(5, 3, 10, 6, 3, 4, 8),
  NotExtinct = c(70, 64, 56, 45, 25, 16, 35)
)


#fit the logistic regression model
model <-glm(cbind(Extinct, NotExtinct) ~ Area, data = island_data, family = binomial)
summary(model)


#calculate the test statistic
#Manually compute G^2
#Get predicted probabilities
predicted_probs <- fitted(model)  # gives predicted p_i
m <- island_data$Extinct + island_data$NotExtinct
y <- island_data$Extinct
mu_hat <- m * predicted_probs

# Apply formula
G2 <- 2 * sum(
  y * log(y / mu_hat) + 
    (m - y) * log((m - y) / (m - mu_hat))
)

# Print test statistic and p-value
df <- df.residual(model)
p_value <- pchisq(G2, df, lower.tail = FALSE)

cat("G^2 test statistic:", G2, "\n")
cat("Degrees of freedom:", df, "\n")
cat("p-value:", p_value, "\n")


#calculate the OR (Odds ratio) from the summary
exp(coef(model))


#95% confidence interval for odds ratio
exp(confint.default(model))

#find the predicted probability where Area = 75
predict(model, newdata = data.frame(Area = 75), type = "response")

#find the fitted value
n <- 51
prob_extinct <-predict(model, newdata = data.frame(Area=8.5), type = "response" )

#fitted counts
fitted_extinct <- total * prob_extinct
fitted_nonextinct <- total * (1 - prob_extinct)

fitted_extinct
fitted_nonextinct


2 * (1 - pnorm(2.298))
