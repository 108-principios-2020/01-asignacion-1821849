library(repmis)
conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")

# Altura -------------------------------------------------------------------

mean(conjunto$Altura)

H.media <- subset(conjunto, conjunto$Altura <= 13.9432)
H.16 <- subset(conjunto, conjunto$Altura < 16.5)

# Vecinos -----------------------------------------------------------------

Vecinos_3 <- subset(conjunto, conjunto$Vecinos <= 3)
Vecinos_4 <- subset(conjunto, conjunto$Vecinos > 4)

# Diámetro ----------------------------------------------------------------

mean(conjunto$Diametro)

DBH_media <- subset(conjunto, conjunto$Diametro < 15.794)
DBH_16 <- subset(conjunto, conjunto$Diametro > 16)

# Especie -----------------------------------------------------------------

Cedro_rojo <- subset(conjunto, conjunto$Especie == "C")
Diam_cedro <- subset(Cedro_rojo, Cedro_rojo$Diametro <= 16.9)
Altura_cedro <- subset(Cedro_rojo, Cedro_rojo$Altura > 18.5)

Tsuga_heterófila <- subset(conjunto, conjunto$Especie == "H")
Diam_tsuga <- subset(Tsuga_heterófila, Tsuga_heterófila$Diametro <= 16.9)
Altura_tsuga <- subset(Tsuga_heterófila, Tsuga_heterófila$Altura > 18.5)

Douglasia_verde <- subset(conjunto, conjunto$Especie == "F")
Diam_Douglas <- subset(Douglasia_verde, Douglasia_verde$Diametro <= 16.9)
Altura_Douglas <- subset(Douglasia_verde, Douglasia_verde$Altura > 18.5)

# Histogramas -------------------------------------------------------------

hist(conjunto$Altura, col="yellow", xlab="Altura (m)",
     ylab= "Frecuencia", main = "Histograma de Altura")

hist(conjunto$Vecinos, col="blue", xlab="Vecinos",
     ylab="Frecuencia", main = "Histograma de Vecinos")

hist(conjunto$Diametro, col="lightblue", xlab = "Diámetro",
     ylab = "Frecuencia", main = "Histograma de Diámetro")

# Básicos -----------------------------------------------------------------

mean(conjunto$Altura)
sd(conjunto$Altura)

mean(conjunto$Vecinos)
sd(conjunto$Vecinos)

mean(conjunto$Diametro)
sd(conjunto$Diametro)
