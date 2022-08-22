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

# average for each month over the 5-6 year period.
# then make biovars using the 12 monthly averages for
# precip, tmax, tmin

?biovars

#Description
#Function to create 'bioclimatic variables' from monthly climate data.

#Usage
#biovars(prec, tmin, tmax, ...) 
#Arguments
#prec	
#vector, matrix, or RasterStack/Brick of precipitation data

#tmin	
#vector, matrix, or RasterStack/Brick of minimum temperature data

#tmax	
#vector, matrix, or RasterStack/Brick of maximum temperature data

#Details
#Input data is normaly monthly. I.e. there should be 12 values (layers) for each variable, 
#but the function should also work for e.g. weekly data (with some changes in the meaning 
#of the output variables. E.g. #8 would then not be for a quarter (3 months), but for a 
#3 week period).
                       

# first let's get data for present (2013-2018)

clipper <- extent(-130, -32, -36, 36)

# Use biovars to get bioclim vars for each time period first, 
# and only then export them as ascii files. Need precip, tmin, tmax for biovars.
# will get a single file for each bioclim var over a time period of interest. 

# Example for 2001-2006

#  2001-2006 layers


#############################################################################

# Precipitation
#############################################################################

setwd("/Users/richiehodel/my_docs/mang_salt/past_layers/2001-2006_layers/2000_2009/wc2.1_2.5m_prec_2000-2009/")

#############################################################################

# January

Jan01 <- raster("Jan/wc2.1_2.5m_prec_2001-01.tif")
Jan01_clip <- crop(Jan01, clipper)
Jan02 <- raster("Jan/wc2.1_2.5m_prec_2002-01.tif")
Jan02_clip <- crop(Jan02, clipper)
Jan03 <- raster("Jan/wc2.1_2.5m_prec_2003-01.tif")
Jan03_clip <- crop(Jan03, clipper)
Jan04 <- raster("Jan/wc2.1_2.5m_prec_2004-01.tif")
Jan04_clip <- crop(Jan04, clipper)
Jan05 <- raster("Jan/wc2.1_2.5m_prec_2005-01.tif")
Jan05_clip <- crop(Jan05, clipper)
Jan06 <- raster("Jan/wc2.1_2.5m_prec_2006-01.tif")
Jan06_clip <- crop(Jan06, clipper)

Jan_prec_avg_2001_2006 <- (Jan01_clip+Jan02_clip+Jan03_clip+Jan04_clip+Jan05_clip+Jan06_clip)/6

#############################################################################

# February

Feb01 <- raster("Feb/wc2.1_2.5m_prec_2001-02.tif")
Feb01_clip <- crop(Feb01, clipper)
Feb02 <- raster("Feb/wc2.1_2.5m_prec_2002-02.tif")
Feb02_clip <- crop(Feb02, clipper)
Feb03 <- raster("Feb/wc2.1_2.5m_prec_2003-02.tif")
Feb03_clip <- crop(Feb03, clipper)
Feb04 <- raster("Feb/wc2.1_2.5m_prec_2004-02.tif")
Feb04_clip <- crop(Feb04, clipper)
Feb05 <- raster("Feb/wc2.1_2.5m_prec_2005-02.tif")
Feb05_clip <- crop(Feb05, clipper)
Feb06 <- raster("Feb/wc2.1_2.5m_prec_2006-02.tif")
Feb06_clip <- crop(Feb06, clipper)

Feb_prec_avg_2001_2006 <- (Feb01_clip+Feb02_clip+Feb03_clip+Feb04_clip+Feb05_clip+Feb06_clip)/6

#############################################################################

# March

Mar01 <- raster("Mar/wc2.1_2.5m_prec_2001-03.tif")
Mar01_clip <- crop(Mar01, clipper)
Mar02 <- raster("Mar/wc2.1_2.5m_prec_2002-03.tif")
Mar02_clip <- crop(Mar02, clipper)
Mar03 <- raster("Mar/wc2.1_2.5m_prec_2003-03.tif")
Mar03_clip <- crop(Mar03, clipper)
Mar04 <- raster("Mar/wc2.1_2.5m_prec_2004-03.tif")
Mar04_clip <- crop(Mar04, clipper)
Mar05 <- raster("Mar/wc2.1_2.5m_prec_2005-03.tif")
Mar05_clip <- crop(Mar05, clipper)
Mar06 <- raster("Mar/wc2.1_2.5m_prec_2006-03.tif")
Mar06_clip <- crop(Mar06, clipper)

Mar_prec_avg_2001_2006 <- (Mar01_clip+Mar02_clip+Mar03_clip+Mar04_clip+Mar05_clip+Mar06_clip)/6


#############################################################################

# April

Apr01 <- raster("Apr/wc2.1_2.5m_prec_2001-04.tif")
Apr01_clip <- crop(Apr01, clipper)
Apr02 <- raster("Apr/wc2.1_2.5m_prec_2002-04.tif")
Apr02_clip <- crop(Apr02, clipper)
Apr03 <- raster("Apr/wc2.1_2.5m_prec_2003-04.tif")
Apr03_clip <- crop(Apr03, clipper)
Apr04 <- raster("Apr/wc2.1_2.5m_prec_2004-04.tif")
Apr04_clip <- crop(Apr04, clipper)
Apr05 <- raster("Apr/wc2.1_2.5m_prec_2005-04.tif")
Apr05_clip <- crop(Apr05, clipper)
Apr06 <- raster("Apr/wc2.1_2.5m_prec_2006-04.tif")
Apr06_clip <- crop(Apr06, clipper)

Apr_prec_avg_2001_2006 <- (Apr01_clip+Apr02_clip+Apr03_clip+Apr04_clip+Apr05_clip+Apr06_clip)/6

