####################################################################
##############     niche overlap / niche breadth   #################
##############     script by Richie Hodel          #################
####################################################################


install.packages("devtools")
library(devtools)
install_github("danlwarren/ENMTools")
library(ENMTools)
install.packages("dismo")
library(dismo)
install.packages("raster")
library(raster)

#now import data
#first, need to be in directory where data are located

setwd("/Volumes/Richie 4TB 1/SDM_Nov_2016/species/11_9_16_10reps/")

# this is an example with two .asc files from Rhizophora mangle
# one layer is an ENM output file for the present and one is an ENM
# output file for the future (2070) using CCSM4 climate model and
# and greenhouse scenario RCP85

# the raster function can also import other types of files (not just .asc)

present_layer <- raster("Avicennia_germinans_avg.asc")
future_layer <- raster("Avicennia_germinans_2070hiLayers_avg.asc")
spp <- "Avicennia"
write.table(spp, "niche.txt", append=TRUE)

# for all analyses, the data type must be 'formal class RasterLayer', which
# is by default what the above function 'raster' creates

# niche overlap -- computes Schoener's D -- a comparison of niche overlap
# between the present and the future (can also be used to compare any 
# two layers--between the same species or different species)

Schoeners_D <- nicheOverlap(present_layer, future_layer, stat='D', mask=TRUE, 
                            checkNegatives=TRUE)
print(Schoeners_D)
write.table(Schoeners_D, "niche.txt", append=TRUE)

#niche breadth -- computes Levin's B -- B2 is the statistic we want

Present_breadth <- raster.breadth(present_layer)

print(Present_breadth)

Future_breadth <- raster.breadth(future_layer)

print(Future_breadth)

write.table(Present_breadth, file = "niche.txt", append=TRUE)
write.table(Future_breadth, file = "niche.txt", append=TRUE)

#################
###
##
#
present_layer <- raster("Batis_maritima_avg.asc")
future_layer <- raster("Batis_maritima_2070hiLayers_avg.asc")
spp <- "Batis"
write.table(spp, "niche.txt", append=TRUE)

Schoeners_D <- nicheOverlap(present_layer, future_layer, stat='D', mask=TRUE, 
                            checkNegatives=TRUE)
print(Schoeners_D)
write.table(Schoeners_D, "niche.txt", append=TRUE)
Present_breadth <- raster.breadth(present_layer)
print(Present_breadth)
Future_breadth <- raster.breadth(future_layer)
print(Future_breadth)
write.table(Present_breadth, file = "niche.txt", append=TRUE)
write.table(Future_breadth, file = "niche.txt", append=TRUE)
#
##
###
###################
#################
###
##
#
present_layer <- raster("Conocarpus_erectus_avg.asc")
future_layer <- raster("Conocarpus_erectus_2070hiLayers_avg.asc")
spp <- "Conocarpus"
write.table(spp, "niche.txt", append=TRUE)

Schoeners_D <- nicheOverlap(present_layer, future_layer, stat='D', mask=TRUE, 
                            checkNegatives=TRUE)
print(Schoeners_D)
write.table(Schoeners_D, "niche.txt", append=TRUE)
Present_breadth <- raster.breadth(present_layer)
print(Present_breadth)
Future_breadth <- raster.breadth(future_layer)
print(Future_breadth)
write.table(Present_breadth, file = "niche.txt", append=TRUE)
write.table(Future_breadth, file = "niche.txt", append=TRUE)
#
##
###
###################
#################
###
##
#
present_layer <- raster("Laguncularia_racemosa_avg.asc")
future_layer <- raster("Laguncularia_racemosa_2070hiLayers_avg.asc")
spp <- "Laguncularia"
write.table(spp, "niche.txt", append=TRUE)

Schoeners_D <- nicheOverlap(present_layer, future_layer, stat='D', mask=TRUE, 
                            checkNegatives=TRUE)
