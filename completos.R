
setwd("~/Actuaría LV/Progra lll/specdata")
specdata<- setwd("~/Actuaría LV/Progra lll/specdata")


  completos <- function(directorio, id = 1:332){
    
    foo <- numeric()
    
    for (n in id){
      bar <- read.csv(paste(directorio, "/", formatC(n, width = 3, flag = "0"),".CSV", sep = ""))
      
      foo <-c(foo, sum(complete.cases(bar)))
      
      
    }
    return(data.frame(id, foo))
  }
  completos("specdata", 1:332)