#############################################################################

# May

May01 <- raster("May/wc2.1_2.5m_prec_2001-05.tif")
May01_clip <- crop(May01, clipper)
May02 <- raster("May/wc2.1_2.5m_prec_2002-05.tif")
May02_clip <- crop(May02, clipper)
May03 <- raster("May/wc2.1_2.5m_prec_2003-05.tif")
May03_clip <- crop(May03, clipper)
May04 <- raster("May/wc2.1_2.5m_prec_2004-05.tif")
May04_clip <- crop(May04, clipper)
May05 <- raster("May/wc2.1_2.5m_prec_2005-05.tif")
May05_clip <- crop(May05, clipper)
May06 <- raster("May/wc2.1_2.5m_prec_2006-05.tif")
May06_clip <- crop(May06, clipper)

May_prec_avg_2001_2006 <- (May01_clip+May02_clip+May03_clip+May04_clip+May05_clip+May06_clip)/6

#############################################################################

# June

Jun01 <- raster("Jun/wc2.1_2.5m_prec_2001-06.tif")
Jun01_clip <- crop(Jun01, clipper)
Jun02 <- raster("Jun/wc2.1_2.5m_prec_2002-06.tif")
Jun02_clip <- crop(Jun02, clipper)
Jun03 <- raster("Jun/wc2.1_2.5m_prec_2003-06.tif")
Jun03_clip <- crop(Jun03, clipper)
Jun04 <- raster("Jun/wc2.1_2.5m_prec_2004-06.tif")
Jun04_clip <- crop(Jun04, clipper)
Jun05 <- raster("Jun/wc2.1_2.5m_prec_2005-06.tif")
Jun05_clip <- crop(Jun05, clipper)
Jun06 <- raster("Jun/wc2.1_2.5m_prec_2006-06.tif")
Jun06_clip <- crop(Jun06, clipper)

Jun_prec_avg_2001_2006 <- (Jun01_clip+Jun02_clip+Jun03_clip+Jun04_clip+Jun05_clip+Jun06_clip)/6

#############################################################################

# July

Jul01 <- raster("Jul/wc2.1_2.5m_prec_2001-07.tif")
Jul01_clip <- crop(Jul01, clipper)
Jul02 <- raster("Jul/wc2.1_2.5m_prec_2002-07.tif")
Jul02_clip <- crop(Jul02, clipper)
Jul03 <- raster("Jul/wc2.1_2.5m_prec_2003-07.tif")
Jul03_clip <- crop(Jul03, clipper)
Jul04 <- raster("Jul/wc2.1_2.5m_prec_2004-07.tif")
Jul04_clip <- crop(Jul04, clipper)
Jul05 <- raster("Jul/wc2.1_2.5m_prec_2005-07.tif")
Jul05_clip <- crop(Jul05, clipper)
Jul06 <- raster("Jul/wc2.1_2.5m_prec_2006-07.tif")
Jul06_clip <- crop(Jul06, clipper)

Jul_prec_avg_2001_2006 <- (Jul01_clip+Jul02_clip+Jul03_clip+Jul04_clip+Jul05_clip+Jul06_clip)/6

#############################################################################

# August

Aug01 <- raster("Aug/wc2.1_2.5m_prec_2001-08.tif")
Aug01_clip <- crop(Aug01, clipper)
Aug02 <- raster("Aug/wc2.1_2.5m_prec_2002-08.tif")
Aug02_clip <- crop(Aug02, clipper)
Aug03 <- raster("Aug/wc2.1_2.5m_prec_2003-08.tif")
Aug03_clip <- crop(Aug03, clipper)
Aug04 <- raster("Aug/wc2.1_2.5m_prec_2004-08.tif")
Aug04_clip <- crop(Aug04, clipper)
Aug05 <- raster("Aug/wc2.1_2.5m_prec_2005-08.tif")
Aug05_clip <- crop(Aug05, clipper)
Aug06 <- raster("Aug/wc2.1_2.5m_prec_2006-08.tif")
Aug06_clip <- crop(Aug06, clipper)

Aug_prec_avg_2001_2006 <- (Aug01_clip+Aug02_clip+Aug03_clip+Aug04_clip+Aug05_clip+Aug06_clip)/6

#############################################################################

# September

Sep01 <- raster("Sep/wc2.1_2.5m_prec_2001-09.tif")
Sep01_clip <- crop(Sep01, clipper)
Sep02 <- raster("Sep/wc2.1_2.5m_prec_2002-09.tif")
Sep02_clip <- crop(Sep02, clipper)
Sep03 <- raster("Sep/wc2.1_2.5m_prec_2003-09.tif")
Sep03_clip <- crop(Sep03, clipper)
Sep04 <- raster("Sep/wc2.1_2.5m_prec_2004-09.tif")
Sep04_clip <- crop(Sep04, clipper)
Sep05 <- raster("Sep/wc2.1_2.5m_prec_2005-09.tif")
Sep05_clip <- crop(Sep05, clipper)
Sep06 <- raster("Sep/wc2.1_2.5m_prec_2006-09.tif")
Sep06_clip <- crop(Sep06, clipper)

Sep_prec_avg_2001_2006 <- (Sep01_clip+Sep02_clip+Sep03_clip+Sep04_clip+Sep05_clip+Sep06_clip)/6

#############################################################################

# October

