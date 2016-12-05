
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

#set the working directory
setwd("/Volumes/Richie 4TB 1/SDM_Nov_2016/2070hiLayers/") 
getwd()     

      #load the maps
      
      bio_1_fut <- raster("cc85bi701.tif")
      bio_2_fut <- raster("cc85bi702.tif")
      bio_4_fut <- raster("cc85bi704.tif")
      bio_5_fut <- raster("cc85bi705.tif")
      bio_12_fut <- raster("cc85bi7012.tif")
      bio_14_fut <- raster("cc85bi7014.tif")
      bio_15_fut <- raster("cc85bi7015.tif")
      
      #make sure all layers are projected into the same datum
    #  bio2_lF
    #  alt_lF
    #  geo_lF
    #  projection(geo_lF) <- "+proj=longlat +ellps=WGS84 +towgs84=0,0,0,0,0,0,0 +no_defs" 
      
      # import polygons to delimit our maps to our region of interest
     # FL <- readShapePoly("FL/FLstate2.shp")
      
      clipper <- extent(-130, -32, -38, 46)
      
      clipped_1_fut <- crop(bio_1_fut, clipper)
      clipped_2_fut <- crop(bio_2_fut, clipper)
      clipped_4_fut <- crop(bio_4_fut, clipper)
      clipped_5_fut <- crop(bio_5_fut, clipper)
      clipped_12_fut <- crop(bio_12_fut, clipper)
      clipped_14_fut <- crop(bio_14_fut, clipper)
      clipped_15_fut <- crop(bio_15_fut, clipper)
      
      
      
      writeRaster(clipped_1_fut, "bio1.asc", format="ascii")
      writeRaster(clipped_2_fut, "bio2.asc", format="ascii")
      writeRaster(clipped_4_fut, "bio4.asc", format="ascii")
      writeRaster(clipped_5_fut, "bio5.asc", format="ascii")
      writeRaster(clipped_12_fut, "bio12.asc", format="ascii")
      writeRaster(clipped_14_fut, "bio14.asc", format="ascii")
      writeRaster(clipped_15_fut, "bio15.asc", format="ascii")
      
      
      
      
            
