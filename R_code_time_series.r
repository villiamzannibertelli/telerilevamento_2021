#time series analysis 
#aumento della temperatura in Groenlandia 
#data and code from Emanuela Cosma 

#si utilizza sempre la libreria raster
library(raster)

setwd('/Users/villiamzannibertelli/lab/greenland/')

#creiamo il raster utilizzando la funzione 'raster' e assegnamo un nome 

lst_2000 <- raster("lst_2000.tif")

plot(lst_2000)

lst_2005 <- raster("lst_2005.tif")
lst_2010 <- raster("lst_2010.tif")
lst_2015 <- raster("lst_2015.tif")

#Facciamo un par 
par(mfrow=c(2,2))
plot(lst_2000)
plot(lst_2005)
plot(lst_2010)
plot(lst_2015)

#list of files: 

rlist <- list.files(pattern='lst')
#applichiamo la funzione lapply 
import <- lapply(rlist,raster)

#crea un'unica immagine raster composta dall'insieme delle immagini singole
TGr <- stack(import)
