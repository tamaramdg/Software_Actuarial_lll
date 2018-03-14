#ESTRUCTURAS DE CONTROL: CICLOS FOR

for (i in 34:60){
   print(i)
}

x<- c("a","b","c,","d")
for (i in 1:4){
  print(x[i])
}

for (i in seq_along(x)){
  print (x[i])
}

for (letra in x){
  print (letra)
}

for (i in 1:4) print (x[i]) #CUANDO SÓLO HAY UNA INSTRUCCIÓN QUE QUIERES REPETIR 

#LOS CICLOS FOR PUEDEN SER ANIDADOS
 x<- matrix (1:6,2,3)
 for (i in seq_len(nrow(x))){
   for (j in seq_len(ncol(x))){
     print (x[i,j])
   }
 }
 
#CICLO WHILE
 Inician probando una condición, si esta es verdadera, ejecutarán una serie de comandos, al terminarlos se vuelve a ponera prueba
 
 count<- 0
 while (count<10){
   print(count)
   count <- count+1
 }
 
 A veces se evalua más de una condición
 
 set.seed(1)
 z <- 5
 x <- vector("numeric")
 while (z>=3 && z<=10){
   moneda <- rbinom(1,1,0.5)
   x <- c(x,z)
   if (moneda == 1){
     z<-z+1
  } else{
     z<-z-1
   }
}
 x
 