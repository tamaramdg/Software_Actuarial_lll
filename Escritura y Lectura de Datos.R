#FUNCIONES LECTURA DE DATOS
read.table, read.csv leen datos en tablas
readLines lee lineas de texto
source leer archivos de código en R
dget, lee arhivos de códigos en R
load, lee en espacios de trabajo guardados
unserialize, leer un objeto simple 

#ESCRITURA DE DATOS
write.table 
writeLines
dump
dput
save
serialize 

?read.table


#LECTURA Y ESCRITURA DE DATOS
#dput y dget

# 1. Creo el objeto

y <- data.frame(a=1,b="a")
y

# 2. Estudio la manera en la que se guardará
dput(y)

# 3. Lo guardo en mi disco duro
dput(y, file="~/GitHub/Software_Actuarial_lll/y.R")

# 4. Genero un nuevo objeto a partir de la info guardada
y2 <- 