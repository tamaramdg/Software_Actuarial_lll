getwd()

rankhospital<- function(estado, resultado, num){
 outcome<- as.data.frame(outcome)
 
 if (!((resultado== "ataque al coraz�n" )| (resultado=="falla al coraz�n")| (resultado=="neumon�a"))){
   stop("resultado inv�lido")
   break
 }
 state<- as.character(outcome$State)
 if(!(estado %in% state)){
   stop("Resultado Inv�lido, frend")
   break
 }
 
 if (resultado=="ataque al coraz�n"){
   cool<- outcome[,11]
        
  } else if (resultado=="falla al coraz�n"){
     cool<- outcome[,17]
   } else if (resultado== "neumon�a"){
    cool<- outcome[,23]
  }
  
  est<- subset(outcome, outcome$State== estado)
  est[,cool]<- suppressWarnings(as.numeric(est[,cool]))
  
  if (num== "mejor"){
    val<- est[which.min(est[,cool]),]
    val1<- val[order(val$Hospital.Name),]
    mej<- val1[1,2]
  
    
  }else if (num=="peor"){
    val<- est[which.max(est[,cool]),]
    val1<- val[order(val$Hospital.Name),]
    mej<- val1[1,2]
    mej
  }else{
    val<-est[(est[,cool]),]
    obt<- order(est[,cool], est[,2])
    val1<- est[obt,2]
    mej<- val[num]
    mej
  }
  
}

rankhospital("TX", "falla al coraz�n", 4)