print(Schoeners_D)
write.table(Schoeners_D, "niche.txt", append=TRUE)
Present_breadth <- raster.breadth(present_layer)
print(Present_breadth)
Future_breadth <- raster.breadth(future_layer)
print(Future_breadth)
write.table(Present_breadth, file = "niche.txt", append=TRUE)
write.table(Future_breadth, file = "niche.txt", append=TRUE)
#
##
###
###################
##################
###
##
#
present_layer <- raster("Rhizophora_mangle_avg.asc")
future_layer <- raster("Rhizophora_mangle_2070hiLayers_avg.asc")
spp <- "Rhizophora"
write.table(spp, "niche.txt", append=TRUE)

Schoeners_D <- nicheOverlap(present_layer, future_layer, stat='D', mask=TRUE, 
                            checkNegatives=TRUE)
print(Schoeners_D)
write.table(Schoeners_D, "niche.txt", append=TRUE)
Present_breadth <- raster.breadth(present_layer)
print(Present_breadth)
Future_breadth <- raster.breadth(future_layer)
print(Future_breadth)
write.table(Present_breadth, file = "niche.txt", append=TRUE)
write.table(Future_breadth, file = "niche.txt", append=TRUE)
#
##
###
###################
#################
###
##
#
present_layer <- raster("Sesuvium_portulacastrum_avg.asc")
future_layer <- raster("Sesuvium_portulacastrum_2070hiLayers_avg.asc")
spp <- "Sesuvium"
write.table(spp, "niche.txt", append=TRUE)

Schoeners_D <- nicheOverlap(present_layer, future_layer, stat='D', mask=TRUE, 
                            checkNegatives=TRUE)
print(Schoeners_D)
write.table(Schoeners_D, "niche.txt", append=TRUE)
Present_breadth <- raster.breadth(present_layer)
print(Present_breadth)
Future_breadth <- raster.breadth(future_layer)
print(Future_breadth)
write.table(Present_breadth, file = "niche.txt", append=TRUE)
write.table(Future_breadth, file = "niche.txt", append=TRUE)
#
##
###
###################
#################
###
##
#
present_layer <- raster("Spartina_alterniflora_avg.asc")
future_layer <- raster("Spartina_alterniflora_2070hiLayers_avg.asc")
spp <- "Spartina"
write.table(spp, "niche.txt", append=TRUE)

Schoeners_D <- nicheOverlap(present_layer, future_layer, stat='D', mask=TRUE, 
                            checkNegatives=TRUE)
print(Schoeners_D)
write.table(Schoeners_D, "niche.txt", append=TRUE)
Present_breadth <- raster.breadth(present_layer)
print(Present_breadth)
Future_breadth <- raster.breadth(future_layer)
print(Future_breadth)
write.table(Present_breadth, file = "niche.txt", append=TRUE)
write.table(Future_breadth, file = "niche.txt", append=TRUE)
#
##
###
###################
#################
###
##
#
present_layer <- raster("Sporobolus_virginicus_avg.asc")
future_layer <- raster("Sporobolus_virginicus_2070hiLayers_avg.asc")
spp <- "Sporobolus"
write.table(spp, "niche.txt", append=TRUE)

Schoeners_D <- nicheOverlap(present_layer, future_layer, stat='D', mask=TRUE, 
                            checkNegatives=TRUE)
print(Schoeners_D)
write.table(Schoeners_D, "niche.txt", append=TRUE)
Present_breadth <- raster.breadth(present_layer)
print(Present_breadth)
Future_breadth <- raster.breadth(future_layer)
print(Future_breadth)
write.table(Present_breadth, file = "niche.txt", append=TRUE)
write.table(Future_breadth, file = "niche.txt", append=TRUE)
#
##
###
###################


####################################################
####################################################
####################################################
####################################################
####################################################
####################################################
####################################################
####################################################
####################################################
####################################################
####################################################
####################################################


#### SLR-1.0m

setwd("/Volumes/Richie 4TB 1/SDM_Nov_2016/species/11_15_16_SLR1m/")

