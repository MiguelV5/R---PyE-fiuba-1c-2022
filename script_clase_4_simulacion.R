


set.seed(27)

#estimar proba con 1000 reproducciones del EA
Nrep <- 1000
vecAleatorio <- runif(Nrep,0,1)

vecmoneda <- ifelse(vecAleatorio <= 0.5, "cara", "ceca")

sum(moneda == "cara")

proba_estimada <- sum(vecmoneda == "cara")/Nrep


#Estimar proba con 100*1000 reproducciones del EA 
vecProbas_estimadas <- c()
n<-100
for (i in 1:n) {
    vecAleatorio <- runif(Nrep, 0, 1)
    vecmoneda <- ifelse(vecAleatorio <= 0.5, "cara", "ceca")
    vecProbas_estimadas[i] <- sum(vecmoneda == "cara")/Nrep
}

plot(1:100, vecProbas_estimadas, pch=20, col="chocolate")
abline(h=0.5, lty=2)


#Estimar proba con 1000*i reproducciones del EA, pero como si en cada iteracion se realizaran más reproducciones del EA (runif(i)) y a su vez fueran esos mismos i considerados como reproducciones totales (/i)
vecProbas_estimadas <- c()

for (i in 1:Nrep) {
    vecAleatorio <- runif(i, 0, 1)
    vecmoneda <- ifelse(vecAleatorio <= 0.5, "cara", "ceca")
    vecProbas_estimadas[i] <- sum(vecmoneda == "cara")/i
}

plot(1:Nrep, vecProbas_estimadas, pch=20, col="chocolate")
abline(h=0.5, lty=2)

#Lo anterior es lo mismo que usar la función promedio (mean):
vecProbas_estimadas <- c()

for (i in 1:Nrep) {
    vecAleatorio <- runif(i, 0, 1)
    vecmoneda <- ifelse(vecAleatorio <= 0.5, "cara", "ceca")
    vecProbas_estimadas[i] <- mean(vecmoneda == "cara")
}

plot(1:Nrep, vecProbas_estimadas, pch=20, col="chocolate")
abline(h=0.5, lty=2)


#Para más representaciones del Omega tendriamos que encadenar ifelse, por ej al tirar un dado sería vecTiradas <- ifelse(vecAleatorio <= 1/6, 1, ifelse(vecAleatorio <= 2/6, 2, ifelse...))
#Para evitar eso existe la funcion sample:

dado <- 1:6
vecTiradas <- sample(dado, Nrep, replace = TRUE)

estimacion_proba_salga_4 <- mean(vecTiradas == 4)

#otro ej: urna

urna <- c(rep("R",5), rep("V",3), rep("B",2))
vecExtracciones <- sample(urna, 3, replace = FALSE) #sin reposicion


#Cumpleaños (Estimacion)

n_personas <- 70
dias_del_anio <- 1:365
cumple <- sample(dias_del_anio, n_personas, replace = TRUE)
#Se piensa el complemento de que dos cumpleaños se repitan, y es que el cumpleaños de alguien sea único. O sea que si la cantidad de personas con cumple unico es menor a la total quiere decir que hubo cumpleaños repetidos. => length(unique(cumple)) < n_personas

#ahora lo simulamos en "1000 aulas de clase" distintas:
vecCoincidencias <- c()
for (i in 1:Nrep) {
    cumple <- sample(dias_del_anio, n_personas, replace = TRUE)
    vecCoincidencias[i] <- length(unique(cumple)) < n_personas
}
mean(vecCoincidencias)
#Da aprox 0.997

# => Proba de verdad:
probaCumpleCoincide <- function(numero_personas){
    p <- 1 - (choose(365,numero_personas)*factorial(numero_personas))/365^numero_personas #variaciones = combinaciones*n!
    return(p)
}

probaCumpleCoincide(70)


#Como evoluciona la proba segun el #personas?
x <- seq(1,121,1)
proba<- probaCumpleCoincide(x)
plot(x,proba,pch=20)
abline(h=0.5, col="chocolate", lwd=2)




