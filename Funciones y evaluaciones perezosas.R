#FUNCIONES

suma2<- function(x,y)
  x+y
suma2(3,5)

mayor10<- function(x)
{
  seleccionados <- x>10
  x[seleccionados]
}
  mayor10(1:20)
  mayor<- function(x, n=10)
  {
    x[x>n]
  }
  mayor(1:20)
  mayor(1:20,4)
  
  promedioCol <- function(x,quitNA=TRUE){
    nc<- ncol(x)
    medias<- vector("numeric", nc)
    for (i in 1:nc){
      medias[i]<- mean(x[,i],na.rm=quitNA)
  }
  medias
  }
  x<- matrix(1:100,20,5)
  promedioCol(x)
  
  #EVALUACI�N PEREZOSA
  f<- function (a,b){
    a^2
  }
  f(2)
  
  g<- function(a,b){
    print(a)
    print(b)
  }
  g(3,4)
  
  #EL ARGUMENTO ...
  Indica el n�mero variable de argumentos que usualmente son pasados a otras funciones
  ... t�picamente se usa cuando tienes una serie de argumetos en la funci�n original y no quieres escribirlos todos en una sub funci�n
  
  #Recibe todos los argumentos adicionales y tenerlos almacenados 
  
  miplot<- function(x,y,tipo="l"){
    plot(x,y,type=tipo)
  }
  miplot(1:10, 10:1)
  plot(1:10,10:1)
  
  miplot(1:10,10:1,main="Mi Gr�fica") #NO JALA PORQUE LA FUNCION ORIGINAL ESTA MUY LIMITADO
  plot(1:10,10:1,main="Mi Gr�fica")
  
  #pero si ahora le ponemos los puntos suspensivos aparece la magia
  
  miplot<- function(x,y,tipo="l",...){
    plot(x,y,type=tipo,...)
  }
  miplot(1:10, 10:1)
  plot(1:10,10:1)
  
  miplot(1:10,10:1,main="Mi Gr�fica")
  
  miplot(1:10,10:1, main="Mi Gr�fica", perro="123")
  
  #Tambi�n se ocupa cuando el n�mero de argumentos no puede ser conocido por anticipado
  args(paste)
  function(...,sep="", collapse=NULL)
    ejemplin: paste("Jose", "Paz", "Milu", "/") x
        paste ("Jose", "Paz", "Milu", sep= "/") wuu
        
  mipaste<- function(sep="",...){
    paste(...,sep=sep)
  }
  
  mipaste("/", "milu", "Kahlua", "Paloma", "Jagger")
  
  paste("a","b", sep":")
  
  install.packages("swirl")
  library(swirl)
swirl()  
  
  
  