#example using mapply for noise function

noise <- function(n,mean_s,std_s){
  rnorm(n,mean_s,std_s)
}

different_noises_fixed_std <- function(listn,listmean,std_s){
  mapply(noise,listn,listmean,std_s)
}