Oct01 <- raster("Oct/wc2.1_2.5m_prec_2001-10.tif")
Oct01_clip <- crop(Oct01, clipper)
Oct02 <- raster("Oct/wc2.1_2.5m_prec_2002-10.tif")
Oct02_clip <- crop(Oct02, clipper)
Oct03 <- raster("Oct/wc2.1_2.5m_prec_2003-10.tif")
Oct03_clip <- crop(Oct03, clipper)
Oct04 <- raster("Oct/wc2.1_2.5m_prec_2004-10.tif")
Oct04_clip <- crop(Oct04, clipper)
Oct05 <- raster("Oct/wc2.1_2.5m_prec_2005-10.tif")
Oct05_clip <- crop(Oct05, clipper)
Oct06 <- raster("Oct/wc2.1_2.5m_prec_2006-10.tif")
Oct06_clip <- crop(Oct06, clipper)

Oct_prec_avg_2001_2006 <- (Oct01_clip+Oct02_clip+Oct03_clip+Oct04_clip+Oct05_clip+Oct06_clip)/6

#############################################################################

# November

Nov01 <- raster("Nov/wc2.1_2.5m_prec_2001-11.tif")
Nov01_clip <- crop(Nov01, clipper)
Nov02 <- raster("Nov/wc2.1_2.5m_prec_2002-11.tif")
Nov02_clip <- crop(Nov02, clipper)
Nov03 <- raster("Nov/wc2.1_2.5m_prec_2003-11.tif")
Nov03_clip <- crop(Nov03, clipper)
Nov04 <- raster("Nov/wc2.1_2.5m_prec_2004-11.tif")
Nov04_clip <- crop(Nov04, clipper)
Nov05 <- raster("Nov/wc2.1_2.5m_prec_2005-11.tif")
Nov05_clip <- crop(Nov05, clipper)
Nov06 <- raster("Nov/wc2.1_2.5m_prec_2006-11.tif")
Nov06_clip <- crop(Nov06, clipper)

Nov_prec_avg_2001_2006 <- (Nov01_clip+Nov02_clip+Nov03_clip+Nov04_clip+Nov05_clip+Nov06_clip)/6

#############################################################################

# December

Dec01 <- raster("Dec/wc2.1_2.5m_prec_2001-12.tif")
Dec01_clip <- crop(Dec01, clipper)
Dec02 <- raster("Dec/wc2.1_2.5m_prec_2002-12.tif")
Dec02_clip <- crop(Dec02, clipper)
Dec03 <- raster("Dec/wc2.1_2.5m_prec_2003-12.tif")
Dec03_clip <- crop(Dec03, clipper)
Dec04 <- raster("Dec/wc2.1_2.5m_prec_2004-12.tif")
Dec04_clip <- crop(Dec04, clipper)
Dec05 <- raster("Dec/wc2.1_2.5m_prec_2005-12.tif")
Dec05_clip <- crop(Dec05, clipper)
Dec06 <- raster("Dec/wc2.1_2.5m_prec_2006-12.tif")
Dec06_clip <- crop(Dec06, clipper)

Dec_prec_avg_2001_2006 <- (Dec01_clip+Dec02_clip+Dec03_clip+Dec04_clip+Dec05_clip+Dec06_clip)/6

plot(Jan_prec_avg_2001_2006)
plot(Feb_prec_avg_2001_2006)
plot(Mar_prec_avg_2001_2006)
plot(Apr_prec_avg_2001_2006)

plot(May_prec_avg_2001_2006)
plot(Jun_prec_avg_2001_2006)
plot(Jul_prec_avg_2001_2006)
plot(Aug_prec_avg_2001_2006)

plot(Sep_prec_avg_2001_2006)
plot(Oct_prec_avg_2001_2006)
plot(Nov_prec_avg_2001_2006)
plot(Dec_prec_avg_2001_2006)

#############################################################################
#############################################################################


# Temp min
#############################################################################

setwd("/Users/richiehodel/my_docs/mang_salt/past_layers/2001-2006_layers/2000_2009/wc2.1_2.5m_tmin_2000-2009/")

#############################################################################

#############################################################################

# January

Jan01 <- raster("Jan/wc2.1_2.5m_tmin_2001-01.tif")
Jan01_clip <- crop(Jan01, clipper)
Jan02 <- raster("Jan/wc2.1_2.5m_tmin_2002-01.tif")
Jan02_clip <- crop(Jan02, clipper)
Jan03 <- raster("Jan/wc2.1_2.5m_tmin_2003-01.tif")
Jan03_clip <- crop(Jan03, clipper)
Jan04 <- raster("Jan/wc2.1_2.5m_tmin_2004-01.tif")
Jan04_clip <- crop(Jan04, clipper)
Jan05 <- raster("Jan/wc2.1_2.5m_tmin_2005-01.tif")
Jan05_clip <- crop(Jan05, clipper)
Jan06 <- raster("Jan/wc2.1_2.5m_tmin_2006-01.tif")
Jan06_clip <- crop(Jan06, clipper)

Jan_tmin_avg_2001_2006 <- (Jan01_clip+Jan02_clip+Jan03_clip+Jan04_clip+Jan05_clip+Jan06_clip)/6
#writeRaster(Jan_tmin_avg_2001_2006, "Jan_tmin_avg_2001_2006.asc", format="ascii" )

#############################################################################

# February

Feb01 <- raster("Feb/wc2.1_2.5m_tmin_2001-02.tif")
Feb01_clip <- crop(Feb01, clipper)
Feb02 <- raster("Feb/wc2.1_2.5m_tmin_2002-02.tif")
Feb02_clip <- crop(Feb02, clipper)
Feb03 <- raster("Feb/wc2.1_2.5m_tmin_2003-02.tif")
Feb03_clip <- crop(Feb03, clipper)
Feb04 <- raster("Feb/wc2.1_2.5m_tmin_2004-02.tif")
Feb04_clip <- crop(Feb04, clipper)
Feb05 <- raster("Feb/wc2.1_2.5m_tmin_2005-02.tif")
Feb05_clip <- crop(Feb05, clipper)
Feb06 <- raster("Feb/wc2.1_2.5m_tmin_2006-02.tif")
Feb06_clip <- crop(Feb06, clipper)

