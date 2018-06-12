# Q2

n = 20 # no of independent trials
y = 7 # number of successes

ns = 100 # no of samples

# for a uniform p(theta) 
a_theta = 1
b_theta = 1

a = a_theta+y
b = b_theta+n-y

sim.post.100<-rbeta(ns,a,b)  # generate 100 simulations
hist(sim.post.100,freq=F) 

curve(dbeta(x,a,b),add=T)

# estimate 95% conf
quant<-c(0.025,0.975)
cred.100<-quantile(sim.post.100,quant)  # 95% interval of sampled data
cred.theory<-qbeta(quant,a,b)  # 95% interval for theoretical beta model. 

# plot the log odds: 
log.odds.100<-log(sim.post.100/(1-sim.post.100))
hist(log.odds.100)
quantile(log.odds.100,quant)
