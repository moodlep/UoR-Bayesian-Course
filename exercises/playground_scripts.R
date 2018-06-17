# Sun 18 June 2018 - rstan
# Playground scripts

setwd("/Users/perusha/git_repos/UoR-Bayesian-Course/")

library(rstan)
rstan_options(auto_write=TRUE)
options(mc.cores=parallel::detectCores())
constants=list( m = 4, s = 2.5, N=100)
output = stan(file="/Users/perusha/git_repos/UoR-Bayesian-Course/exercises/stan_playground.stan", data=constants,iter=1,chains=1, algorithm="Fixed_param")
out = as.matrix(output)
hist(out)