Feb_tmin_avg_2001_2006 <- (Feb01_clip+Feb02_clip+Feb03_clip+Feb04_clip+Feb05_clip+Feb06_clip)/6

#############################################################################

# March

Mar01 <- raster("Mar/wc2.1_2.5m_tmin_2001-03.tif")
Mar01_clip <- crop(Mar01, clipper)
Mar02 <- raster("Mar/wc2.1_2.5m_tmin_2002-03.tif")
Mar02_clip <- crop(Mar02, clipper)
Mar03 <- raster("Mar/wc2.1_2.5m_tmin_2003-03.tif")
Mar03_clip <- crop(Mar03, clipper)
Mar04 <- raster("Mar/wc2.1_2.5m_tmin_2004-03.tif")
Mar04_clip <- crop(Mar04, clipper)
Mar05 <- raster("Mar/wc2.1_2.5m_tmin_2005-03.tif")
Mar05_clip <- crop(Mar05, clipper)
Mar06 <- raster("Mar/wc2.1_2.5m_tmin_2006-03.tif")
Mar06_clip <- crop(Mar06, clipper)

Mar_tmin_avg_2001_2006 <- (Mar01_clip+Mar02_clip+Mar03_clip+Mar04_clip+Mar05_clip+Mar06_clip)/6


#############################################################################

# April

Apr01 <- raster("Apr/wc2.1_2.5m_tmin_2001-04.tif")
Apr01_clip <- crop(Apr01, clipper)
Apr02 <- raster("Apr/wc2.1_2.5m_tmin_2002-04.tif")
Apr02_clip <- crop(Apr02, clipper)
Apr03 <- raster("Apr/wc2.1_2.5m_tmin_2003-04.tif")
Apr03_clip <- crop(Apr03, clipper)
Apr04 <- raster("Apr/wc2.1_2.5m_tmin_2004-04.tif")
Apr04_clip <- crop(Apr04, clipper)
Apr05 <- raster("Apr/wc2.1_2.5m_tmin_2005-04.tif")
Apr05_clip <- crop(Apr05, clipper)
Apr06 <- raster("Apr/wc2.1_2.5m_tmin_2006-04.tif")
Apr06_clip <- crop(Apr06, clipper)

Apr_tmin_avg_2001_2006 <- (Apr01_clip+Apr02_clip+Apr03_clip+Apr04_clip+Apr05_clip+Apr06_clip)/6

#############################################################################

# May

May01 <- raster("May/wc2.1_2.5m_tmin_2001-05.tif")
May01_clip <- crop(May01, clipper)
May02 <- raster("May/wc2.1_2.5m_tmin_2002-05.tif")
May02_clip <- crop(May02, clipper)
May03 <- raster("May/wc2.1_2.5m_tmin_2003-05.tif")
May03_clip <- crop(May03, clipper)
May04 <- raster("May/wc2.1_2.5m_tmin_2004-05.tif")
May04_clip <- crop(May04, clipper)
May05 <- raster("May/wc2.1_2.5m_tmin_2005-05.tif")
May05_clip <- crop(May05, clipper)
May06 <- raster("May/wc2.1_2.5m_tmin_2006-05.tif")
May06_clip <- crop(May06, clipper)

May_tmin_avg_2001_2006 <- (May01_clip+May02_clip+May03_clip+May04_clip+May05_clip+May06_clip)/6

#############################################################################

# June

Jun01 <- raster("Jun/wc2.1_2.5m_tmin_2001-06.tif")
Jun01_clip <- crop(Jun01, clipper)
Jun02 <- raster("Jun/wc2.1_2.5m_tmin_2002-06.tif")
Jun02_clip <- crop(Jun02, clipper)
Jun03 <- raster("Jun/wc2.1_2.5m_tmin_2003-06.tif")
Jun03_clip <- crop(Jun03, clipper)
Jun04 <- raster("Jun/wc2.1_2.5m_tmin_2004-06.tif")
Jun04_clip <- crop(Jun04, clipper)
Jun05 <- raster("Jun/wc2.1_2.5m_tmin_2005-06.tif")
Jun05_clip <- crop(Jun05, clipper)
Jun06 <- raster("Jun/wc2.1_2.5m_tmin_2006-06.tif")
Jun06_clip <- crop(Jun06, clipper)

Jun_tmin_avg_2001_2006 <- (Jun01_clip+Jun02_clip+Jun03_clip+Jun04_clip+Jun05_clip+Jun06_clip)/6

#############################################################################

# July

Jul01 <- raster("Jul/wc2.1_2.5m_tmin_2001-07.tif")
Jul01_clip <- crop(Jul01, clipper)
Jul02 <- raster("Jul/wc2.1_2.5m_tmin_2002-07.tif")
Jul02_clip <- crop(Jul02, clipper)
Jul03 <- raster("Jul/wc2.1_2.5m_tmin_2003-07.tif")
Jul03_clip <- crop(Jul03, clipper)
Jul04 <- raster("Jul/wc2.1_2.5m_tmin_2004-07.tif")
Jul04_clip <- crop(Jul04, clipper)
Jul05 <- raster("Jul/wc2.1_2.5m_tmin_2005-07.tif")
Jul05_clip <- crop(Jul05, clipper)
Jul06 <- raster("Jul/wc2.1_2.5m_tmin_2006-07.tif")
Jul06_clip <- crop(Jul06, clipper)