# this is an example with two .asc files from Rhizophora mangle
# one layer is an ENM output file for the present and one is an ENM
# output file for the future (2070) using CCSM4 climate model and
# and greenhouse scenario RCP85

# the raster function can also import other types of files (not just .asc)

present_layer <- raster("Avicennia_germinans.asc")
future_layer <- raster("Avicennia_germinans_half_meter_USE.asc")
spp <- "Avicennia"
write.table(spp, "niche_fut.txt", append=TRUE, col.names = FALSE)

Schoeners_D <- nicheOverlap(present_layer, future_layer, stat='D', mask=TRUE, 
                            checkNegatives=TRUE)
print(Schoeners_D)
write.table(Schoeners_D, "niche_fut.txt", append=TRUE, col.names = FALSE)

#niche breadth -- computes Levin's B -- B2 is the statistic we want

Present_breadth <- raster.breadth(present_layer)

print(Present_breadth)

Future_breadth <- raster.breadth(future_layer)

print(Future_breadth)

write.table(Present_breadth, file = "niche_fut.txt", append=TRUE, col.names = FALSE)
write.table(Future_breadth, file = "niche_fut.txt", append=TRUE, col.names = FALSE)

#################
###
##
#
present_layer <- raster("Batis_maritima.asc")
future_layer <- raster("Batis_maritima_SLR_1m_11_15_16.asc")
spp <- "Batis"
write.table(spp, "niche_fut.txt", append=TRUE, col.names = FALSE)

Schoeners_D <- nicheOverlap(present_layer, future_layer, stat='D', mask=TRUE, 
                            checkNegatives=TRUE)
print(Schoeners_D)
write.table(Schoeners_D, "niche_fut.txt", append=TRUE, col.names = FALSE)
Present_breadth <- raster.breadth(present_layer)
print(Present_breadth)
Future_breadth <- raster.breadth(future_layer)
print(Future_breadth)
write.table(Present_breadth, file = "niche_fut.txt", append=TRUE, col.names = FALSE)
write.table(Future_breadth, file = "niche_fut.txt", append=TRUE, col.names = FALSE)
#
##
###
###################
#################
###
##
#
present_layer <- raster("Conocarpus_erectus.asc")
future_layer <- raster("Conocarpus_erectus_SLR_1m_11_15_16.asc")
spp <- "Conocarpus"
write.table(spp, "niche_fut.txt", append=TRUE, col.names = FALSE)

Schoeners_D <- nicheOverlap(present_layer, future_layer, stat='D', mask=TRUE, 
                            checkNegatives=TRUE)
print(Schoeners_D)
write.table(Schoeners_D, "niche_fut.txt", append=TRUE, col.names = FALSE)
Present_breadth <- raster.breadth(present_layer)
print(Present_breadth)
Future_breadth <- raster.breadth(future_layer)
print(Future_breadth)
write.table(Present_breadth, file = "niche_fut.txt", append=TRUE, col.names = FALSE)
write.table(Future_breadth, file = "niche_fut.txt", append=TRUE, col.names = FALSE)
#
##
###
###################
#################
###
##
#
present_layer <- raster("Laguncularia_racemosa.asc")
future_layer <- raster("Laguncularia_racemosa_SLR_1m_11_15_16.asc")
spp <- "Laguncularia"
write.table(spp, "niche_fut.txt", append=TRUE, col.names = FALSE)

Schoeners_D <- nicheOverlap(present_layer, future_layer, stat='D', mask=TRUE, 
                            checkNegatives=TRUE)
print(Schoeners_D)
write.table(Schoeners_D, "niche_fut.txt", append=TRUE, col.names = FALSE)
Present_breadth <- raster.breadth(present_layer)
print(Present_breadth)
Future_breadth <- raster.breadth(future_layer)
print(Future_breadth)
write.table(Present_breadth, file = "niche_fut.txt", append=TRUE, col.names = FALSE)
write.table(Future_breadth, file = "niche_fut.txt", append=TRUE, col.names = FALSE)
#
##
###
###################
##################
###
##
#
present_layer <- raster("Rhizophora_mangle.asc")
future_layer <- raster("Rhizophora_mangle_SLR_1m_11_15_16.asc")
spp <- "Rhizophora"
write.table(spp, "niche_fut.txt", append=TRUE, col.names = FALSE)

