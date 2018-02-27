#Listas
Son un tipo especial de vector que contienen elementos de diferentes clases
x <- list(1, "a", TRUE, 3+2i, 5L)
x
#Todos los elementos de la lista mantienen la clase que originalmente 

#MATRICES
Son vectores con un atributo llamado dimensión, es un vector en si mismo compuesto de dos elementos.
Colección de vectores, todos del mismo tamaño.(nrow, ncol)
m <- matrix(nrow=2, ncol=2)
m
dim (m)
attributes (m)
#El atrbuto que tiene es la dimensión

m <- matrix(data=1:6, nrow=2, ncol=3)
m <- matrix(1:6, 2, 3)
m
#La manera automática de llenarse fue columna por columna

#Si yo quisiera que se llenara fila por fila, sería
m <- matrix(data= 1:6, nrow=2, ncol=3, byrow=TRUE)
m
m<- matrix(1:6, 2, 3, T)
m

#Una manera alternativa de crear una matrix es desde un vector y calcular sus dimensiones
m <- 1:10
m
dim(m) <- c(2,5)
m

#Otra forma de crear una matriz es uniendo diferentes vectores
x<- 1:3
y<-10:12
#CBind une columnas
cbind(x,y)
rbind(x,y)

#Factores
Se utilizan para representar datos categóricos. Variables no numéricas
x<- factor(c("Si", "si", "no", "no", "si"))
x
x<- factor(c("si", "si", "no", "no", "si"))
x

x<- factor(c("azul", "verde","verde","azul"))
x

table(x)
unclass(x)

x<- factor(c("azul", "verde", "verde", "azul", "rojo")), levels=(c("rojo", "amarillo", "verde", "naranja")

#Valores faltantes
x<- c(1, 2, NA, 10, 3)
is.na(x)     #Valor faltante detectado
is.nan(x)   #Valor no numérico que no es faltante

y<- c(1,2,NaN,10,3)
is.na(y)
is.nan(y)

#Data Frames
Se utilizan para almacenar datos tabulares. Puede tener elementos de diferentes clases 
tiene un atributo especial llamado row.names(
Normalmente se crean a partir de un llamado estilo read.table o read.csv
Puede convertirse en una matriz usando data.matrix

x<- data.frame(foo=1:4, bar= c(T,T,F,F))
x
nrow(x)
ncol(x)

#Names
x<- 1:3
names(x)
names(x)<- c("foo", "bar","norf")
x
names(x)

#Names en listas
x<- list (a=1, b=2, c=3)
x

#Names en matrices
m<- matrix(1:4, nrow=2, ncol=2)
dimnames(m)<-list(c("a","b"),c("c","d"))
m
