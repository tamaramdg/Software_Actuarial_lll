set.seed(1)
z <- 5
x <- vector("numeric")
while (z>=3 && z<=10){
  moneda <- rbinom(1,1,0.5)
  x <- c(x,z)
  if (moneda == 1){
    z<-z+1
  } else{
    z<-z-1
  }
}
x