Schoeners_D <- nicheOverlap(present_layer, future_layer, stat='D', mask=TRUE, 
                            checkNegatives=TRUE)
print(Schoeners_D)
write.table(Schoeners_D, "niche_fut.txt", append=TRUE, col.names = FALSE)
Present_breadth <- raster.breadth(present_layer)
print(Present_breadth)
Future_breadth <- raster.breadth(future_layer)
print(Future_breadth)
write.table(Present_breadth, file = "niche_fut.txt", append=TRUE, col.names = FALSE)
write.table(Future_breadth, file = "niche_fut.txt", append=TRUE, col.names = FALSE)
#
##
###
###################
#################
###
##
#
present_layer <- raster("Sesuvium_portulacastrum.asc")
future_layer <- raster("Sesuvium_portulacastrum_SLR_1m_11_15_16.asc")
spp <- "Sesuvium"
write.table(spp, "niche_fut.txt", append=TRUE, col.names = FALSE)

Schoeners_D <- nicheOverlap(present_layer, future_layer, stat='D', mask=TRUE, 
                            checkNegatives=TRUE)
print(Schoeners_D)
write.table(Schoeners_D, "niche_fut.txt", append=TRUE, col.names = FALSE)
Present_breadth <- raster.breadth(present_layer)
print(Present_breadth)
Future_breadth <- raster.breadth(future_layer)
print(Future_breadth)
write.table(Present_breadth, file = "niche_fut.txt", append=TRUE, col.names = FALSE)
write.table(Future_breadth, file = "niche_fut.txt", append=TRUE, col.names = FALSE)
#
##
###
###################
#################
###
##
#
present_layer <- raster("Spartina_alterniflora.asc")
future_layer <- raster("Spartina_alterniflora_SLR_1m_11_15_16.asc")
spp <- "Spartina"
write.table(spp, "niche_fut.txt", append=TRUE, col.names = FALSE)

Schoeners_D <- nicheOverlap(present_layer, future_layer, stat='D', mask=TRUE, 
                            checkNegatives=TRUE)
print(Schoeners_D)
write.table(Schoeners_D, "niche_fut.txt", append=TRUE, col.names = FALSE)
Present_breadth <- raster.breadth(present_layer)
print(Present_breadth)
Future_breadth <- raster.breadth(future_layer)
print(Future_breadth)
write.table(Present_breadth, file = "niche_fut.txt", append=TRUE, col.names = FALSE)
write.table(Future_breadth, file = "niche_fut.txt", append=TRUE, col.names = FALSE)
#
##
###
###################
#################
###
##
#
present_layer <- raster("Sporobolus_virginicus.asc")
future_layer <- raster("Sporobolus_virginicus_SLR_1m_11_15_16.asc")
spp <- "Sporobolus"
write.table(spp, "niche_fut.txt", append=TRUE, col.names = FALSE)

Schoeners_D <- niche_Overlap(present_layer, future_layer, stat='D', mask=TRUE, 
                            checkNegatives=TRUE)
print(Schoeners_D)
write.table(Schoeners_D, "niche_fut.txt", append=TRUE, col.names = FALSE)
Present_breadth <- raster.breadth(present_layer)
print(Present_breadth)
Future_breadth <- raster.breadth(future_layer)
print(Future_breadth)
write.table(Present_breadth, file = "niche_fut.txt", append=TRUE, col.names = FALSE)
write.table(Future_breadth, file = "niche_fut.txt", append=TRUE, col.names = FALSE)
#
##
###
###################



##$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$######
##  0.5m
##############


####################################################
####################################################
####################################################
####################################################
####################################################
####################################################
####################################################
####################################################
####################################################
####################################################
####################################################
####################################################



