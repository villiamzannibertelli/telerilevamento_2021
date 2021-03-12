# il mio primo codice in R per il telerilevamento 
# va messo il cancelletto anche qui perchè se no R lo dà come errore 

#si imposta la cartella di lavoro
setwd("/Users/villiamzannibertelli/lab/")

#spieghiamo a R che volgiamo usare il pacchetto raster (che abbiamo già installato)
library(raster)

#lanciamo la funzione brick e poi associamo un nome all'oggetto

p224r63_2011 <- brick("p224r63_2011_masked.grd")

# otteniamo le immagini, una per ciascuna banda tramite la funzione plot 
#utilizziamo l'oggetto e non il file per brevità e per evitare errori 
plot(p224r63_2011)
