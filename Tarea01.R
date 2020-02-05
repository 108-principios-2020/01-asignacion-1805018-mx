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

hist(H.media)
