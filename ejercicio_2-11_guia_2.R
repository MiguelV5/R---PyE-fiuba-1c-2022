
# Ejercicio 2.11 - Guia 2

Nrep <- 24

muestras <- c(8.59, 8.77, 8.29, 7.50, 9.18, 8.53, 10.03, 8.97, 8.47, 9.98, 9.00, 9.44, 8.02, 10.35, 7.15, 9.00, 9.15, 9.11, 7.63, 9.66, 10.20, 9.01, 8.73, 10.54)




# a)

plot(ecdf(muestras))



# b) 

intervalos <- c(7.1, 7.85, 8.35, 9.65, 10.15, 10.90)
    
histograma <- hist(muestras, freq = FALSE, breaks = intervalos)

histograma["density"]
histograma["breaks"] #(prints para saber que valores exactos tienen y asi poder calcular areas)

#Estimo la proba sumando las areas de la estimación de f: 

Proba_of_X_moreOrEqThan_NinePointFive = 0.4166667*(9.65-9.50) + 0.25*(10.15-9.65) + 0.166667*(10.9-10.15) # ==aprox  0.3125