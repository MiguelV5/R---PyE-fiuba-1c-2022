# CLASE 19 - ABRIL

# Del ejercicio 1:

#Para estimacion de la funcion de proba de h:
barplot(tabla_frec_relativas)


# Del ejercicio 3 editado:

#Para estimar funcion de densidad:
plot(hist(t,freq=FALSE))

#Para estimar Funcion de distribución:
plot(ecdf(x))




# => aplicado a ejercicios:


# => en el ej 1:

#estimacion de la funcion de proba de h:
Nrep <- 1000

Z <- rnorm(Nrep)

h <- ifelse(Z < qnorm(1/4), 0 , ifelse(Z < qnorm(3/4), 1, 2))

tabla_frec_relativas <- table(h)/Nrep

barplot(tabla_frec_relativas)

#estimacion Funcion de distribución de h:
Nrep <- 1000

Z <- rnorm(Nrep)

h <- ifelse(Z < qnorm(1/4), 0 , ifelse(Z < qnorm(3/4), 1, 2))

tabla_frec_relativas <- table(h)/Nrep

plot(ecdf(h))









# => en el ej 2:

#estimacion funcion de densidad de t:
Nrep <- 1000

u <- runif(Nrep)

t <- ifelse(u < 1 ,((-27)*log(1-u))^(2/3), 0)

plot(hist(t, freq = FALSE))
#estimacion Funcion de distribución de t:
Nrep <- 1000

u <- runif(Nrep)

t <- ifelse(u < 1 ,((-27)*log(1-u))^(2/3), 0)

plot(ecdf(t))


# => en el ej 3:

#(no se puede hist porque no existe f de densidad para V.A.Mixtas)
#estimacion Funcion de distribución de w:
Nrep <- 1000

u <- runif(Nrep)

w <- ifelse(u < 1/2 , 2/(1-u), 4)

plot(ecdf(w))