Jul_tmin_avg_2001_2006 <- (Jul01_clip+Jul02_clip+Jul03_clip+Jul04_clip+Jul05_clip+Jul06_clip)/6

#############################################################################

# August

Aug01 <- raster("Aug/wc2.1_2.5m_tmin_2001-08.tif")
Aug01_clip <- crop(Aug01, clipper)
Aug02 <- raster("Aug/wc2.1_2.5m_tmin_2002-08.tif")
Aug02_clip <- crop(Aug02, clipper)
Aug03 <- raster("Aug/wc2.1_2.5m_tmin_2003-08.tif")
Aug03_clip <- crop(Aug03, clipper)
Aug04 <- raster("Aug/wc2.1_2.5m_tmin_2004-08.tif")
Aug04_clip <- crop(Aug04, clipper)
Aug05 <- raster("Aug/wc2.1_2.5m_tmin_2005-08.tif")
Aug05_clip <- crop(Aug05, clipper)
Aug06 <- raster("Aug/wc2.1_2.5m_tmin_2006-08.tif")
Aug06_clip <- crop(Aug06, clipper)

Aug_tmin_avg_2001_2006 <- (Aug01_clip+Aug02_clip+Aug03_clip+Aug04_clip+Aug05_clip+Aug06_clip)/6

#############################################################################

# September

Sep01 <- raster("Sep/wc2.1_2.5m_tmin_2001-09.tif")
Sep01_clip <- crop(Sep01, clipper)
Sep02 <- raster("Sep/wc2.1_2.5m_tmin_2002-09.tif")
Sep02_clip <- crop(Sep02, clipper)
Sep03 <- raster("Sep/wc2.1_2.5m_tmin_2003-09.tif")
Sep03_clip <- crop(Sep03, clipper)
Sep04 <- raster("Sep/wc2.1_2.5m_tmin_2004-09.tif")
Sep04_clip <- crop(Sep04, clipper)
Sep05 <- raster("Sep/wc2.1_2.5m_tmin_2005-09.tif")
Sep05_clip <- crop(Sep05, clipper)
Sep06 <- raster("Sep/wc2.1_2.5m_tmin_2006-09.tif")
Sep06_clip <- crop(Sep06, clipper)

Sep_tmin_avg_2001_2006 <- (Sep01_clip+Sep02_clip+Sep03_clip+Sep04_clip+Sep05_clip+Sep06_clip)/6

#############################################################################

# October

Oct01 <- raster("Oct/wc2.1_2.5m_tmin_2001-10.tif")
Oct01_clip <- crop(Oct01, clipper)
Oct02 <- raster("Oct/wc2.1_2.5m_tmin_2002-10.tif")
Oct02_clip <- crop(Oct02, clipper)
Oct03 <- raster("Oct/wc2.1_2.5m_tmin_2003-10.tif")
Oct03_clip <- crop(Oct03, clipper)
Oct04 <- raster("Oct/wc2.1_2.5m_tmin_2004-10.tif")
Oct04_clip <- crop(Oct04, clipper)
Oct05 <- raster("Oct/wc2.1_2.5m_tmin_2005-10.tif")
Oct05_clip <- crop(Oct05, clipper)
Oct06 <- raster("Oct/wc2.1_2.5m_tmin_2006-10.tif")
Oct06_clip <- crop(Oct06, clipper)

Oct_tmin_avg_2001_2006 <- (Oct01_clip+Oct02_clip+Oct03_clip+Oct04_clip+Oct05_clip+Oct06_clip)/6

#############################################################################

# November

Nov01 <- raster("Nov/wc2.1_2.5m_tmin_2001-11.tif")
Nov01_clip <- crop(Nov01, clipper)
Nov02 <- raster("Nov/wc2.1_2.5m_tmin_2002-11.tif")
Nov02_clip <- crop(Nov02, clipper)
Nov03 <- raster("Nov/wc2.1_2.5m_tmin_2003-11.tif")
Nov03_clip <- crop(Nov03, clipper)
Nov04 <- raster("Nov/wc2.1_2.5m_tmin_2004-11.tif")
Nov04_clip <- crop(Nov04, clipper)
Nov05 <- raster("Nov/wc2.1_2.5m_tmin_2005-11.tif")
Nov05_clip <- crop(Nov05, clipper)
Nov06 <- raster("Nov/wc2.1_2.5m_tmin_2006-11.tif")
Nov06_clip <- crop(Nov06, clipper)

Nov_tmin_avg_2001_2006 <- (Nov01_clip+Nov02_clip+Nov03_clip+Nov04_clip+Nov05_clip+Nov06_clip)/6

#############################################################################

# December

Dec01 <- raster("Dec/wc2.1_2.5m_tmin_2001-12.tif")
Dec01_clip <- crop(Dec01, clipper)
Dec02 <- raster("Dec/wc2.1_2.5m_tmin_2002-12.tif")
Dec02_clip <- crop(Dec02, clipper)
Dec03 <- raster("Dec/wc2.1_2.5m_tmin_2003-12.tif")
Dec03_clip <- crop(Dec03, clipper)
Dec04 <- raster("Dec/wc2.1_2.5m_tmin_2004-12.tif")
Dec04_clip <- crop(Dec04, clipper)
Dec05 <- raster("Dec/wc2.1_2.5m_tmin_2005-12.tif")
Dec05_clip <- crop(Dec05, clipper)
Dec06 <- raster("Dec/wc2.1_2.5m_tmin_2006-12.tif")
Dec06_clip <- crop(Dec06, clipper)

Dec_tmin_avg_2001_2006 <- (Dec01_clip+Dec02_clip+Dec03_clip+Dec04_clip+Dec05_clip+Dec06_clip)/6

