#Aqu� se est� realizando una asignaci�n
x <- 1 
x <- 2
#La asignaci�n no m permiti� visualizar el resultado. para ello debo solicitar una impresi�n
print(x)
#Al poner may�scula, que no ha sido definida, me marcar� error
print(X)
#La alternativa es solicitar una impresi�n impl�cita
x

#La asignaci�n puede hacerse tambi�n de textos
msg <- "hola"

print(msg)

x <- #expresi�n incompleta

x <- #expresi�n incompleta, para salir de ella (dejar de ejecutar una instrucci�n completa) puedes presionar esc

#Impresi�n de un arreglo
  x <- 1:20
x
y <- 3:9
y

z <- 99:43 
z

#El operador ":" me permite generar secuencias num�ricas de un principio a un fin

w <- 3:14.5
w
#En el caso de trabajar con decimales me genera secuencias hasta los enteros

#Infinitos
Inf
exp (-Inf)

1/0

Inf-Inf
Inf +Inf

#R nos permite trabajar con conceptos matem�ticos "superiores" como los n�meros complejos o infinito

#Cada objeto tiene sus propiedades o atributos los cuales se pueden accesar a partir de la funci�n
attributes (x)

#Es posible crear un vector con la funci�n c()

x <- c(TRUE, FALSE, TRUE, TRUE, F, F, T) #Logical
X
x
x <- c(1L, 3L, 5L, -4L) #INTENGER

x <- c(1,3,4,-5) #NUMERIC

x <- c(1+1i, 3+4i,  -5+-6i, 3+2i) #COMPLEX

x <- c("a", "b", "c", "hola","mundo") #CHARACTER

#oTRO POSIBLE CAMINO SER�A CON LA FUNCI�N VECTOR

x <- vector("numeric", length=10)
x
#ELVECTOR SE CREA VAC�O

#Coerci�n

y <- c(1.7, "a") #CHARACTER
y <- c(TRUE, 2)  #NUMERIC

y <- c(FALSE, 2L, 5, 5+4i)
y

#COERCI�N FORZADA
 x <- 0:6 #Integer
 as.numeric (x) #numeric
 as.logical (x) #logical - Los 0 se vuelven False y lo dem�s 1
 as.character (x) #character - todo es texto
 
 #Errores en la coerci�n forzada
 x <- c ("a", "b", "c")
as.numeric (x) 
as.logical (x)
as.complex (x)
#Aparecen NA porque esa coerci�n no es posible y genera una valor faltante