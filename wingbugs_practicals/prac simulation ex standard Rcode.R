###############################################
# Simulation Practical Standard Simulation
##############################################
# Set the value of a and b

a <- 
b <- 

# (a) Simulate 100 values from a beta distribution with parameters a and b

n<-100
sim.post.100<-rbeta(n,a,b) 

# Plot a histogram of these values scaled to have unit area using

hist(sim.post.100,freq=F) 

# or use  hist(sim.post.100,prob=T)

# and add a curve by replacing alpha and beta with the relevant code

curve(dbeta(x,a,b),add=T)

# (b)  Estimate a 95% credible interval theta

quant<-c(0.025,0.975)
cred.100<-quantile(sim.post.100,quant)

# and compare them to the theoretical value you obtained in practical 2 using

cred.theory<-qbeta(quant,a, b)

# (c) Calculate log odds, loge(theta/(1-theta)), for each draw from the posterior distribution 

log.odds.100<-log(sim.post.100/(1-sim.post.100))

#Plot using either a histogram or a density plot

hist(log.odds.100) 

# or   

plot(density(log.odds.100))

# 95% credible interval

quantile(log.odds.100,quant)

 
