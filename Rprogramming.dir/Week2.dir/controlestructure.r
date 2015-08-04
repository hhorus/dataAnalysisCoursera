maximum <- function(x,y){
  m = 0
  if (x > y){
    m <- x
  }
  else{ m <- y }
  return(m)
}

overvalue <- function(x,y){
  m <- if(x>y){
    10
  } else {
    0
  }
}

printseq <- function(n){
  for (i in 1:n)
    print(i)
}

printpartseq <- function(nf,ns){
  for (i in 1:nf){
    #Skip the first ns iterations
    if (i < ns){
      next
    }
    else{
      print(i)
    }
  }
}