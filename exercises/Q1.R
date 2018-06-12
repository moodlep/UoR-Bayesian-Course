# Question 1

mle = 7/20
> curve(dbeta(x,1,1),from=0,to=1))
Error: unexpected ')' in "curve(dbeta(x,1,1),from=0,to=1))"
> curve(dbeta(x,1,1),from=0,to=1)
> curve(dbeta(x,8,14),from=0,to=1)
> qbeta(c(0.025,0.975),8,14)
[1] 0.1810716 0.5696755
> curve(dbeta(x,1.4,5.6),from=0,to=1)
> curve(dbeta(x,8.4,18.6),from=0,to=1)
> curve(dbeta(x,1.4,5.6),from=0,to=1)
> curve(dbeta(x,8.4,18.6),from=0,to=1, add=TRUE)
> curve(dbeta(x,1.4,5.6),from=0,to=1, ylim=c(0,7))
> curve(dbeta(x,8.4,18.6),from=0,to=1, add=TRUE)
> qbeta(c(0.025,0.975),8.4,18.6)
[1] 0.1546589 0.4940403
> curve(dbeta(x,1.4,5.6),from=0,to=1, ylim=c(0,7))
> curve(dbeta(x,6.4,15.6),from=0,to=1, add=TRUE)
> qbeta(c(0.025,0.975),6.4,15.6)
[1] 0.1257646 0.4919744
> qbeta(c(0.025,0.975),10.4,41.6)
[1] 0.1040554 0.3177460
> curve(dbeta(x,10.4,41.6),from=0,to=1, add=TRUE)
> 