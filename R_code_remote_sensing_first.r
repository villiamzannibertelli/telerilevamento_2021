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
#

> p224r63_2011
class      : RasterBrick 
dimensions : 1499, 2967, 4447533, 7  (nrow, ncol, ncell, nlayers)
resolution : 30, 30  (x, y)
extent     : 579765, 668775, -522705, -477735  (xmin, xmax, ymin, ymax)
crs        : +proj=utm +zone=22 +datum=WGS84 +units=m +no_defs 
source     : /Users/villiamzannibertelli/lab/p224r63_2011_masked.grd 
names      :       B1_sre,       B2_sre,       B3_sre,       B4_sre,       B5_sre,        B6_bt,       B7_sre 
min values : 0.000000e+00, 0.000000e+00, 0.000000e+00, 1.196277e-02, 4.116526e-03, 2.951000e+02, 0.000000e+00 
max values :    0.1249041,    0.2563655,    0.2591587,    0.5592193,    0.4894984,  305.2000000,    0.3692634 

> #bande landsat 
> # B1: blu 
> # B2: verde 
> # B3: rosso 
> # B4: NIR (vicino infrarosso)
> # B5: SWIR (medio infrarosso)
> # B6: TIR (infrarosso termico)
> # B7: SWIR (medio infrarosso)
> 
#ripulisce la finestra grafica 
dev.off()
