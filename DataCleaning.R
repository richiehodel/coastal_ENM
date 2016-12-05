
#Data Cleaning Script
#Updated July 2016

#install the packages we need (only do it once)
install.packages("data.table")
install.packages("dplyr")
install.packages("plyr")
install.packages("sp")
install.packages("maptools")
install.packages("spatstat")
install.packages("rgeos")
install.packages("rgdal")

#load all the libraries we will need here (each time you oepn the script)
library(data.table)
library(dplyr)
library(sp)
library(maptools)
library(spatstat)
library(rgeos)
library(rgdal)
library(plyr)


#set the working directory
setwd("/Volumes/Richie 4TB 1/SDM_Nov_2016/species/")


#load the dataset first
setwd("/Volumes/Richie 4TB 1/SDM_Nov_2016/species/batis_maritima/")
setwd("/Volumes/Richie 4TB 1/SDM_Nov_2016/species/rhizophora_mangle/")

#setwd("/Volumes/Richie 4TB 1/SDM_Nov_2016/species/laguncularia_racemosa/")
#setwd("/Volumes/Richie 4TB 1/SDM_Nov_2016/species/conocarpus_erectus/")

#setwd("/Volumes/Richie 4TB 1/SDM_Nov_2016/species/laguncularia_racemosa/")
#setwd("/Volumes/Richie 4TB 1/SDM_Nov_2016/species/sesuvium_portulacastrum/")
#setwd("/Volumes/Richie 4TB 1/SDM_Nov_2016/species/spartina_alterniflora/")
setwd("/Volumes/Richie 4TB 1/SDM_Nov_2016/species/sporobolus_virginicus/")

#get gbif data

setwd("/Volumes/Richie 4TB 1/SDM_Nov_2016/species/avicennia_germinans/gbif")
raw.gbif <- read.csv(file="occurrence.txt", header=TRUE, fill=TRUE, sep="\t")
working.data <- raw.gbif

nrow(working.data)

working.data$scientificName

basic.data <- data.frame(working.data$scientificName, 
                         working.data$decimalLatitude, 
                         working.data$decimalLongitude)

basic.data$working.data.scientificName <- "Avicennia_germinans"

unique(basic.data$working.data.scientificName)

trimmed.data <- unique(basic.data, incomparables=FALSE,
                       basic.data$working.data.decimalLatitude)

trimmed.data <- rename(trimmed.data, c("working.data.scientificName"="species", 
                       "working.data.decimalLatitude"="lat",
                       "working.data.decimalLongitude"="lon"))

### now get idigbio data ### 

setwd("/Volumes/Richie 4TB 1/SDM_Nov_2016/species/avicennia_germinans/idigbio/")
raw.idigbio <- read.csv(file="occurrence_raw.csv", header=TRUE, fill=TRUE, sep=",")
working.idig <- raw.idigbio

nrow(working.idig)

working.idig$dwc.decimalLatitude

basic.idig <- data.frame(working.idig$dwc.scientificName, 
                         working.idig$dwc.decimalLatitude, 
                         working.idig$dwc.decimalLongitude)

basic.idig$working.idig.dwc.scientificName <- "Avicennia_germinans"

unique(basic.idig$working.idig.dwc.scientificName)

trimmed.idig <- unique(basic.idig, incomparables=FALSE,
                       basic.idig$working.idig.dwc.decimalLatitude)

trimmed.idig <- rename(trimmed.idig, c("working.idig.dwc.scientificName"="species", 
                                       "working.idig.dwc.decimalLatitude"="lat",
                                       "working.idig.dwc.decimalLongitude"="lon"))


## merge two types here

trimmed.both <- rbind(trimmed.idig, trimmed.data)

#trimmed.both$lat <- round(trimmed.both$lat, digits = 2)

#trimmed.both$lon <- round(trimmed.both$lon, digits = 2)

trimmed.both <- na.omit(trimmed.both)

trimmed.both <- unique(trimmed.both, incomparables=FALSE,
                       trimmed.both$lat)

setwd("/Volumes/Richie 4TB 1/SDM_Nov_2016/species/avicennia_germinans/")

write.csv(trimmed.both, "avicennia.csv", row.names=FALSE)

plot(trimmed.both$lat ~ trimmed.both$lon)



######  batis

#get gbif data

