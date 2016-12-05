
#Climate Layers Processing Script
#install the packages we need (only do it once)
install.packages("maptools")
install.packages("raster")
install.packages("rgdal")
install.packages("sp")
install.packages("maps")
install.packages("mapproj")

#load all the libraries we will need here (each time you oepn the script)
library(maptools)
library(raster)
library(rgdal)
library(sp)
library(maps)
library(mapproj)

library(dismo)
library(shapefiles)

####     $$$$$$$$$  PRESENT  $$$$$$$$$   ################


#set the working directory
setwd("/Volumes/Richie 4TB 1/bioclim_30s/")

#load the maps


#geo_l <- raster("Bioclim/geo.asc")
bio_1 <- raster("bio1-9_30s_bil/bio_1.bil")
bio_2 <- raster("bio1-9_30s_bil/bio_2.bil")
bio_3 <- raster("bio1-9_30s_bil/bio_3.bil")
bio_4 <- raster("bio1-9_30s_bil/bio_4.bil")
bio_5 <- raster("bio1-9_30s_bil/bio_5.bil")
bio_6 <- raster("bio1-9_30s_bil/bio_6.bil")
bio_7 <- raster("bio1-9_30s_bil/bio_7.bil")
bio_8 <- raster("bio1-9_30s_bil/bio_8.bil")
bio_9 <- raster("bio1-9_30s_bil/bio_9.bil")
bio_10 <- raster("bio10-19_30s_bil/bio_10.bil")
bio_11 <- raster("bio10-19_30s_bil/bio_11.bil")
bio_12 <- raster("bio10-19_30s_bil/bio_12.bil")
bio_13 <- raster("bio10-19_30s_bil/bio_13.bil")
bio_14 <- raster("bio10-19_30s_bil/bio_14.bil")
bio_15 <- raster("bio10-19_30s_bil/bio_15.bil")
bio_16 <- raster("bio10-19_30s_bil/bio_16.bil")
bio_17 <- raster("bio10-19_30s_bil/bio_17.bil")
bio_18 <- raster("bio10-19_30s_bil/bio_18.bil")
bio_19 <- raster("bio10-19_30s_bil/bio_19.bil")

setwd("/Volumes/Richie 4TB 1/SDM_Nov_2016/PresLayers_USE/")
alt <- raster("srtm_1km.asc")

bio_1
alt
#make sure all layers are projected into the same datum
#bio_1
projection(alt) <- "+proj=longlat +ellps=WGS84 +towgs84=0,0,0,0,0,0,0 +no_defs" 



clipper <- extent(-130, -32, -38, 46)

alt_clip <- crop(alt, clipper)
                 
clipped_1 <- crop(bio_1, clipper)

extent(alt_clip) <- extent(clipped_1)
alt_clip
clipped_1
clipped_2 <- crop(bio_2, clipper)
clipped_3 <- crop(bio_3, clipper)
clipped_4 <- crop(bio_4, clipper)
clipped_5 <- crop(bio_5, clipper)
clipped_6 <- crop(bio_6, clipper)
clipped_7 <- crop(bio_7, clipper)
clipped_8 <- crop(bio_8, clipper)
clipped_9 <- crop(bio_9, clipper)
clipped_10 <- crop(bio_10, clipper)
clipped_11 <- crop(bio_11, clipper)
clipped_12 <- crop(bio_12, clipper)
clipped_13 <- crop(bio_13, clipper)
clipped_14 <- crop(bio_14, clipper)
clipped_15 <- crop(bio_15, clipper)
clipped_16 <- crop(bio_16, clipper)
clipped_17 <- crop(bio_17, clipper)
clipped_18 <- crop(bio_18, clipper)
clipped_19 <- crop(bio_19, clipper)

setwd("/Volumes/Richie 4TB 1/SDM_Nov_2016/PresLayers_USE/")

writeRaster(alt_clip, "alt.asc", format="ascii")

