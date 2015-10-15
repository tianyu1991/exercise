# 1Give the value of μ that minimizes the least squares equation ∑ni=1wi(xi−μ)2
x <- c(0.18, -1.54, 0.42, 0.95)
w <- c(2, 1, 3, 1)
f<-function(x,w,u){
	a<- (x-u)^2%*%w
	return(a)
}
u<-c(0.0025,0.1471,0.300,1.077)
for(i in 1:4){
  f(x,w,u[i])
}

#2 Fit the regression through the origin and get the slope treating y as the outcome and x as the regressor. 
fit <- lm(y ~ 0 + x)

#3 Do data(mtcars) from the datasets package and fit the regression model with mpg as the outcome and weight as the predictor. Give the slope coefficient
data(mtcars)
x<-mtcars$wt
y<-mtcars$mpg
fit_c<-lm(y ~ x)

#6 What is the value of the first measurement if x were normalized (to have mean 0 and variance 1)?
(x-mean(x))/sd(x)

#1 Give a P-value for the two sided hypothesis test of whether β1 from a linear regression model is 0 or not.
fit <- lm(y ~ x)
summary(fit)

#3 In the mtcars data set, fit a linear regression model of weight (predictor) on mpg (outcome). Get a 95% confidence interval for the expected mpg at the average weight. What is the lower endpoint?
predict(fit_c,data.frame(x=mean(x)), interval="confidence")

#4 Consider again the mtcars data set and a linear regression model with mpg as predicted by weight (1,000 lbs). A new car is coming weighing 3000 pounds. Construct a 95% prediction interval for its mpg. What is the upper endpoint?
predict(fit_c,data.frame(x=3), interval="prediction")
