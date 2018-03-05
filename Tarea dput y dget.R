mtcars <- data.frame(a="Milu", b="Kahlua", c= "Jagger", d="Paloma")
mtcars
dput(mtcars)
dput(mtcars, file="~/Actuaría LV/Progra lll/Software_Actuarial_lll/Carros.R")
CarrosTamara <- dget(file="~/Actuaría LV/Progra lll/Software_Actuarial_lll/Carros.R")
CarrosTamara
