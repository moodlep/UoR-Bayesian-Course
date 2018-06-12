# Q2 10000 samples

n = 20 # no of independent trials
y = 7 # number of successes

ns = 10000 # no of samples

# for a uniform p(theta) 
a_theta = 1
b_theta = 1

a = a_theta+y
b = b_theta+n-y

sim.post.10000<-rbeta(ns,a,b)  # generate 100 simulations
hist(sim.post.10000,freq=F) 

curve(dbeta(x,a,b),add=T)

# estimate 95% conf
quant<-c(0.025,0.975)
cred.10000<-quantile(sim.post.10000,quant)  # 95% interval of sampled data
cred.theory<-qbeta(quant,a,b)  # 95% interval for theoretical beta model. 

# plot the log odds: 
log.odds.10000<-log(sim.post.10000/(1-sim.post.10000))
hist(log.odds.10000)
quantile(log.odds.10000,quant)
