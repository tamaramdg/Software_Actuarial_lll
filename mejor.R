getwd
getwd()
setwd("~/Actuar�a LV/Progra lll/Caso 2")
getwd()

outcome<- read.csv("outcome-of-care-measures.csv", colClasses= "character")
head(outcome)


ncol(outcome)
names(outcome)


outcome[,11]<- as.numeric(outcome[,11])
hist(outcome[,11])
plot(outcome[,11])
hist(outcome[,11])


mejor<- function(estado, resultado){
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
   b<- outcome[,11]
  
  } else if (resultado=="falla al coraz�n"){
    b<- outcome[,17]
  } else if (resultado== "neumon�a"){
    b<- outcome[,23]
  }
  
  
  
  est<- outcome[outcome$State==estado,]
  est
  vec<- est[,c(2,b)]
  if (sum(vec[,2]=="Not Available")<1){
    p<- vec[order(as.numeric(vec[,2])),]
    p1<- p[which(p[,2]==p[1,2]),]
    p2<- p1[order(p1[,1]),]
    p2[1,1]
    
  }else {
    q<- vec[- grep ("Not", vec[,2]),]
    p<- q[order(as.numeric(q[,2])),]
    p1<- p[which(p[,2]== p[1,2]),]
    p2<- p1[order(p1[,1]),]
    p2
  }
}
mejor("TX", "falla al coraz�n")
