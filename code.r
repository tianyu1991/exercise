#Give the value of μ that minimizes the least squares equation ∑ni=1wi(xi−μ)2
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

#2Fit the regression through the origin and get the slope treating y as the outcome and x as the regressor. 
fit <- lm(y ~ 0 + x)

#Do data(mtcars) from the datasets package and fit the regression model with mpg as the outcome and weight as the predictor. Give the slope coefficient
data(mtcars)
sub<-data.frame(mpg=mtcars$mpg,weight=mtcars$wt)
fit <- lm(sub$mpg ~ sub$weight)

#6 What is the value of the first measurement if x were normalized (to have mean 0 and variance 1)?
(x-mean(x))/sd(x)


