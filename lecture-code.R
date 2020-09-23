## ----include=FALSE------------------------------------------------------------
knitr::opts_chunk$set(warning=FALSE, message=FALSE)
knitr::purl("lecture-code.Rmd")


## ----include=FALSE------------------------------------------------------------
#install.packages()


## ----include=FALSE------------------------------------------------------------
# library(lintr)


## -----------------------------------------------------------------------------
# Male: sample 50 values from a univariate normal distribution with mean = 79 and std = 10
par(mfrow = c(1,2))
weight_male = rnorm(50, mean=79, sd=10)
hist(weight_male, xlab="Weight in kg", main="Men", lwd=2, col="blue")

# Female: sample 50 values from a univariate normal distribution with mean = 66.7 and std = 10
weight_female = rnorm(50, mean=66.7, sd=10)
hist(weight_female, xlab="Weight in kg", main="Women", lwd=2, col="red")


## -----------------------------------------------------------------------------
#plot densities
#Male: sample 100000 values from a univariate normal distribution with mean=79 and std=10
par(mfrow=c(1,2))
weight_male = rnorm(100000, mean=79, sd=10)
dens_weight_male = density(weight_male)
plot(dens_weight_male, xlab="Weight in kg", main="Men", lwd=2, col="blue")
abline(v=79, lty="dashed")

#Female: sample 100000 values from a univariate normal distribution with mean=66.7 and std=10
weight_female = rnorm(100000, mean=66.7, sd=10)
dens_weight_female = density(weight_female)
plot(dens_weight_female, xlab="Weight in kg", main="Women", lwd=2, col="red")
abline(v=66.7, lty="dashed")