writeRaster(clipped_1, "bio1.asc", format="ascii")
writeRaster(clipped_2, "bio2.asc", format="ascii")
writeRaster(clipped_3, "bio3.asc", format="ascii")
writeRaster(clipped_4, "bio4.asc", format="ascii")
writeRaster(clipped_5, "bio5.asc", format="ascii")
writeRaster(clipped_6, "bio6.asc", format="ascii")
writeRaster(clipped_7, "bio7.asc", format="ascii")
writeRaster(clipped_8, "bio8.asc", format="ascii")
writeRaster(clipped_9, "bio9.asc", format="ascii")
writeRaster(clipped_10, "bio10.asc", format="ascii")
writeRaster(clipped_11, "bio11.asc", format="ascii")
writeRaster(clipped_12, "bio12.asc", format="ascii")
writeRaster(clipped_13, "bio13.asc", format="ascii")
writeRaster(clipped_14, "bio14.asc", format="ascii")
writeRaster(clipped_15, "bio15.asc", format="ascii")
writeRaster(clipped_16, "bio16.asc", format="ascii")
writeRaster(clipped_17, "bio17.asc", format="ascii")
writeRaster(clipped_18, "bio18.asc", format="ascii")
writeRaster(clipped_19, "bio19.asc", format="ascii")


#####       correlation check       #######

stack <- stack(clipped_1, clipped_2, clipped_3, clipped_4, clipped_5,
               clipped_6, clipped_7, clipped_8, clipped_9, clipped_10,
               clipped_11, clipped_12, clipped_13, clipped_14, clipped_15,
               clipped_16, clipped_17, clipped_18, clipped_19)
corr <- layerStats(stack, 'pearson', na.rm=TRUE)
c <- corr$`pearson correlation coefficient`
write.csv(c, "correlationBioclim.csv")
?layerStats
?extent
?getwd()


?layerStats


######     $$$$$$$$$$     FUTURE W/ SLR      $$$$$$$$$$$$        #########




###################################################################
library(raster)
setwd("/Volumes/Richie 4TB 1/SDM_Nov_2016/PresLayers_USE/")

alt_now <- raster("alt.asc")
alt_now

setwd("/Volumes/Richie 4TB 1/SDM_Nov_2016/PresLayers_USE/fut_masked/intermediate_file/")

## the file alt_11_12_16.asc was outputted from QGIS after inputting the
## alt.asc file, doing raster calc on it (subtracting 1), and then saving
## it as a geotiff file, and then converting the geotiff to asc (in QGIS)
alt_fut <- raster("alt_11_12_16.asc")
alt_fut

fun <- function(x) {x[x<(0)] <- NA; return(x)}
rc2 <- calc(alt_fut, fun)
rc2
writeRaster(rc2, "alt_fut_11_15_16.asc", format="ascii")

# this above file will be the future alt layer to use

?mask

setwd("/Volumes/Richie 4TB 1/SDM_Nov_2016/2070hiLayers/")

bio__1 <- raster("bio1.asc")
bio__2 <- raster("bio2.asc")
bio__4 <- raster("bio4.asc")
bio__5 <- raster("bio5.asc")
bio__12 <- raster("bio12.asc")
bio__14 <- raster("bio14.asc")
bio__15 <- raster("bio15.asc")

setwd("/Volumes/Richie 4TB 1/SDM_Nov_2016/PresLayers_USE/fut_masked/intermediate_file/")

bio1_masked <- mask(bio__1, rc2)
bio1_masked
extent(bio1_masked) <- extent(rc2)
writeRaster(bio1_masked, "bio1_fut.asc", format="ascii")

bio2_masked <- mask(bio__2, rc2)
bio2_masked
extent(bio2_masked) <- extent(rc2)
writeRaster(bio2_masked, "bio2_fut.asc", format="ascii")

bio4_masked <- mask(bio__4, rc2)
bio4_masked
extent(bio4_masked) <- extent(rc2)
writeRaster(bio4_masked, "bio4_fut.asc", format="ascii")

bio5_masked <- mask(bio__5, rc2)
bio5_masked
extent(bio5_masked) <- extent(rc2)
writeRaster(bio5_masked, "bio5_fut.asc", format="ascii")

bio12_masked <- mask(bio__12, rc2)
bio12_masked
extent(bio12_masked) <- extent(rc2)
writeRaster(bio12_masked, "bio12_fut.asc", format="ascii")

bio14_masked <- mask(bio__14, rc2)
bio14_masked
extent(bio14_masked) <- extent(rc2)
writeRaster(bio14_masked, "bio14_fut.asc", format="ascii")

bio15_masked <- mask(bio__15, rc2)
bio15_masked
extent(bio15_masked) <- extent(rc2)
writeRaster(bio15_masked, "bio15_fut.asc", format="ascii")