setwd("/Volumes/Richie 4TB 1/SDM_Nov_2016/species/batis_maritima/gbif")
raw.gbif <- read.csv(file="occurrence.txt", header=TRUE, fill=TRUE, sep="\t")
working.data <- raw.gbif

nrow(working.data)

working.data$scientificName

basic.data <- data.frame(working.data$scientificName, 
                         working.data$decimalLatitude, 
                         working.data$decimalLongitude)

basic.data$working.data.scientificName <- "Batis_maritima"

unique(basic.data$working.data.scientificName)

trimmed.data <- unique(basic.data, incomparables=FALSE,
                       basic.data$working.data.decimalLatitude)

trimmed.data <- rename(trimmed.data, c("working.data.scientificName"="species", 
                                       "working.data.decimalLatitude"="lat",
                                       "working.data.decimalLongitude"="lon"))

### now get idigbio data ### 

setwd("/Volumes/Richie 4TB 1/SDM_Nov_2016/species/batis_maritima/idigbio/")
raw.idigbio <- read.csv(file="occurrence_raw.csv", header=TRUE, fill=TRUE, sep=",")
working.idig <- raw.idigbio

nrow(working.idig)

working.idig$dwc.decimalLatitude

basic.idig <- data.frame(working.idig$dwc.scientificName, 
                         working.idig$dwc.decimalLatitude, 
                         working.idig$dwc.decimalLongitude)

basic.idig$working.idig.dwc.scientificName <- "Batis_maritima"

unique(basic.idig$working.idig.dwc.scientificName)

trimmed.idig <- unique(basic.idig, incomparables=FALSE,
                       basic.idig$working.idig.dwc.decimalLatitude)

trimmed.idig <- rename(trimmed.idig, c("working.idig.dwc.scientificName"="species", 
                                       "working.idig.dwc.decimalLatitude"="lat",
                                       "working.idig.dwc.decimalLongitude"="lon"))


## merge two types here

trimmed.both <- rbind(trimmed.idig, trimmed.data)

#trimmed.both$lat <- round(trimmed.both$lat, digits = 2)

#trimmed.both$lon <- round(trimmed.both$lon, digits = 2)

trimmed.both <- na.omit(trimmed.both)

trimmed.both <- unique(trimmed.both, incomparables=FALSE,
                       trimmed.both$lat)

setwd("/Volumes/Richie 4TB 1/SDM_Nov_2016/species/batis_maritima/")

write.csv(trimmed.both, "batis.csv", row.names=FALSE)

plot(trimmed.both$lat ~ trimmed.both$lon)



############



#########    conocarpus

#get gbif data

setwd("/Volumes/Richie 4TB 1/SDM_Nov_2016/species/conocarpus_erectus/gbif")
raw.gbif <- read.csv(file="occurrence.txt", header=TRUE, fill=TRUE, sep="\t")
working.data <- raw.gbif

nrow(working.data)

working.data$scientificName

basic.data <- data.frame(working.data$scientificName, 
                         working.data$decimalLatitude, 
                         working.data$decimalLongitude)

basic.data$working.data.scientificName <- "Conocarpus_erectus"

unique(basic.data$working.data.scientificName)

trimmed.data <- unique(basic.data, incomparables=FALSE,
                       basic.data$working.data.decimalLatitude)

trimmed.data <- rename(trimmed.data, c("working.data.scientificName"="species", 
                                       "working.data.decimalLatitude"="lat",
                                       "working.data.decimalLongitude"="lon"))

### now get idigbio data ### 

setwd("/Volumes/Richie 4TB 1/SDM_Nov_2016/species/conocarpus_erectus/idigbio/")
raw.idigbio <- read.csv(file="occurrence_raw.csv", header=TRUE, fill=TRUE, sep=",")
working.idig <- raw.idigbio

nrow(working.idig)

working.idig$dwc.decimalLatitude

basic.idig <- data.frame(working.idig$dwc.scientificName, 
                         working.idig$dwc.decimalLatitude, 
                         working.idig$dwc.decimalLongitude)

basic.idig$working.idig.dwc.scientificName <- "Conocarpus_erectus"

unique(basic.idig$working.idig.dwc.scientificName)

trimmed.idig <- unique(basic.idig, incomparables=FALSE,
                       basic.idig$working.idig.dwc.decimalLatitude)

trimmed.idig <- rename(trimmed.idig, c("working.idig.dwc.scientificName"="species", 
                                       "working.idig.dwc.decimalLatitude"="lat",
                                       "working.idig.dwc.decimalLongitude"="lon"))


