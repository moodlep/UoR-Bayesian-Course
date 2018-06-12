# Mon 11 June 2018 - rstan
# Practical 1

setwd("/Users/perusha/courses/UoR Bayesian Modelling/")

library(rstan)
rstan_options(auto_write=TRUE)
options(mc.cores=parallel::detectCores())
constants=list(N=30, p=0.8)
output = stan(file="/Users/perusha/courses/UoR Bayesian Modelling/simulation.stan", data=constants,iter=1,chains=1, algorithm="Fixed_param")
out=as.matrix(output)
dim(out)
head(out)
x = out[1,-length(out)]
barplot(table(x))
output_v2 = stan(file="/Users/perusha/courses/UoR Bayesian Modelling/simulation_v2.stan", iter=1,chains=1, algorithm="Fixed_param")
out2 = as.matrix(output_v2)
