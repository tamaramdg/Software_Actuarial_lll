###VECTORIZAR UNA FUNCIÓN

noise<- function(n,mean,sd){
  rnorm(n, mean, sd)
}
noise(5,1,2)
noise(1:5,1:5,2) #Le cuesta trabajo para devolver el resultado planeado
#Por eso utilizamos mapply

mapply(noise,1:5,1:5,2) #Ahora si devuelve lo correcto

###TAPPLY (Table Apply)
str(tapply)
#x es un vector
#INDEX es un factor o lista de factores. Permite al objeto x separarlo e categorías ej. color, nacionalidad, shalala
#FUN es una función a aplicar
#Simplify se debe simplificar el resultado


x<- c(rnorm(10),runif(10),rnorm(10,1))
f<- gl (3,10) #gl "Generate Levels
f
tapply(x,f,mean) #Hace una tabla

tapply(x,f,mean,simplify=F)
#rEGLAS PARA SIMIPLIFICAR LISTA= QUE LOS ELEMENTOS DE LA LISTA SEAN DEL MISMO TAMAÑO

###SPLIT
str(split)
##x es un vector, lista o data frame
##f es un factor o lista de factores
##drop indica si los facores vacíos deberían de omitirse

x<-c(rnorm(10),runif(10),rexp(10))
f<- gl(3,10)
f
split(x,f) #separaciones de objetos

##Combinación de split con lapply
lapply(split(x,f), mean)


library(datasets)
head(airquality)
split(airquality, airquality$Month)
sapply(split(airquality,airquality$Month), colMeans, na.rm=TRUE)
       
 
##Split a más d eun nivel

x<- rnorm(10)
f1<- gl(2,5)
f2<- gl(5,2)
f1
f2
interaction(f1,f2) #Une los elementos de f1 con f2 con un puntito

x
str(split(x,list(f1,f2)))

mtcars
caballos de fuerza promedio de 6, 8,4
split(mtcars, mtcars$hp)
sapply(split(mtcars$hp,mtcars$cyl), mean)
sapply(split(mtcars$mpg,mtcars$cyl), mean)