plot(Jan_tmin_avg_2001_2006)
plot(Feb_tmin_avg_2001_2006)
plot(Mar_tmin_avg_2001_2006)
plot(Apr_tmin_avg_2001_2006)

plot(May_tmin_avg_2001_2006)
plot(Jun_tmin_avg_2001_2006)
plot(Jul_tmin_avg_2001_2006)
plot(Aug_tmin_avg_2001_2006)

plot(Sep_tmin_avg_2001_2006)
plot(Oct_tmin_avg_2001_2006)
plot(Nov_tmin_avg_2001_2006)
plot(Dec_tmin_avg_2001_2006)

#############################################################################
#############################################################################



#############################################################################


# Temp max
#############################################################################

setwd("/Users/richiehodel/my_docs/mang_salt/past_layers/2001-2006_layers/2000_2009/wc2.1_2.5m_tmax_2000-2009/")

#############################################################################

#############################################################################

# January

Jan01 <- raster("Jan/wc2.1_2.5m_tmax_2001-01.tif")
Jan01_clip <- crop(Jan01, clipper)
Jan02 <- raster("Jan/wc2.1_2.5m_tmax_2002-01.tif")
Jan02_clip <- crop(Jan02, clipper)
Jan03 <- raster("Jan/wc2.1_2.5m_tmax_2003-01.tif")
Jan03_clip <- crop(Jan03, clipper)
Jan04 <- raster("Jan/wc2.1_2.5m_tmax_2004-01.tif")
Jan04_clip <- crop(Jan04, clipper)
Jan05 <- raster("Jan/wc2.1_2.5m_tmax_2005-01.tif")
Jan05_clip <- crop(Jan05, clipper)
Jan06 <- raster("Jan/wc2.1_2.5m_tmax_2006-01.tif")
Jan06_clip <- crop(Jan06, clipper)

Jan_tmax_avg_2001_2006 <- (Jan01_clip+Jan02_clip+Jan03_clip+Jan04_clip+Jan05_clip+Jan06_clip)/6
#writeRaster(Jan_tmax_avg_2001_2006, "Jan_tmax_avg_2001_2006.asc", format="ascii" )

#############################################################################

# February

Feb01 <- raster("Feb/wc2.1_2.5m_tmax_2001-02.tif")
Feb01_clip <- crop(Feb01, clipper)
Feb02 <- raster("Feb/wc2.1_2.5m_tmax_2002-02.tif")
Feb02_clip <- crop(Feb02, clipper)
Feb03 <- raster("Feb/wc2.1_2.5m_tmax_2003-02.tif")
Feb03_clip <- crop(Feb03, clipper)
Feb04 <- raster("Feb/wc2.1_2.5m_tmax_2004-02.tif")
Feb04_clip <- crop(Feb04, clipper)
Feb05 <- raster("Feb/wc2.1_2.5m_tmax_2005-02.tif")
Feb05_clip <- crop(Feb05, clipper)
Feb06 <- raster("Feb/wc2.1_2.5m_tmax_2006-02.tif")
Feb06_clip <- crop(Feb06, clipper)

Feb_tmax_avg_2001_2006 <- (Feb01_clip+Feb02_clip+Feb03_clip+Feb04_clip+Feb05_clip+Feb06_clip)/6

#############################################################################

# March

Mar01 <- raster("Mar/wc2.1_2.5m_tmax_2001-03.tif")
Mar01_clip <- crop(Mar01, clipper)
Mar02 <- raster("Mar/wc2.1_2.5m_tmax_2002-03.tif")
Mar02_clip <- crop(Mar02, clipper)
Mar03 <- raster("Mar/wc2.1_2.5m_tmax_2003-03.tif")
Mar03_clip <- crop(Mar03, clipper)
Mar04 <- raster("Mar/wc2.1_2.5m_tmax_2004-03.tif")
Mar04_clip <- crop(Mar04, clipper)
Mar05 <- raster("Mar/wc2.1_2.5m_tmax_2005-03.tif")
Mar05_clip <- crop(Mar05, clipper)
Mar06 <- raster("Mar/wc2.1_2.5m_tmax_2006-03.tif")
Mar06_clip <- crop(Mar06, clipper)

Mar_tmax_avg_2001_2006 <- (Mar01_clip+Mar02_clip+Mar03_clip+Mar04_clip+Mar05_clip+Mar06_clip)/6


#############################################################################

# April

Apr01 <- raster("Apr/wc2.1_2.5m_tmax_2001-04.tif")
Apr01_clip <- crop(Apr01, clipper)
Apr02 <- raster("Apr/wc2.1_2.5m_tmax_2002-04.tif")
Apr02_clip <- crop(Apr02, clipper)
Apr03 <- raster("Apr/wc2.1_2.5m_tmax_2003-04.tif")
Apr03_clip <- crop(Apr03, clipper)
Apr04 <- raster("Apr/wc2.1_2.5m_tmax_2004-04.tif")
Apr04_clip <- crop(Apr04, clipper)
Apr05 <- raster("Apr/wc2.1_2.5m_tmax_2005-04.tif")
Apr05_clip <- crop(Apr05, clipper)
Apr06 <- raster("Apr/wc2.1_2.5m_tmax_2006-04.tif")
Apr06_clip <- crop(Apr06, clipper)

Apr_tmax_avg_2001_2006 <- (Apr01_clip+Apr02_clip+Apr03_clip+Apr04_clip+Apr05_clip+Apr06_clip)/6

#############################################################################

# May

