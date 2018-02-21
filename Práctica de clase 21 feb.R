#Aquí se está realizando una asignación
x <- 1 
x <- 2
#La asignación no m permitió visualizar el resultado. para ello debo solicitar una impresión
print(x)
#Al poner mayúscula, que no ha sido definida, me marcará error
print(X)
#La alternativa es solicitar una impresión implícita
x

#La asignación puede hacerse también de textos
msg <- "hola"

print(msg)

x <- #expresión incompleta

x <- #expresión incompleta, para salir de ella (dejar de ejecutar una instrucción completa) puedes presionar esc

#Impresión de un arreglo
  x <- 1:20
x
y <- 3:9
y

z <- 99:43 
z

#El operador ":" me permite generar secuencias numéricas de un principio a un fin

w <- 3:14.5
w
#En el caso de trabajar con decimales me genera secuencias hasta los enteros

#Infinitos
Inf
exp (-Inf)

1/0

Inf-Inf
Inf +Inf

#R nos permite trabajar con conceptos matemáticos "superiores" como los números complejos o infinito

#Cada objeto tiene sus propiedades o atributos los cuales se pueden accesar a partir de la función
attributes (x)

#Es posible crear un vector con la función c()

x <- c(TRUE, FALSE, TRUE, TRUE, F, F, T) #Logical
X
x
x <- c(1L, 3L, 5L, -4L) #INTENGER

x <- c(1,3,4,-5) #NUMERIC

x <- c(1+1i, 3+4i,  -5+-6i, 3+2i) #COMPLEX

x <- c("a", "b", "c", "hola","mundo") #CHARACTER

#oTRO POSIBLE CAMINO SERÍA CON LA FUNCIÓN VECTOR

x <- vector("numeric", length=10)
x
#ELVECTOR SE CREA VACÍO

#Coerción

y <- c(1.7, "a") #CHARACTER
y <- c(TRUE, 2)  #NUMERIC

y <- c(FALSE, 2L, 5, 5+4i)
y

#COERCIÓN FORZADA
 x <- 0:6 #Integer
 as.numeric (x) #numeric
 as.logical (x) #logical - Los 0 se vuelven False y lo demás 1
 as.character (x) #character - todo es texto
 
 #Errores en la coerción forzada
 x <- c ("a", "b", "c")
as.numeric (x) 
as.logical (x)
as.complex (x)
#Aparecen NA porque esa coerción no es posible y genera una valor faltante