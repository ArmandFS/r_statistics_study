brand <- c(1,1,2,2, 3,3,4,4)
device <- c("A", "B", "C")
value <- c(17.9, 18.1, 17.8,17.8, 18.1,18.2,17.8,17.9,
           18.2, 18.0, 18.0,18.3, 18.4, 18.1, 18.1, 18.5,
           18.0, 17.8, 17.8,18.0, 18.1, 18.3, 18.1, 17.9)
df <- data.frame(value, rep(brand,3),rep(device,each=8))
colnames(df) <- c("Value","Brands","Device")

#perform two-way ANOVA
anova_result <- aov(value ~ factor(Brands) * Device, data=df)
summary(anova_result)

#scatter plot
plot(anova_result$fitted.values, anova_result$residuals, 
     main = "Residuals vs Fitted Values",
     xlab = "Fitted Values", ylab = "Residuals")

abline(h = 0, lty = 2, col = "red")

#qq plot
qqnorm(anova_result$residuals,main = "Normal Q-Q Plot of the Residuals")
qqline(anova_result$residuals, col="blue")

#interaction plot
interaction.plot(x.factor = df$Brands,
                 trace.factor = df$Device,
                 response = df$Value,
                 fun = mean,
                 type = "b",
                 lwd = 3,
                 pch = c(1, 2, 3),
                 col = c("red", "blue", "green"),
                 xlab = "Battery Brand",
                 ylab = "Mean Battery Life",
                 main= "Interaction Plot of Battery by Brand and Device",
                 trace.label = "Device Type",
                 legend = TRUE)

                 


