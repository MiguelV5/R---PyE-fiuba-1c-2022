# CLASE 19 - ABRIL

# Del ejercicio 1:

Nrep <- 1000

Z <- rnorm(Nrep)

h <- ifelse(Z < qnorm(1/4), 0 , ifelse(Z < qnorm(3/4), 1, 2))

tabla_frec_relativas <- table(h)/Nrep

#Estimacion de la funcion de proba de h:
barplot(tabla_frec_relativas)



# Del ejercicio 3 editado:

#discretas:
plot(hist(t,freq=FALSE))

#continuas:
ecdf(x)


# => en el ej 2:

Nrep <- 1000

u <- runif(Nrep)

t <- ((-27)*log(1-u))^(2/3)

plot(ecdf(t))


# => en el ej 1:

Nrep <- 1000

Z <- rnorm(Nrep)

h <- ifelse(Z < qnorm(1/4), 0 , ifelse(Z < qnorm(3/4), 1, 2))

plot(hist(h))
