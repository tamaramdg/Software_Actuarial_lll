#SCOOPING RULES
�C�mo sabe R qu� valor asignar a qu� s�mbolo?
  lm
lm<- function (x) {x*x}
lm
rm(lm)
lm

##UNION DE VALORES A SIMBOLOS

R busca en el entorno global por el objeto y luego busca en el espacio de trabajo de cada
paquete en la lista de b�squeda
La lista de b�suqeda es accesible a trav�s de la funci�n search() 
search()

library(swirl)
search()

#R sigue un tipo de �mbito llamado lexicol�gico o est�tico