May01 <- raster("May/wc2.1_2.5m_tmax_2001-05.tif")
May01_clip <- crop(May01, clipper)
May02 <- raster("May/wc2.1_2.5m_tmax_2002-05.tif")
May02_clip <- crop(May02, clipper)
May03 <- raster("May/wc2.1_2.5m_tmax_2003-05.tif")
May03_clip <- crop(May03, clipper)
May04 <- raster("May/wc2.1_2.5m_tmax_2004-05.tif")
May04_clip <- crop(May04, clipper)
May05 <- raster("May/wc2.1_2.5m_tmax_2005-05.tif")
May05_clip <- crop(May05, clipper)
May06 <- raster("May/wc2.1_2.5m_tmax_2006-05.tif")
May06_clip <- crop(May06, clipper)

May_tmax_avg_2001_2006 <- (May01_clip+May02_clip+May03_clip+May04_clip+May05_clip+May06_clip)/6

#############################################################################

# June

Jun01 <- raster("Jun/wc2.1_2.5m_tmax_2001-06.tif")
Jun01_clip <- crop(Jun01, clipper)
Jun02 <- raster("Jun/wc2.1_2.5m_tmax_2002-06.tif")
Jun02_clip <- crop(Jun02, clipper)
Jun03 <- raster("Jun/wc2.1_2.5m_tmax_2003-06.tif")
Jun03_clip <- crop(Jun03, clipper)
Jun04 <- raster("Jun/wc2.1_2.5m_tmax_2004-06.tif")
Jun04_clip <- crop(Jun04, clipper)
Jun05 <- raster("Jun/wc2.1_2.5m_tmax_2005-06.tif")
Jun05_clip <- crop(Jun05, clipper)
Jun06 <- raster("Jun/wc2.1_2.5m_tmax_2006-06.tif")
Jun06_clip <- crop(Jun06, clipper)

Jun_tmax_avg_2001_2006 <- (Jun01_clip+Jun02_clip+Jun03_clip+Jun04_clip+Jun05_clip+Jun06_clip)/6

#############################################################################

# July

Jul01 <- raster("Jul/wc2.1_2.5m_tmax_2001-07.tif")
Jul01_clip <- crop(Jul01, clipper)
Jul02 <- raster("Jul/wc2.1_2.5m_tmax_2002-07.tif")
Jul02_clip <- crop(Jul02, clipper)
Jul03 <- raster("Jul/wc2.1_2.5m_tmax_2003-07.tif")
Jul03_clip <- crop(Jul03, clipper)
Jul04 <- raster("Jul/wc2.1_2.5m_tmax_2004-07.tif")
Jul04_clip <- crop(Jul04, clipper)
Jul05 <- raster("Jul/wc2.1_2.5m_tmax_2005-07.tif")
Jul05_clip <- crop(Jul05, clipper)
Jul06 <- raster("Jul/wc2.1_2.5m_tmax_2006-07.tif")
Jul06_clip <- crop(Jul06, clipper)

Jul_tmax_avg_2001_2006 <- (Jul01_clip+Jul02_clip+Jul03_clip+Jul04_clip+Jul05_clip+Jul06_clip)/6

#############################################################################

# August

Aug01 <- raster("Aug/wc2.1_2.5m_tmax_2001-08.tif")
Aug01_clip <- crop(Aug01, clipper)
Aug02 <- raster("Aug/wc2.1_2.5m_tmax_2002-08.tif")
Aug02_clip <- crop(Aug02, clipper)
Aug03 <- raster("Aug/wc2.1_2.5m_tmax_2003-08.tif")
Aug03_clip <- crop(Aug03, clipper)
Aug04 <- raster("Aug/wc2.1_2.5m_tmax_2004-08.tif")
Aug04_clip <- crop(Aug04, clipper)
Aug05 <- raster("Aug/wc2.1_2.5m_tmax_2005-08.tif")
Aug05_clip <- crop(Aug05, clipper)
Aug06 <- raster("Aug/wc2.1_2.5m_tmax_2006-08.tif")
Aug06_clip <- crop(Aug06, clipper)

Aug_tmax_avg_2001_2006 <- (Aug01_clip+Aug02_clip+Aug03_clip+Aug04_clip+Aug05_clip+Aug06_clip)/6

#############################################################################

# September

Sep01 <- raster("Sep/wc2.1_2.5m_tmax_2001-09.tif")
Sep01_clip <- crop(Sep01, clipper)
Sep02 <- raster("Sep/wc2.1_2.5m_tmax_2002-09.tif")
Sep02_clip <- crop(Sep02, clipper)
Sep03 <- raster("Sep/wc2.1_2.5m_tmax_2003-09.tif")
Sep03_clip <- crop(Sep03, clipper)
Sep04 <- raster("Sep/wc2.1_2.5m_tmax_2004-09.tif")
Sep04_clip <- crop(Sep04, clipper)
Sep05 <- raster("Sep/wc2.1_2.5m_tmax_2005-09.tif")
Sep05_clip <- crop(Sep05, clipper)
Sep06 <- raster("Sep/wc2.1_2.5m_tmax_2006-09.tif")
Sep06_clip <- crop(Sep06, clipper)

Sep_tmax_avg_2001_2006 <- (Sep01_clip+Sep02_clip+Sep03_clip+Sep04_clip+Sep05_clip+Sep06_clip)/6

#############################################################################

# October

