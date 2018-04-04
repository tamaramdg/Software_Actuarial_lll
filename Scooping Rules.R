#SCOOPING RULES
¿Cómo sabe R qué valor asignar a qué símbolo?
  lm
lm<- function (x) {x*x}
lm
rm(lm)
lm

##UNION DE VALORES A SIMBOLOS

R busca en el entorno global por el objeto y luego busca en el espacio de trabajo de cada
paquete en la lista de búsqueda
La lista de b´suqeda es accesible a través de la función search() 
search()

library(swirl)
search()

#R sigue un tipo de ámbito llamado lexicológico o estático
