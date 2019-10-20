# Generating data from a normal distribution

setwd("/Users/perusha/git_repos/UoR-Bayesian-Course/")

y = rnorm(100000, 0, 1)
hist(y)
mean(y)
sd(y)

z = y^2
hist(z)