Oct01 <- raster("Oct/wc2.1_2.5m_tmax_2001-10.tif")
Oct01_clip <- crop(Oct01, clipper)
Oct02 <- raster("Oct/wc2.1_2.5m_tmax_2002-10.tif")
Oct02_clip <- crop(Oct02, clipper)
Oct03 <- raster("Oct/wc2.1_2.5m_tmax_2003-10.tif")
Oct03_clip <- crop(Oct03, clipper)
Oct04 <- raster("Oct/wc2.1_2.5m_tmax_2004-10.tif")
Oct04_clip <- crop(Oct04, clipper)
Oct05 <- raster("Oct/wc2.1_2.5m_tmax_2005-10.tif")
Oct05_clip <- crop(Oct05, clipper)
Oct06 <- raster("Oct/wc2.1_2.5m_tmax_2006-10.tif")
Oct06_clip <- crop(Oct06, clipper)

Oct_tmax_avg_2001_2006 <- (Oct01_clip+Oct02_clip+Oct03_clip+Oct04_clip+Oct05_clip+Oct06_clip)/6

#############################################################################

# November

Nov01 <- raster("Nov/wc2.1_2.5m_tmax_2001-11.tif")
Nov01_clip <- crop(Nov01, clipper)
Nov02 <- raster("Nov/wc2.1_2.5m_tmax_2002-11.tif")
Nov02_clip <- crop(Nov02, clipper)
Nov03 <- raster("Nov/wc2.1_2.5m_tmax_2003-11.tif")
Nov03_clip <- crop(Nov03, clipper)
Nov04 <- raster("Nov/wc2.1_2.5m_tmax_2004-11.tif")
Nov04_clip <- crop(Nov04, clipper)
Nov05 <- raster("Nov/wc2.1_2.5m_tmax_2005-11.tif")
Nov05_clip <- crop(Nov05, clipper)
Nov06 <- raster("Nov/wc2.1_2.5m_tmax_2006-11.tif")
Nov06_clip <- crop(Nov06, clipper)

Nov_tmax_avg_2001_2006 <- (Nov01_clip+Nov02_clip+Nov03_clip+Nov04_clip+Nov05_clip+Nov06_clip)/6

#############################################################################

# December

Dec01 <- raster("Dec/wc2.1_2.5m_tmax_2001-12.tif")
Dec01_clip <- crop(Dec01, clipper)
Dec02 <- raster("Dec/wc2.1_2.5m_tmax_2002-12.tif")
Dec02_clip <- crop(Dec02, clipper)
Dec03 <- raster("Dec/wc2.1_2.5m_tmax_2003-12.tif")
Dec03_clip <- crop(Dec03, clipper)
Dec04 <- raster("Dec/wc2.1_2.5m_tmax_2004-12.tif")
Dec04_clip <- crop(Dec04, clipper)
Dec05 <- raster("Dec/wc2.1_2.5m_tmax_2005-12.tif")
Dec05_clip <- crop(Dec05, clipper)
Dec06 <- raster("Dec/wc2.1_2.5m_tmax_2006-12.tif")
Dec06_clip <- crop(Dec06, clipper)

Dec_tmax_avg_2001_2006 <- (Dec01_clip+Dec02_clip+Dec03_clip+Dec04_clip+Dec05_clip+Dec06_clip)/6

plot(Jan_tmax_avg_2001_2006)
plot(Feb_tmax_avg_2001_2006)
plot(Mar_tmax_avg_2001_2006)
plot(Apr_tmax_avg_2001_2006)

plot(May_tmax_avg_2001_2006)
plot(Jun_tmax_avg_2001_2006)
plot(Jul_tmax_avg_2001_2006)
plot(Aug_tmax_avg_2001_2006)

plot(Sep_tmax_avg_2001_2006)
plot(Oct_tmax_avg_2001_2006)
plot(Nov_tmax_avg_2001_2006)
plot(Dec_tmax_avg_2001_2006)

#############################################################################
#############################################################################


prec_stack_2001_2006 <- stack(Jan_prec_avg_2001_2006,Feb_prec_avg_2001_2006,
                              Mar_prec_avg_2001_2006,Apr_prec_avg_2001_2006,
                              May_prec_avg_2001_2006,Jun_prec_avg_2001_2006,
                              Jul_prec_avg_2001_2006,Aug_prec_avg_2001_2006,
                              Sep_prec_avg_2001_2006,Oct_prec_avg_2001_2006,
                              Nov_prec_avg_2001_2006,Dec_prec_avg_2001_2006)

tmin_stack_2001_2006 <- stack(Jan_tmin_avg_2001_2006,Feb_tmin_avg_2001_2006,
                              Mar_tmin_avg_2001_2006,Apr_tmin_avg_2001_2006,
                              May_tmin_avg_2001_2006,Jun_tmin_avg_2001_2006,
                              Jul_tmin_avg_2001_2006,Aug_tmin_avg_2001_2006,
                              Sep_tmin_avg_2001_2006,Oct_tmin_avg_2001_2006,
                              Nov_tmin_avg_2001_2006,Dec_tmin_avg_2001_2006)

tmax_stack_2001_2006 <- stack(Jan_tmax_avg_2001_2006,Feb_tmax_avg_2001_2006,
                              Mar_tmax_avg_2001_2006,Apr_tmax_avg_2001_2006,
                              May_tmax_avg_2001_2006,Jun_tmax_avg_2001_2006,
                              Jul_tmax_avg_2001_2006,Aug_tmax_avg_2001_2006,
                              Sep_tmax_avg_2001_2006,Oct_tmax_avg_2001_2006,
                              Nov_tmax_avg_2001_2006,Dec_tmax_avg_2001_2006)


past_2001_2006_biovars <- biovars(prec_stack_2001_2006,tmin_stack_2001_2006,tmax_stack_2001_2006)

setwd("/Users/richiehodel/my_docs/mang_salt/past_layers/2001-2006_layers/")

writeRaster(past_2001_2006_biovars, filename = "past_2001_2006_bio.asc", format="ascii",bylayer=T)


#############################################################################
