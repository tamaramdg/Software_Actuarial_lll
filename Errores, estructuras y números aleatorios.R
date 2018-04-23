###NOTIFICACIONES PARA ERRORES
##Message: condición genérica que se produce, el código sigue corriendo
##Warning: Algo está mal pero no necesariamente fatal
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

##Solución
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
##TracebaCK: Imprime la función que se está ejecutando
##debug: marca una función para correrla paso a paso
#browser: suspende la ejecución de una función y pone la función en depuración
##trace: te permite insertar código para depurar en una función en lugares específicos del código
##recover: recupera el comprtamiento del error para que puedas mandar a browser la función


rm(list=ls())
##Ejemplo traceback
mean(x)
traceback() #encuentra el error y devuelve lo que está mal

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

###LA FUNCIÓN str
##Muestra una forma compacta de la estructura interna de un objeto en R
str(str)
#Estructura de otra función
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


##GENERAR NÚMEROS ALEATORIOS
#rnorm: variables aleatorias con una media de desviación estándar dadas. 
#dnorm: evalúa la función de dendisad en un punto de una distribución normal dada una media y desviación estándar. es una función de cada numero
#pnorm: evalúa la función de distribución en un punto de una distribución normal. dice la evaluacion de una integral, o sea el área bajo la curva
#rpois: genera variables aleatorias Poisson con una tasa dada
##PREFIJOS
#d densidad
#r generar variable aleatoria
#p distribucion acumulativa
#q cuantil de una función

x<- rnorm(10)
x

y<- rnorm(10,50,5)
y
 summary(x)
summary(y) 

data<- read.table("foo.txt")
