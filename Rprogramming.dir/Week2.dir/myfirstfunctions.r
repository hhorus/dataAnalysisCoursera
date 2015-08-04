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