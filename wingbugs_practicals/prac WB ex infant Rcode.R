########################################################
# Diagnostics Practical: Infant Exercise
########################################################

# Set the working directory
setwd("C:/user")
# Get the data
ex<-dget("prac diagnostics ex infant data.txt")

# Arrange data into a dataframe with one column of weight
# change, and one column specifying the group
y.df<-data.frame(y=c(ex$y1,ex$y2),group=c(rep(1,ex$n1),rep(2,ex$n2)))

# attach the data frame so that cah easily use the results
attach(y.df)

# Print mean for each group
round(tapply(y,group,mean))

# Print sd for each group
round(tapply(y,group,sd))

# Boxplot of the weight change for the two groups
 boxplot(y~group)
