# il mio primo codice in R per il telerilevamento 
# va messo il cancelletto anche qui perchè se no R lo dà come errore 

#si imposta la cartella di lavoro, seguendo nel mio caso la procedura per mac
setwd("/Users/villiamzannibertelli/lab/")

#spieghiamo a R che vogliamo usare il pacchetto raster (che abbiamo già installato)
library(raster)

#lanciamo la funzione brick e poi associamo un nome all'oggetto
#la funzione serve ad importare un'immagine satellitare

p224r63_2011 <- brick("p224r63_2011_masked.grd")

# otteniamo le immagini, una per ciascuna banda tramite la funzione plot 
#utilizziamo l'oggetto e non il file per brevità e per evitare errori 
plot(p224r63_2011)

#cambio i colori 
#si utilizza il comando colorRampPalette, è necessario generare un vettore 
#all'interno del vettore si inseriscono i colori della nuova palette e il livello di profondità della palette
#in questo caso 100 
#associamo la funzione a un oggetto che chiamiano cl
> cl <- colorRampPalette (c('black', 'grey', 'light grey')) (100)
#richiamiamo il plot 
> plot(p224r63_2011, col=cl)
> #cambio i colori 
> cl <- colorRampPalette (c('pink', 'magenta', 'yellow', 'light pink')) (100)
> plot(p224r63_2011, col=cl)
