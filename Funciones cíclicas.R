### FUNCIONES DE CICLO
## Existen funciones que implementan ciclos de manera interna para simplifacr los códigos
# Lapply: Aplica una función a todos los elementos de una lista-> List Apply. Aplica una lista 
#- y entrega una lista de valores
# Sapply: Igual que apply pero intenta simplificar el resultado-> Simplifica, tablas con
#-elementos de la misma naturaleza, vectores
# Apply: Aplica una función dentro de los márgenes de un arreglo
# Tapply: Aplica una función sobre los subconjutnos de un vector-> Table Apply
# Mapply: Versión multivariante de lapply
##La función split también es útil al trabajar particularmente con lapply.


###Lapply

x<- list(a=1:5, b=rnorm(10000))
lapply(x,mean)
#mean es promedio
#rnorm función aleatoria

x<- list(a=1:5, b=rnorm(10), c=rnorm(10,1), d=rnorm(10,2))
lapply(x,mean)

##Lapply toma una lista, y entrega como resultado cada uno de los resultados como vectores

x<- 1:4
lapply(x,runif)

#runif asume que genera numeros aleatorios entre 0 y 1

x<- 1:4
lapply(x,runif,max=15, min=5)



###Sapply
##Si el resultado es una lista con elementos de tamaño 1, el resultado es un vector
##Si tiene más elementos, el resultado será una matriz

x<- list(a=1:5, b=rnorm(10), c=rnorm(10,3), d=rnorm(10,5))
lapply(x,mean)

sapply(x,mean)


###Apply
##Evalua la función en márgenes de un arreglo
##Aplica una función a las filas o columnas de una matriz

str(apply)
#x es un arreglo
#MARGIN es un vector entero indicando que márgenes 

x<- matrix(rnorm(200),20,10)
apply(x,2,mean) #Como el margen es 2, toma el 10 de las columnas, por eso sólo hay 10 datos
apply(x,1,sum)  #Margen 1, datos de 20

###MEDIAS Y SUMAS DE FILAS COLUMNAS
##Atajos 
#rowSums= apply(x,1,sum)
#rowMeans=apply(x,2,mean)
#colSums=apply(x,2,sum)
#colMeans=apply(x,2,mean)

x<- matrix(rnorm(200), 20,10)
apply(x,1, quantile, probs=c(0.25,0.75))

#quantile, dice cual es el valor por el cual esta debajo de 25 y de 75

a<- array(rnorm(2*2*10), c(2,2,10))
apply(a,c(1,2),mean)

rowMeans(a,dims=2)


###Mapply
##Aplica una función en paralelo a lo largo de un conjunto de argumentos
str(mapply)

list(rep(1,4), rep(2,3), rep(3,2), rep(4,1))
mapply(rep,1:4, 4:1)
