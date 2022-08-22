
#Data Cleaning Script

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
setwd("")


#get gbif data

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

trimmed.both <- na.omit(trimmed.both)

trimmed.both <- unique(trimmed.both, incomparables=FALSE,
                       trimmed.both$lat)

write.csv(trimmed.both, "avicennia_clean.csv", row.names=FALSE)

plot(trimmed.both$lat ~ trimmed.both$lon)


# merge all species into a single file for MAXENT analyses