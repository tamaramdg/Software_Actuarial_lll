setwd("~/Actuaría LV/Progra lll/specdata")
specdata<- setwd("~/Actuaría LV/Progra lll/specdata")


mediacontaminante<-function(specdata, contaminante="sulfate", id=1:332 ){
  if (contaminante== "sulfate"){
    col=2
  }else if (contaminante=="nitrate"){
    col=3
  }
  
  for (i in id){
    bar <- read.csv(paste(directorio, "/", formatC(n, width = 3, flag = "0"),".CSV", sep = ""))  
    tab= read.csv(bar)
    media<- mean(tab[,col],na.rm=TRUE)
    media
  }
}

mediacontaminante("specdata", contaminante= "sulfate", id= 1:332)
