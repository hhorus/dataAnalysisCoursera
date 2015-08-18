helloWorld <- function(){
  print("Hello World !")
}

add2 <- function(x,y){
  x+y
}

aboveN <- function(x,n = 10){
  idx <- x > n
  x[idx]
}

columnmean <- function(x,removeNA = TRUE){
  nc = ncol(x)
  #store means
  means = numeric(nc)
  for (i in 1:nc){
    means[i] <- mean(x[,i],na.rm = removeNA)
  }
  return(means)
}

#you can call testfun1(4) with no error
testfun1 <- function(a,b){
  print(a)
}

#if you call testfun2(4) you will have 4 printed and then an error will be triggered
testfun2 <- function(a,b){
  print(a)
  print(b)
}

#the  ... argument
myplot <- function(x,y,type="l",...){
  plot(x,y,type = type,...)
}

f2 <- function(a, b = 1, c = 2, d = NULL){
  print(a)
}

#Lexical Scoping
f3 <- function(x,y){
  x^2 + y/z
}

#Lexcial Scoping

make.power <- function(n){
  pow <- function(x){
    x^n
  }
  pow
}

#y <- 10
#f <- function(x){
#  y <- 3
#  y^2 + g(x)
#}
#
#g <- function(x){
#  x*y
#}
#f(3) -> 39, cuz g was defined in the global environment, its scope so the y used in g is 10, not 3 >< dynamic scope

make.NegLogLik <- function(data,fixed = c(FALSE,FALSE)){
  params <- fixed
  function(p){
    params[!fixed] <- p
    mu <- params[1]
    sigma <- params[2]
    a <- -0.5*length(data)*log(2*pi*sigma^2)
    b <- -0.5*sum((data-mu)^2)/(sigma^2)
    -(a+b)
    }
}