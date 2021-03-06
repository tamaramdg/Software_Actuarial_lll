###NOTIFICACIONES PARA ERRORES
##Message: condici�n gen�rica que se produce, el c�digo sigue corriendo
##Warning: Algo est� mal pero no necesariamente fatal
##Error: Un aviso de que un problema fatal ocurre
##Condidition: Algo inesperado puede ocurrir

#WARNING
log(-1)

#ERROR
imprimeMSJ<- function(x){
  if(x>0)
    print("x es mayor que cero")
  else
    print("x es menor o igual a 0")
  invisible(x)
}
imprimeMSJ(1)
imprimeMSJ(NA)
imprimeMSJ(-5)

##Soluci�n
imprimeMSJ2<-function(x){
  if(is.na(x))
    print("x es un valor faltante")
  else if (x>0)
   print("x es mayor que 0")
  else
   print("x es menor a 0")
  invisible(x)
}
imprimeMSJ2(1)
imprimeMSJ2(-5)
imprimeMSJ2(NA)

###HERRAMIENTAS PARA DEPURAR
##TracebaCK: Imprime la funci�n que se est� ejecutando
##debug: marca una funci�n para correrla paso a paso
#browser: suspende la ejecuci�n de una funci�n y pone la funci�n en depuraci�n
##trace: te permite insertar c�digo para depurar en una funci�n en lugares espec�ficos del c�digo
##recover: recupera el comprtamiento del error para que puedas mandar a browser la funci�n


rm(list=ls())
##Ejemplo traceback
mean(x)
traceback() #encuentra el error y devuelve lo que est� mal

lm(y~x)
traceback()

##Ejemplo debug
debug(lm)
lm(y~x)
debug(eval)
lm(y~x)
undebug(lm)
undebug(eval)

#Options(error=recover) permite entrar a ver el error por partes
#Options(error=stop) para que deje de hacer lo que hace

###LA FUNCI�N str
##Muestra una forma compacta de la estructura interna de un objeto en R
str(str)
#Estructura de otra funci�n
str(lm)
str(ls)
x<- rnorm(100)
str(x)
summary(x)
f<- gl(40,10)
str(f)
summary(f)
str(airquality)
summary(airquality)

m<- matrix(rnorm(100),10,10)
str(m)
summary(m)

s<- split(airquality, airquality$Month)
str(s)


##GENERAR N�MEROS ALEATORIOS
#rnorm: variables aleatorias con una media de desviaci�n est�ndar dadas. 
#dnorm: eval�a la funci�n de dendisad en un punto de una distribuci�n normal dada una media y desviaci�n est�ndar. es una funci�n de cada numero
#pnorm: eval�a la funci�n de distribuci�n en un punto de una distribuci�n normal. dice la evaluacion de una integral, o sea el �rea bajo la curva
#rpois: genera variables aleatorias Poisson con una tasa dada
##PREFIJOS
#d densidad
#r generar variable aleatoria
#p distribucion acumulativa
#q cuantil de una funci�n

x<- rnorm(10)
x

y<- rnorm(10,50,5)
y
 summary(x)
summary(y) 

data<- read.table("foo.txt")
