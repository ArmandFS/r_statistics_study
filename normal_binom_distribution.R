#normal distribution examples
#computing normal probabilities with R

#calculate P(Z <--2.0785)
pnorm(q = -2.0785, mean = 0, sd=1)

#calculate P(x <= 10) for X ~ N(7.1429, 6.1224)
pnorm(q=2, mean=50/7, sd= sqrt(300/49))


#natural births on a monday problem
#use R to calculate P(Y<=2)
pbinom(q=2, size=50, prob=1/7)

#use R to calculate P(X<=2) for X ~ N(50/7, 300/49)
pnorm(q=2, mean=50 / 7, sd=sqrt(300/49))


#probability that more than 2 but fewer than 10 of the 50 births occur on a monday

