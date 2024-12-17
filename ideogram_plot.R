#Install
devtools::install_github('TickingClock1992/RIdeogram')

#set working directory
setwd("/Users/jonhoffman/AMNH")

#call Ideogram
library(RIdeogram)

#Read in the karyotype file and synteny file
kary <- read.table("Compleasm_dual_karyotype2.txt", header = T)
synt <- read.table("til-pfas_synteny2.txt", header = T)

#create ideogram (saved to wd as a .svg)
ideogram(karyotype = kary, synteny = synt)

#convert saved svg to png
convertSVG("chromosome.svg", device = "png")
