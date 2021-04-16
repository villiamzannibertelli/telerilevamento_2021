
setwd('/Users/villiamzannibertelli/lab')

library(knitr)

stitch(“R_code_greenland.r”, template=system.file("misc", "knitr-template.Rnw", package="knitr"))