setwd("/Volumes/Richie 4TB 1/SDM_Nov_2016/species/iMAC_11_16_16/half_m_output/")
library(raster)
library(ENMTools)
# this is an example with two .asc files from Rhizophora mangle
# one layer is an ENM output file for the present and one is an ENM
# output file for the future (2070) using CCSM4 climate model and
# and greenhouse scenario RCP85

# the raster function can also import other types of files (not just .asc)

present_layer <- raster("Avicennia_germinans_avg.asc")
future_layer <- raster("Avicennia_germinans_half_m_layers_avg.asc")
spp <- "Avicennia"
write.table(spp, "niche_half.txt", append=TRUE, col.names = FALSE)

Schoeners_D <- nicheOverlap(present_layer, future_layer, stat='D', mask=TRUE, 
                            checkNegatives=TRUE)
print(Schoeners_D)
write.table(Schoeners_D, "niche_half.txt", append=TRUE, col.names = FALSE)

#niche breadth -- computes Levin's B -- B2 is the statistic we want

Present_breadth <- raster.breadth(present_layer)

print(Present_breadth)

Future_breadth <- raster.breadth(future_layer)

print(Future_breadth)

write.table(Present_breadth, file = "niche_half.txt", append=TRUE, col.names = FALSE)
write.table(Future_breadth, file = "niche_half.txt", append=TRUE, col.names = FALSE)

#################
###
##
#
present_layer <- raster("Batis_maritima_avg.asc")
future_layer <- raster("Batis_maritima_half_m_layers_avg.asc")
spp <- "Batis"
write.table(spp, "niche_fut.txt", append=TRUE, col.names = FALSE)

Schoeners_D <- nicheOverlap(present_layer, future_layer, stat='D', mask=TRUE, 
                            checkNegatives=TRUE)
print(Schoeners_D)
write.table(Schoeners_D, "niche_fut.txt", append=TRUE, col.names = FALSE)
Present_breadth <- raster.breadth(present_layer)
print(Present_breadth)
Future_breadth <- raster.breadth(future_layer)
print(Future_breadth)
write.table(Present_breadth, file = "niche_fut.txt", append=TRUE, col.names = FALSE)
write.table(Future_breadth, file = "niche_fut.txt", append=TRUE, col.names = FALSE)
#
##
###
###################
#################
###
##
#
present_layer <- raster("Conocarpus_erectus_avg.asc")
future_layer <- raster("Conocarpus_erectus_half_m_layers_avg.asc")
spp <- "Conocarpus"
write.table(spp, "niche_fut.txt", append=TRUE, col.names = FALSE)

Schoeners_D <- nicheOverlap(present_layer, future_layer, stat='D', mask=TRUE, 
                            checkNegatives=TRUE)
print(Schoeners_D)
write.table(Schoeners_D, "niche_fut.txt", append=TRUE, col.names = FALSE)
Present_breadth <- raster.breadth(present_layer)
print(Present_breadth)
Future_breadth <- raster.breadth(future_layer)
print(Future_breadth)
write.table(Present_breadth, file = "niche_fut.txt", append=TRUE, col.names = FALSE)
write.table(Future_breadth, file = "niche_fut.txt", append=TRUE, col.names = FALSE)
#
##
###
###################
#################
###
##
#
present_layer <- raster("Laguncularia_racemosa_avg.asc")
future_layer <- raster("Laguncularia_racemosa_half_m_layers_avg.asc")
spp <- "Laguncularia"
write.table(spp, "niche_fut.txt", append=TRUE, col.names = FALSE)

Schoeners_D <- nicheOverlap(present_layer, future_layer, stat='D', mask=TRUE, 
                            checkNegatives=TRUE)
