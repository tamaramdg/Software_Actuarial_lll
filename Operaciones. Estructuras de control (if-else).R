setwd("~/Actuar�a LV/Progra lll/Software_Actuarial_lll")

#EXTRACCI�N DE VALORES FALTANTES

airquality[1:6,]

#FUNCI�N IMPORTANTE
complete.cases(airquality[1:6,])
completos<- complete.cases(airquality)
completos
#Extraer s�lo los completos:
airquality[completos,]   #ponerlo en blanco son todas las columnas

#Al hacer una extracci�n desde un vector de l�gicos, obtengo s�lo los valores TRUE

#ALGUNAS OPERACIONES
x<- 1:4 ; y<- 6:9
x+y
x>2
x>=2
y==8 #Igualdades con doble signo de igual
y=8 #Igualdad con un signo de igual, asigna un valor (no recomendable)

x*y
x/y

#OPERACIONES CON MATRICES
x<- matrix(1:4,2,2) ; y<- matrix(rep(10,4),2,2)
x*y
x/y

x%*%y  #Multiplica como se deben multiplicar las matrices
y%*%x  #Por propiedades de las matrices, la conutatividad no existe


#ESTRUCTURAS DE CONTROL
IF, ELSE probamos una condici�n
FOR ejecuta un ciclo un determinado numero de veces #Cuando yo ya sepa cuantas repeticiones habr�
WHILE ejecuta un ciclo mientras se cumpla una condici�n #No necesariamente s� cuantas repeticiones habr�, pero conoces la condici�n en donde se parar�
REPEAT ejecuta un ciclo infinito
BREAK termina la ejecuci�n de un ciclo
NEXT "salta" una iteraci�n de un ciclo
RETURN sale de una funci�n

#ESTRUCTURAS DE CONTROL IF-ELSE

if (<condici�n>){ 
  ##algunas instrucciones
} else {
  ##algunas OTRAS instrucciones
}
if (<condicion 1>){
  ##algunas instrucciones 
} else if (<condicion 2>) {
  ##algunas OTRAS instrucciones
}else {
  ##algunas instrucciones DIFERENTES
}

EJEMPLIN
y<- 7
if (y<5) 
{
  print("Menor a 5")
}else if(y<=10)
{
 print ("entre 5 y 10")
} else
{
  print ("mayor a 10")
}



if (x>3){
  y<-10
} else {
  y<- 0
}
