
install.packages("devtools")
require(devtools)

install_github("narayanibarve/ENMGadgets")
require(ENMGadgets)


library(raster)
library(maptools)
library(sqldf)
library(fields)
library(rgdal)
library(dismo)

install.packages('Rcpp')
library('Rcpp')

setwd("")

pfile <- c("/Volumes/Richie_4TB/mang_salt/species_into_maxent/avicennia_clean.csv")
predfile <- c("/Volumes/Richie_4TB/mang_salt/larger_area/2000s_v8/Avicennia_germinans_avg.asc")
PartialROC(pfile,predfile,0.05,50,100,"Aviger.csv")

pfile <- c("/Volumes/Richie_4TB/mang_salt/species_into_maxent/batis_clean.csv")
predfile <- c("/Volumes/Richie_4TB/mang_salt/larger_area/2000s_v8/Batis_maritima_avg.asc")
PartialROC(pfile,predfile,0.05,50,100,"Batis.csv")

pfile <- c("/Volumes/Richie_4TB/mang_salt/species_into_maxent/conocarpus_clean.csv")
predfile <- c("/Volumes/Richie_4TB/mang_salt/larger_area/2000s_v8/Conocarpus_erectus_avg.asc")
PartialROC(pfile,predfile,0.05,50,100,"Conere.csv")

pfile <- c("/Volumes/Richie_4TB/mang_salt/species_into_maxent/laguncularia_clean.csv")
predfile <- c("/Volumes/Richie_4TB/mang_salt/larger_area/2000s_v8/Laguncularia_racemosa_avg.asc")
PartialROC(pfile,predfile,0.05,50,100,"Lagrac.csv")

pfile <- c("/Volumes/Richie_4TB/mang_salt/species_into_maxent/rhizophora_clean.csv")
predfile <- c("/Volumes/Richie_4TB/mang_salt/larger_area/2000s_v8/Rhizophora_mangle_avg.asc")
PartialROC(pfile,predfile,0.05,50,100,"Rhiman.csv")

pfile <- c("/Volumes/Richie_4TB/mang_salt/species_into_maxent/spartina_clean.csv")
predfile <- c("/Volumes/Richie_4TB/mang_salt/larger_area/2000s_v8/Spartina_alterniflora_avg.asc")
PartialROC(pfile,predfile,0.05,50,100,"Sparta.csv")

pfile <- c("/Volumes/Richie_4TB/mang_salt/species_into_maxent/sesuvium_clean.csv")
predfile <- c("/Volumes/Richie_4TB/mang_salt/larger_area/2000s_v8/Sesuvium_portulacastrum_avg.asc")
PartialROC(pfile,predfile,0.05,50,100,"Sesuv.csv")

pfile <- c("/Volumes/Richie_4TB/mang_salt/species_into_maxent/sporobolus_clean.csv")
predfile <- c("/Volumes/Richie_4TB/mang_salt/larger_area/2000s_v8/Sporobolus_virginica_avg.asc")
PartialROC(pfile,predfile,0.05,50,100,"Sporob.csv")

aviger <- read.csv("Aviger.csv")
conere <- read.csv("Conere.csv")
rhiman <- read.csv("Rhiman.csv")
lagrac <- read.csv("Lagrac.csv")
batis <-  read.csv("Batis.csv")
sesuv <- read.csv("Sesuv.csv")
sparta <- read.csv("Sparta.csv")
sporob <- read.csv("Sporob.csv")

boxplot(aviger$AUC_ratio,conere$AUC_ratio, lagrac$AUC_ratio, rhiman$AUC_ratio,
        batis$AUC_ratio, sesuv$AUC_ratio, sparta$AUC_ratio, sporob$AUC_ratio,
        ylim=c(1,1.9))


mang <- cbind(aviger,conere,rhiman,lagrac)
salt <- cbind(batis,sesuv,sparta,sporob)

boxplot(mang$AUC_ratio, salt$AUC_ratio)

