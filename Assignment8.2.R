library(RcmdrPlugin.IPSUR)
library(psych)
data("RcmdrTestDrive")


#a. Compute the measures of central tendency for salary and reduction which variable has highest center?
attach(RcmdrTestDrive)
#Salary
c(mean(salary),median(salary))

#reduction
c(mean(reduction),median(reduction))

#Can also be checked using kurtosis 
kurtosi(salary)
kurtosi(reduction)



#b. Which measure of center is more appropriate for before and after?
#if distribution is symmetric, then mean and median should be same, 
#Boxplot can be used to check where the median lies in the distibution
windows()
par(mfrow=c(1,2))
boxplot(before,horizontal = T,main="Before")
boxplot(after,horizontal = T,main="After")

#Skewness can be used to check the assymetric distribution
skew(before)
skew(after)
#after is more -ve means more distibution on the right side.