# Figure 3 exercise instructions: 
setwd("/Users/perusha/git_repos/UoR-Bayesian-Course/stan_practicals")

api = readRDS("api.RData")

centipedes = readRDS("centipedes.RData")

practical1_data = readRDS("practical1_data.RData")

sideeffect = readRDS("sideeffect.RData")

source("graphical_diagnostics.R")

fig3_1=stan("/Users/perusha/git_repos/UoR-Bayesian-Course/exercises/figure3_1.stan", data=practical1_data)

fig3_1_v2=stan("/Users/perusha/git_repos/UoR-Bayesian-Course/exercises/figures3_1_v2.stan", data=practical1_data)

get_elapsed_time(fig3_1)

get_elapsed_time(fig3_1_v2)