## merge two types here

trimmed.both <- rbind(trimmed.idig, trimmed.data)

#trimmed.both$lat <- round(trimmed.both$lat, digits = 2)

#trimmed.both$lon <- round(trimmed.both$lon, digits = 2)

trimmed.both <- na.omit(trimmed.both)

trimmed.both <- unique(trimmed.both, incomparables=FALSE,
                       trimmed.both$lat)

setwd("/Volumes/Richie 4TB 1/SDM_Nov_2016/species/conocarpus_erectus/")

write.csv(trimmed.both, "conocarpus.csv", row.names=FALSE)

plot(trimmed.both$lat ~ trimmed.both$lon)


#################

######  laguncularia

#get gbif data

setwd("/Volumes/Richie 4TB 1/SDM_Nov_2016/species/laguncularia_racemosa/gbif")
raw.gbif <- read.csv(file="occurrence.txt", header=TRUE, fill=TRUE, sep="\t")
working.data <- raw.gbif

nrow(working.data)

working.data$scientificName

basic.data <- data.frame(working.data$scientificName, 
                         working.data$decimalLatitude, 
                         working.data$decimalLongitude)

basic.data$working.data.scientificName <- "Laguncularia_racemosa"

unique(basic.data$working.data.scientificName)

trimmed.data <- unique(basic.data, incomparables=FALSE,
                       basic.data$working.data.decimalLatitude)

trimmed.data <- rename(trimmed.data, c("working.data.scientificName"="species", 
                                       "working.data.decimalLatitude"="lat",
                                       "working.data.decimalLongitude"="lon"))

### now get idigbio data ### 

setwd("/Volumes/Richie 4TB 1/SDM_Nov_2016/species/laguncularia_racemosa/idigbio/")
raw.idigbio <- read.csv(file="occurrence_raw.csv", header=TRUE, fill=TRUE, sep=",")
working.idig <- raw.idigbio

nrow(working.idig)

working.idig$dwc.decimalLatitude

basic.idig <- data.frame(working.idig$dwc.scientificName, 
                         working.idig$dwc.decimalLatitude, 
                         working.idig$dwc.decimalLongitude)

basic.idig$working.idig.dwc.scientificName <- "Laguncularia_racemosa"

unique(basic.idig$working.idig.dwc.scientificName)

trimmed.idig <- unique(basic.idig, incomparables=FALSE,
                       basic.idig$working.idig.dwc.decimalLatitude)

trimmed.idig <- rename(trimmed.idig, c("working.idig.dwc.scientificName"="species", 
                                       "working.idig.dwc.decimalLatitude"="lat",
                                       "working.idig.dwc.decimalLongitude"="lon"))


## merge two types here

trimmed.both <- rbind(trimmed.idig, trimmed.data)

#trimmed.both$lat <- round(trimmed.both$lat, digits = 2)

#trimmed.both$lon <- round(trimmed.both$lon, digits = 2)

trimmed.both <- na.omit(trimmed.both)

trimmed.both <- unique(trimmed.both, incomparables=FALSE,
                       trimmed.both$lat)

setwd("/Volumes/Richie 4TB 1/SDM_Nov_2016/species/laguncularia_racemosa/")

write.csv(trimmed.both, "laguncularia.csv", row.names=FALSE)

plot(trimmed.both$lat ~ trimmed.both$lon)

############


######  rhizophora

#get gbif data

setwd("/Volumes/Richie 4TB 1/SDM_Nov_2016/species/rhizophora_mangle/gbif")
raw.gbif <- read.csv(file="occurrence.txt", header=TRUE, fill=TRUE, sep="\t")
working.data <- raw.gbif

nrow(working.data)

working.data$scientificName

basic.data <- data.frame(working.data$scientificName, 
                         working.data$decimalLatitude, 
                         working.data$decimalLongitude)

basic.data$working.data.scientificName <- "Rhizophora_mangle"

unique(basic.data$working.data.scientificName)

trimmed.data <- unique(basic.data, incomparables=FALSE,
                       basic.data$working.data.decimalLatitude)

trimmed.data <- rename(trimmed.data, c("working.data.scientificName"="species", 
                                       "working.data.decimalLatitude"="lat",
                                       "working.data.decimalLongitude"="lon"))

