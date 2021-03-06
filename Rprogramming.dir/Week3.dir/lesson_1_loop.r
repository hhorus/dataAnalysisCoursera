# different applications of lapply
# Simple case, run if draw samples from a uniform random distribution, with one argument
# it corresponds to the number of samples drawn from uniform distribution between 0 and 1
simplerunif <- function(x){
  lapply(x,runif)
}

#   parameterize lapply
parrunif <- function(x,min_s,max_s){
  lapply(x, runif,min_s,max_s)
}