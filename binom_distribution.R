#practicing how to compute binomial distributions and bernoulli distributions using R.
#dbinom(x, size, prob)

#calculate P(x=2, size=10, prob 1/7)
dbinom(x=2, size=10, prob = 1/7)


#calculate cumulative (binomial probabilities) 
#pbinom(q, size, prob)

#q is the outcome for which we wish to find P (x < q)
pbinom(q=3, size=10, prob=1/7)