### now get idigbio data ### 

setwd("/Volumes/Richie 4TB 1/SDM_Nov_2016/species/rhizophora_mangle/idigbio/")
raw.idigbio <- read.csv(file="occurrence_raw.csv", header=TRUE, fill=TRUE, sep=",")
working.idig <- raw.idigbio

nrow(working.idig)

working.idig$dwc.decimalLatitude

basic.idig <- data.frame(working.idig$dwc.scientificName, 
                         working.idig$dwc.decimalLatitude, 
                         working.idig$dwc.decimalLongitude)

basic.idig$working.idig.dwc.scientificName <- "Rhizophora_mangle"

unique(basic.idig$working.idig.dwc.scientificName)

trimmed.idig <- unique(basic.idig, incomparables=FALSE,
                       basic.idig$working.idig.dwc.decimalLatitude)

trimmed.idig <- rename(trimmed.idig, c("working.idig.dwc.scientificName"="species", 
                                       "working.idig.dwc.decimalLatitude"="lat",
                                       "working.idig.dwc.decimalLongitude"="lon"))


## merge two types here

trimmed.both <- rbind(trimmed.idig, trimmed.data)

#trimmed.both$lat <- round(trimmed.both$lat, digits = 2)

#trimmed.both$lon <- round(trimmed.both$lon, digits = 2)

trimmed.both <- na.omit(trimmed.both)

trimmed.both <- unique(trimmed.both, incomparables=FALSE,
                       trimmed.both$lat)

setwd("/Volumes/Richie 4TB 1/SDM_Nov_2016/species/rhizophora_mangle/")

write.csv(trimmed.both, "rhizophora.csv", row.names=FALSE)

plot(trimmed.both$lat ~ trimmed.both$lon)



######  sesuvium

#get gbif data

setwd("/Volumes/Richie 4TB 1/SDM_Nov_2016/species/sesuvium_portulacastrum/gbif")
raw.gbif <- read.csv(file="occurrence.txt", header=TRUE, fill=TRUE, sep="\t")
working.data <- raw.gbif

nrow(working.data)

working.data$scientificName

basic.data <- data.frame(working.data$scientificName, 
                         working.data$decimalLatitude, 
                         working.data$decimalLongitude)

basic.data$working.data.scientificName <- "Sesuvium_portulacastrum"

unique(basic.data$working.data.scientificName)

trimmed.data <- unique(basic.data, incomparables=FALSE,
                       basic.data$working.data.decimalLatitude)

trimmed.data <- rename(trimmed.data, c("working.data.scientificName"="species", 
                                       "working.data.decimalLatitude"="lat",
                                       "working.data.decimalLongitude"="lon"))

### now get idigbio data ### 

setwd("/Volumes/Richie 4TB 1/SDM_Nov_2016/species/sesuvium_portulacastrum/idigbio/")
raw.idigbio <- read.csv(file="occurrence_raw.csv", header=TRUE, fill=TRUE, sep=",")
working.idig <- raw.idigbio

nrow(working.idig)

working.idig$dwc.decimalLatitude

basic.idig <- data.frame(working.idig$dwc.scientificName, 
                         working.idig$dwc.decimalLatitude, 
                         working.idig$dwc.decimalLongitude)

basic.idig$working.idig.dwc.scientificName <- "Sesuvium_portulacastrum"

unique(basic.idig$working.idig.dwc.scientificName)

trimmed.idig <- unique(basic.idig, incomparables=FALSE,
                       basic.idig$working.idig.dwc.decimalLatitude)

trimmed.idig <- rename(trimmed.idig, c("working.idig.dwc.scientificName"="species", 
                                       "working.idig.dwc.decimalLatitude"="lat",
                                       "working.idig.dwc.decimalLongitude"="lon"))


## merge two types here

trimmed.both <- rbind(trimmed.idig, trimmed.data)

#trimmed.both$lat <- round(trimmed.both$lat, digits = 2)

#trimmed.both$lon <- round(trimmed.both$lon, digits = 2)

trimmed.both <- na.omit(trimmed.both)

trimmed.both <- unique(trimmed.both, incomparables=FALSE,
                       trimmed.both$lat)

setwd("/Volumes/Richie 4TB 1/SDM_Nov_2016/species/sesuvium_portulacastrum/")

write.csv(trimmed.both, "sesuvium.csv", row.names=FALSE)

