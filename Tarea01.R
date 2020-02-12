library(repmis)
conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")

# Altura
mean(conjunto$Altura)

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
par(mfrow=c(2,2))
hist(H.16$Altura, col="blue", xlab = "H.16$Altura (m)",ylab = "Frecuencia", main = "Histograma de H.16")
hist(Vecinos_3$Vecinos, col="Yellow", xlab = "Vecinos_3",ylab = "Frecuencia", main = "Histograma vecinos_3")
hist(conjunto$Diametro, col = "red", xlab = "Histograma", ylab = "Frecuencia", main = "Histograma de Diametro")     
hist(DBH_16$Diametro, col = "green", xlab = "Histograma de DBH_16", ylab = "Frecuencia", main = "Histograma de DBH_16")



# 3 Graficas
ts.dug.h<-subset(conjunto, conjunto$Especie == "H")
ts.dug.f<-subset(conjunto, conjunto$Especie == "F")
ts.dug.hf<-subset(conjunto, conjunto$Especie == "H")

HyF<- rbind(ts.dug.h, ts.dug.f)

par(mfrow=c(2,2))
hist(Tsuga_heterofila$Altura, col = "Green", main = "Altura especie H", xlab = "Altura", ylab = "Frecuencia")
hist(Douglasia_verde$Altura, col = "green", main = "Altura especie F", xlab = "Altura", ylab = "Frecuencia")
hist(Tsuga_heterofila$Diametro, col= "blue", main = "Diametro especie H", xlab = "Diametro", ylab = "Frecuencia")
hist(Douglasia_verde$Diametro, col = "blue", main = "Diametro especie F",  xlab = "Diametro", ylab = "Frecuencia")
par(mfrow=c(1,1))

#Estadisticas basicas
mean(conjunto$Altura)
mean(conjunto$Vecinos)
mean(conjunto$Diametro)
mean(H.media$Altura)
mean(H.16$Altura)
sd(conjunto$Diametro)
sd(conjunto$Vecinos)
sd(conjunto$Altura)
sd(H.media$Altura)
sd(H.16$Altura)

