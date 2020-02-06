library(repmis)
conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")

# Altura -------------------------------------------------------------------

mean(conjunto$Altura)

H.media <- subset(conjunto, conjunto$Altura <= 13.9432)
mean(H.media$Altura)
H.16 <- subset(conjunto, conjunto$Altura < 16.5)
mean(H.16$Altura)

# Vecinos -----------------------------------------------------------------

mean(conjunto$Vecinos)

Vecinos_3 <- subset(conjunto, conjunto$Vecinos <= 3)
mean(Vecinos_3$Vecinos)
Vecinos_4 <- subset(conjunto, conjunto$Vecinos > 4)
mean(Vecinos_4$Vecinos)

# Diametro ----------------------------------------------------------------

mean(conjunto$Diametro)

DBH_media <- subset(conjunto, conjunto$Diametro < 15.794)
mean(DBH_media$Diametro)
DBH_16 <- subset(conjunto, conjunto$Diametro > 16)
mean(DBH_16$Diametro)

# Especie -----------------------------------------------------------------

Cedro_rojo <- subset(conjunto, conjunto$Especie == "C")
Diam_cedro <- subset(Cedro_rojo, Cedro_rojo$Diametro <= 16.9)
Altura_cedro <- subset(Cedro_rojo, Cedro_rojo$Altura > 18.5)

Tsuga_heterofila <- subset(conjunto, conjunto$Especie == "H")
Diam_tsuga <- subset(Tsuga_heterofila, Tsuga_heterofila$Diametro <= 16.9)
Altura_tsuga <- subset(Tsuga_heterofila, Tsuga_heterofila$Altura > 18.5)

Douglasia_verde <- subset(conjunto, conjunto$Especie == "F")
Diam_Douglas <- subset(Douglasia_verde, Douglasia_verde$Diametro <= 16.9)
Altura_Douglas <- subset(Douglasia_verde, Douglasia_verde$Altura > 18.5)

HyF <- rbind(Tsuga_heterofila, Douglasia_verde)
tsu.doug <- subset(conjunto, conjunto$Especie == "H" | conjunto$Especie == "F")

# 3 gráficas --------------------------------------------------------------

par(mfrow=c(2,2))
hist(Tsuga_heterofila$Altura, main = "Altura especie H", col = "blue", 
     xlab = "Altura", ylab = "Frecuencia")
hist(Douglasia_verde$Altura, main = "Altura especie F", col= "blue", 
     xlab = "Altura", ylab = "Frecuencia")
hist(Tsuga_heterofila$Diametro, main = "Diametro especie H", col = "green", 
     xlab = "Diametro", ylab = "Frecuencia")
hist(Douglasia_verde$Diametro, main = "Diametro especie F", col = "green",
     xlab = "Diametro", ylab = "Frecuencia")
par(mfrow=c(1,1))

par(mfrow=c(2,2))
hist(H.media$Altura, main="Alturas iguales o menores a la media", col = "yellow", xlab = "Alturas", ylab = "Frecuencia")
hist(H.16$Altura, main="Alturas mayores a 16", col = "pink", xlab = "Alturas", ylab = "Frecuencia")
hist(Vecinos_3$Vecinos, main = "Vecinos iguales o menores a 3", col = "blue", xlab = "Vecinos", ylab = "Frecuencia")
hist(Vecinos_4$Vecinos, main= "Vecinos mayores a 4", col= "orange", xlab = "Vecinos", ylab = "Frecuencia")
hist(DBH_media$Diametro, main= "Diametros menores a la media", col= "green", xlab = "Diametros", ylab = "Frecuencia")
hist(DBH_16$Diametro, main= "Diametros mayores a 16", col= "red", xlab = "Diametros", ylab = "Frecuencia")
par(mfrow=c(1,1))

# Basicos -----------------------------------------------------------------

mean(conjunto$Altura)
mean(conjunto$Vecinos)
mean(conjunto$Diametro)
mean(H.media$Altura)
mean(H.16$Altura)
mean(Vecinos_3$Vecinos)
mean(Vecinos_4$Vecinos)
mean(DBH_media$Diametro)
mean(DBH_16$Diametro)

sd(conjunto$Altura)
sd(conjunto$Vecinos)
sd(conjunto$Diametro)
sd(H.media$Altura)
sd(H.16$Altura)
sd(Vecinos_3$Vecinos)
sd(Vecinos_4$Vecinos)
sd(DBH_media$Diametro)
sd(DBH_16$Diametro)


