#Dump y Source

setwd("~/Actuaría LV/Progra lll/Software_Actuarial_lll")
x<- "Software Actuarial lll"
y<- data.frame(a=1, b="a")
dump(c("x","y"),file="data.R")

rm(x,y)

source("data.R")
x
y

#dump y source trabajan con las mismas instrucciones de código que permitirán volver a construir un objeto en lugar de obtenerlo desde alguna ubicación 

#Conexiones
con<- url ("https://www.fcfm.buap.mx/")
 x<- readLines(con, 7)
x 
writeLines(readLines(con))
x[7]<- "\t<title>FCFM</title>"
writeLines(x,"FCFM.html")

#Subconjuntos

#Creamos un vector
x<- c("a", "b", "c", "d", "e")
#Veamos el vector
x
# Extraemos elementos con []
x[1]
x[2]
#También podemos extraer una secuencia de elementos
x[1:4]
#Es posible extraer los elementos quecumplen una restricción
x [x>"b"]
#De manera equivalente se puede obtener un vectro lógico
u <- x=="c"
u
x[u]
x[5-3]




#CREAMOS UNA LISTA
x<- list(foo=1:4, bar=0.6)
x
x[1]     #conserva la clase del objeto (lista con vector)
x[[1]]   #conserva la clase del objeto extraído (vector)

x$foo #El resultado fue un vector como con doble corchete 
x$bar #""

x["bar"] #Objeto como lista
x[["bar"]] #Objeto como vector

#NUEVA LISTA

x<- list(foo=1:4, bar=0.6, baz="Hola")
x[(c(1,3))]   #Extrae elementos no secuenciales (1 si, 2 no, 3 si)
x[[c(1,3)]]   # Extrae secuencialmente desde los elementos extraídos,primero extrae el primer elemento y luego el tercer elemento

name<- "baz"
x[name]
x[[name]]
x$name
#Si yo quiero realizar extraccines con el $, es necesario escribir el nombre del objeto que quiero extraer


#ANIDAR SUBCONJUNTOS DE LISTAS
#Se pueden extraer elementos de los elementos extraídos
x<- list(a=list(10,12,14),b=list(3.14,2.81))
x[[c(1,3)]]
x[[1]][[3]]
x[[c(2,1)]]

#SUBCONJUNTOS DE UNA MATRIZ

x<- matrix(1:6 , 2 , 3)
x
x[1,2]
x[2,1]
x[1,]

#Con drop = FALSE, se mantiene la dimensión y el resultado será una matriz
x<- matrix(1:6 , 2 , 3)
x[1,2, drop = FALSE]

x<- list(perrin=1:5)
x$p
x[["p"]]
x[["p", exact=FALSE]]
