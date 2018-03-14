set.seed(1)
intentos=100
sube=0
baja=0
for (i in 1:intentos){
z<- 6.5
x<- vector("numeric")
while(z>=3 && z<=10){
  moneda <- rbinom (1,1,0.5)
  x<- c(x,z)
  if (moneda==1){
    z <- z+1
  } else {
    z <- z-1
  }
}
x
plot(x,type="b")

 
  if (z<3){
   baja=baja+1
  }else if (z>10){
    sube=sube+1
  }
}
paste ("En", intentos, "intentos, se escapa", baja, "veces por abajo y", sube, "veces por arriba")




#CICLOS REPEAT
Inicia un ciclo infinito que no parará hasta que se llame un break

#NEXT
Se utiiza para no hacer una iteración en un ciclo
for (i in 1:100){
  if(i<=20){
    next
    #evita hacer las primeras iteraciones
  }
  #otras instrucciones
}
#El comando RETURN se utiliza típicamente en funciones y se coloca para salir de la ejecución de esa función y devolver un valor
