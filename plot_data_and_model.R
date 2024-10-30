#Script to plot data and model

growth_data <- read.csv("experiment.csv")

logistic_fun <- function(t) {
  
  N <- (N0*K*exp(r*t))/(K-N0+N0*exp(r*t))
  
  return(N)
  
}

N0 <- exp(6.8941709) # from model 1, written as the intercept. need to do exp because output is in log form
  
r <- 0.0100086 # the gradient from model 1, written in the summary of model as t
  
K <- 6.000e+10 # the intercept from model 2

ggplot(aes(t,N), data = growth_data) +
  
  geom_function(fun=logistic_fun, colour="red") +
  
  geom_point()

  #scale_y_continuous(trans='log10')