plot(trimmed.both$lat ~ trimmed.both$lon)

######  spartina

#get gbif data

setwd("/Volumes/Richie 4TB 1/SDM_Nov_2016/species/spartina_alterniflora/gbif")
raw.gbif <- read.csv(file="occurrence.txt", header=TRUE, fill=TRUE, sep="\t")
working.data <- raw.gbif

nrow(working.data)

working.data$scientificName

basic.data <- data.frame(working.data$scientificName, 
                         working.data$decimalLatitude, 
                         working.data$decimalLongitude)

basic.data$working.data.scientificName <- "Spartina_alterniflora"

unique(basic.data$working.data.scientificName)

trimmed.data <- unique(basic.data, incomparables=FALSE,
                       basic.data$working.data.decimalLatitude)

trimmed.data <- rename(trimmed.data, c("working.data.scientificName"="species", 
                                       "working.data.decimalLatitude"="lat",
                                       "working.data.decimalLongitude"="lon"))

### now get idigbio data ### 

setwd("/Volumes/Richie 4TB 1/SDM_Nov_2016/species/spartina_alterniflora/idigbio/")
raw.idigbio <- read.csv(file="occurrence_raw.csv", header=TRUE, fill=TRUE, sep=",")
working.idig <- raw.idigbio

nrow(working.idig)

working.idig$dwc.decimalLatitude

basic.idig <- data.frame(working.idig$dwc.scientificName, 
                         working.idig$dwc.decimalLatitude, 
                         working.idig$dwc.decimalLongitude)

basic.idig$working.idig.dwc.scientificName <- "Spartina_alterniflora"

unique(basic.idig$working.idig.dwc.scientificName)

trimmed.idig <- unique(basic.idig, incomparables=FALSE,
                       basic.idig$working.idig.dwc.decimalLatitude)

trimmed.idig <- rename(trimmed.idig, c("working.idig.dwc.scientificName"="species", 
                                       "working.idig.dwc.decimalLatitude"="lat",
                                       "working.idig.dwc.decimalLongitude"="lon"))


## merge two types here

trimmed.both <- rbind(trimmed.idig, trimmed.data)

#trimmed.both$lat <- round(trimmed.both$lat, digits = 2)

#trimmed.both$lon <- round(trimmed.both$lon, digits = 2)

trimmed.both <- na.omit(trimmed.both)

trimmed.both <- unique(trimmed.both, incomparables=FALSE,
                       trimmed.both$lat)

setwd("/Volumes/Richie 4TB 1/SDM_Nov_2016/species/spartina_alterniflora/")

write.csv(trimmed.both, "spartina.csv", row.names=FALSE)

plot(trimmed.both$lat ~ trimmed.both$lon)


############

######  sporobolus

#get gbif data

setwd("/Volumes/Richie 4TB 1/SDM_Nov_2016/species/sporobolus_virginicus/gbif")
raw.gbif <- read.csv(file="occurrence.txt", header=TRUE, fill=TRUE, sep="\t")
working.data <- raw.gbif

nrow(working.data)

working.data$scientificName

basic.data <- data.frame(working.data$scientificName, 
                         working.data$decimalLatitude, 
                         working.data$decimalLongitude)

basic.data$working.data.scientificName <- "Sporobolus_virginicus"

unique(basic.data$working.data.scientificName)

trimmed.data <- unique(basic.data, incomparables=FALSE,
                       basic.data$working.data.decimalLatitude)

trimmed.data <- rename(trimmed.data, c("working.data.scientificName"="species", 
                                       "working.data.decimalLatitude"="lat",
                                       "working.data.decimalLongitude"="lon"))

### now get idigbio data ### 

setwd("/Volumes/Richie 4TB 1/SDM_Nov_2016/species/sporobolus_virginicus/idigbio/")
raw.idigbio <- read.csv(file="occurrence_raw.csv", header=TRUE, fill=TRUE, sep=",")
working.idig <- raw.idigbio

nrow(working.idig)

working.idig$dwc.decimalLatitude

basic.idig <- data.frame(working.idig$dwc.scientificName, 
                         working.idig$dwc.decimalLatitude, 
                         working.idig$dwc.decimalLongitude)

basic.idig$working.idig.dwc.scientificName <- "Sporobolus_virginicus"

unique(basic.idig$working.idig.dwc.scientificName)

