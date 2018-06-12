eg2 <- data.frame(dget("prac reg fict data.txt"))
attach(eg2)

# scatterplot matrix plus smoother
pairs(eg2, panel=panel.smooth)

# centring x-vars
x1 <- x1-mean(x1)
x2 <- x2-mean(x2)
x3 <- x3-mean(x3)

# fitting a linear model
lm1 <- lm(y ~ x1+x2+x3)
summary(lm1)
AIC(lm1)