print(Schoeners_D)
write.table(Schoeners_D, "niche_fut.txt", append=TRUE, col.names = FALSE)
Present_breadth <- raster.breadth(present_layer)
print(Present_breadth)
Future_breadth <- raster.breadth(future_layer)
print(Future_breadth)
write.table(Present_breadth, file = "niche_fut.txt", append=TRUE, col.names = FALSE)
write.table(Future_breadth, file = "niche_fut.txt", append=TRUE, col.names = FALSE)
#
##
###
###################
##################
###
##
#
present_layer <- raster("Rhizophora_mangle_avg.asc")
future_layer <- raster("Rhizophora_mangle_half_m_layers_avg.asc")
spp <- "Rhizophora"
write.table(spp, "niche_fut.txt", append=TRUE, col.names = FALSE)

Schoeners_D <- nicheOverlap(present_layer, future_layer, stat='D', mask=TRUE, 
                            checkNegatives=TRUE)
print(Schoeners_D)
write.table(Schoeners_D, "niche_fut.txt", append=TRUE, col.names = FALSE)
Present_breadth <- raster.breadth(present_layer)
print(Present_breadth)
Future_breadth <- raster.breadth(future_layer)
print(Future_breadth)
write.table(Present_breadth, file = "niche_fut.txt", append=TRUE, col.names = FALSE)
write.table(Future_breadth, file = "niche_fut.txt", append=TRUE, col.names = FALSE)
#
##
###
###################
#################
###
##
#
present_layer <- raster("Sesuvium_portulacastrum_avg.asc")
future_layer <- raster("Sesuvium_portulacastrum_half_m_layers_avg.asc")
spp <- "Sesuvium"
write.table(spp, "niche_fut.txt", append=TRUE, col.names = FALSE)

Schoeners_D <- nicheOverlap(present_layer, future_layer, stat='D', mask=TRUE, 
                            checkNegatives=TRUE)
print(Schoeners_D)
write.table(Schoeners_D, "niche_fut.txt", append=TRUE, col.names = FALSE)
Present_breadth <- raster.breadth(present_layer)
print(Present_breadth)
Future_breadth <- raster.breadth(future_layer)
print(Future_breadth)
write.table(Present_breadth, file = "niche_fut.txt", append=TRUE, col.names = FALSE)
write.table(Future_breadth, file = "niche_fut.txt", append=TRUE, col.names = FALSE)
#
##
###
###################
#################
###
##
#
present_layer <- raster("Spartina_alterniflora_avg.asc")
future_layer <- raster("Spartina_alterniflora_half_m_layers_avg.asc")
spp <- "Spartina"
write.table(spp, "niche_fut.txt", append=TRUE, col.names = FALSE)

Schoeners_D <- nicheOverlap(present_layer, future_layer, stat='D', mask=TRUE, 
                            checkNegatives=TRUE)
print(Schoeners_D)
write.table(Schoeners_D, "niche_fut.txt", append=TRUE, col.names = FALSE)
Present_breadth <- raster.breadth(present_layer)
print(Present_breadth)
Future_breadth <- raster.breadth(future_layer)
print(Future_breadth)
write.table(Present_breadth, file = "niche_fut.txt", append=TRUE, col.names = FALSE)
write.table(Future_breadth, file = "niche_fut.txt", append=TRUE, col.names = FALSE)
#
##
###
###################
#################
###
##
#
present_layer <- raster("Sporobolus_virginicus_avg.asc")
future_layer <- raster("Sporobolus_virginicus_half_m_layers_avg.asc")
spp <- "Sporobolus"
write.table(spp, "niche_fut.txt", append=TRUE, col.names = FALSE)

Schoeners_D <- nicheOverlap(present_layer, future_layer, stat='D', mask=TRUE, 
                             checkNegatives=TRUE)
print(Schoeners_D)
write.table(Schoeners_D, "niche_fut.txt", append=TRUE, col.names = FALSE)
Present_breadth <- raster.breadth(present_layer)
print(Present_breadth)
Future_breadth <- raster.breadth(future_layer)
print(Future_breadth)
write.table(Present_breadth, file = "niche_fut.txt", append=TRUE, col.names = FALSE)
write.table(Future_breadth, file = "niche_fut.txt", append=TRUE, col.names = FALSE)
#
##
###
###################

present_layer
?raster.

