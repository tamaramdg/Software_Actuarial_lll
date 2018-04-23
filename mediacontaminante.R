
setwd("~/Actuaría LV/Progra lll/specdata")
specdata<- setwd("~/Actuaría LV/Progra lll/specdata")


mediacontaminante<-function(specdata, contaminante, id=1:332 ){
  if (contaminante== "sulfate"){
    col=2
  }else if (contaminante=="nitrate"){
    col=3
  }
  
  for (i in id){
    foo= formatC(i, width= 4, flag="0")
    bar= paste(foo, "csv", sep=".")  
  
  tab= read.csv(bar)
    media<- mean(tab[,col],na.rm=TRUE)
    media
  }
}
  
  mediacontaminante(specdata, "sulfate", id=1:332)
  

  

  