trimmed.idig <- unique(basic.idig, incomparables=FALSE,
                       basic.idig$working.idig.dwc.decimalLatitude)

trimmed.idig <- rename(trimmed.idig, c("working.idig.dwc.scientificName"="species", 
                                       "working.idig.dwc.decimalLatitude"="lat",
                                       "working.idig.dwc.decimalLongitude"="lon"))


## merge two types here

trimmed.both <- rbind(trimmed.idig, trimmed.data)

#trimmed.both$lat <- round(trimmed.both$lat, digits = 2)

#trimmed.both$lon <- round(trimmed.both$lon, digits = 2)

trimmed.both <- na.omit(trimmed.both)

trimmed.both <- unique(trimmed.both, incomparables=FALSE,
                       trimmed.both$lat)

setwd("/Volumes/Richie 4TB 1/SDM_Nov_2016/species/sporobolus_virginicus/")

write.csv(trimmed.both, "sporobolus.csv", row.names=FALSE)

plot(trimmed.both$lat ~ trimmed.both$lon)






#########################################################################
#########################################################################
#########################################################################
#########################################################################
#########################################################################
####     adding in mangrove GPS data from my collections    #############

#Laguncularia

getwd()
setwd("/Volumes/Richie 4TB 1/SDM_Nov_2016/species/laguncularia_racemosa/")

spec_lagrac <- read.csv("laguncularia.csv")

GPS_lagrac <- read.csv("idigbio/Laguncularia_GPS_June15_2016.csv")

lagrac <- rbind(spec_lagrac, GPS_lagrac)

write.csv(lagrac, "laguncularia.csv", row.names = FALSE)

##########################################################
#Rhizophora

setwd("/Volumes/Richie 4TB 1/SDM_Nov_2016/species/rhizophora_mangle/")

spec_rhiman <- read.csv("rhizophora.csv")

GPS_rhiman <- read.csv("Rhizophora_GPS_June16_2016.csv")

rhiman <- rbind(spec_rhiman, GPS_rhiman)

write.csv(rhiman, "rhizophora.csv", row.names = FALSE)

##########################################################
#Avicennia

setwd("/Volumes/Richie 4TB 1/SDM_Nov_2016/species/avicennia_germinans/")

spec_aviger <- read.csv("avicennia.csv")

GPS_aviger <- read.csv("idigbio/GPS_Avicennia_Summer2015.csv")

aviger <- rbind(spec_aviger, GPS_aviger)

write.csv(aviger, "avicennia.csv", row.names = FALSE)


#########################################################################
#########################################################################
#########################################################################
#########################################################################

##########################################################
### now combine all cleaned occurrence records into one file

setwd("/Volumes/Richie 4TB 1/SDM_Nov_2016/species/avicennia_germinans/")
avicennia <- read.csv("avicennia.csv")

setwd("/Volumes/Richie 4TB 1/SDM_Nov_2016/species/batis_maritima/")
batis <- read.csv("batis.csv")

setwd("/Volumes/Richie 4TB 1/SDM_Nov_2016/species/conocarpus_erectus/")
conocarpus <- read.csv("conocarpus.csv")


setwd("/Volumes/Richie 4TB 1/SDM_Nov_2016/species/laguncularia_racemosa/")
laguncularia <- read.csv("laguncularia.csv")

setwd("/Volumes/Richie 4TB 1/SDM_Nov_2016/species/rhizophora_mangle/")
rhizophora <- read.csv("rhizophora.csv")

setwd("/Volumes/Richie 4TB 1/SDM_Nov_2016/species/sesuvium_portulacastrum/")
sesuvium <- read.csv("sesuvium.csv")

setwd("/Volumes/Richie 4TB 1/SDM_Nov_2016/species/spartina_alterniflora/")
spartina <- read.csv("spartina.csv")

setwd("/Volumes/Richie 4TB 1/SDM_Nov_2016/species/sporobolus_virginicus/")
sporobolus <- read.csv("sporobolus.csv")


setwd("/Volumes/Richie 4TB 1/SDM_Nov_2016/species/")
all_species <- rbind(avicennia, batis, conocarpus, laguncularia,
                     rhizophora, sesuvium, spartina, sporobolus)
write.csv(all_species, "input_for_maxent.csv", row.names = FALSE)










install.packages("raster")
install.packages('shapefiles')
install.packages('dismo')
library(raster)
library(shapefiles)
library(dismo)









