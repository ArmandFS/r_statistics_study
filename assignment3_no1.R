Alex_Lantern_df <- read.csv("~/VICTORIA UNIVERSITY STUFF/Trimester 1, Year 1/Applied Stats (STAT 292)/Assignment 3/AlexandersLanternVersion3.csv")

#see data
head(Alex_Lantern_df)

#perform one way anova
data_anova <- aov(Distance ~ Pair, data = Alex_Lantern_df)

#display summary of anova
summary(data_anova)

#qq plot
qqnorm(residuals(data_anova), main = "Normal Q-Q Plot of residuals ANOVA on Pairs Effect Data")
qqline(residuals(data_anova), col = "red")


#box plot
boxplot(Distance ~ Pair, data = Alex_Lantern_df,
        main = "Box Plot of Distance by Distance Measure (Pair)",
        xlab = "Distance Measure (Pair)",
        ylab = "Distance")

#Levene's test for Homogeneity of variance for distance by pair
leveneTest(Distance ~ Pair,data = data, center ="mean")






