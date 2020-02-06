library(repmis)
conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")

# Altura
mean(conjunto$Altura)
subset(conjunto$Altura)
H.media<-subset(conjunto, conjunto$Altura <= 13.94 )
H.16 <-subset(conjunto, conjunto$Altura < 16.5 )

# Vecinos

Vecinos_3<-subset(conjunto, conjunto$Vecinos <= 3)
Vecinos_4<-subset(conjunto, conjunto$Vecinos > 4)

#Diametro

mean(conjunto$Diametro)

DBH_media<- subset(conjunto, conjunto$Diametro < 15.794)
DBH_16<- subset(conjunto, conjunto$Diametro > 16)


#Especie

Cedro_Rojo <- subset(conjunto, conjunto$Especie=="C")
Tsuga_heterofila <- subset(conjunto, conjunto$Especie=="H")
Douglasia_verde <- subset(conjunto, conjunto$Especie=="F")


#Observaciones

conjunto$Diametro <= 16.9





#Visualizacion de datos

hist(H.16$Altura, col="blue", xlab = "H.16$Altura (m)",ylab = "Frecuencia", main = "Histograma de H.16"
hist(Vecinos_3$Vecinos, col="Yellow", xlab = "Vecinos_3",ylab = "Frecuencia", main = "Histograma vecinos_3")
hist(conjunto$Diametro, col = "red", xlab = "Histograma", ylab = "Frecuencia", main = "Histograma de Diametro")     
hist(DBH_16$Diametro, col = "green", xlab = "Histograma de DBH_16", ylab = "Frecuencia", main = "Histograma de DBH_16")

ts.dug.h<-subset(conjunto, conjunto$Especie == "H")
ts.dug.f<-subset(conjunto, conjunto$Especie == "F")
ts.dug.hf<-subset(conjunto, conjunto$Especie == "H")

HyF<- rbind(ts.dug.h, ts.dug.f)


# 3 Graficas

par(mfrow=c(2,2))
hist(Tsuga_heterofila$Altura)
hist(Douglasia_verde$Altura)
hist(Tsuga_heterofila$Diametro)
hist(Douglasia_verde$Diametro)
par(mfrow=c(1,1))
