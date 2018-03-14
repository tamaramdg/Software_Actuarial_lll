setwd("~/Actuaría LV/Progra lll/Software_Actuarial_lll")

#EXTRACCIÓN DE VALORES FALTANTES

airquality[1:6,]

#FUNCIÓN IMPORTANTE
complete.cases(airquality[1:6,])
completos<- complete.cases(airquality)
completos
#Extraer sólo los completos:
airquality[completos,]   #ponerlo en blanco son todas las columnas

#Al hacer una extracción desde un vector de lógicos, obtengo sólo los valores TRUE

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
IF, ELSE probamos una condición
FOR ejecuta un ciclo un determinado numero de veces #Cuando yo ya sepa cuantas repeticiones habrá
WHILE ejecuta un ciclo mientras se cumpla una condición #No necesariamente sé cuantas repeticiones habrá, pero conoces la condición en donde se parará
REPEAT ejecuta un ciclo infinito
BREAK termina la ejecución de un ciclo
NEXT "salta" una iteración de un ciclo
RETURN sale de una función

#ESTRUCTURAS DE CONTROL IF-ELSE

if (<condición>){ 
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
