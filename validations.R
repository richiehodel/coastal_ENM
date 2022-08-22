
#install.packages("devtools")
library(devtools)
#install_github("danlwarren/ENMTools")
library(ENMTools)
#install.packages("dismo")
library(dismo)
#install.packages("raster")
library(raster)
#install.packages('maxnet')
library('maxnet')

setwd("") # adjust as needed

# extent for NE Florida validation region
e <- extent(-82, -80, 28, 31)

# extent for Florida validation region
e <- extent(-87, -79, 24, 31)

####################
batis0_now <- raster("Batis_maritima_0_thresholded.asc")
batis1_now <- raster("Batis_maritima_1_thresholded.asc")
batis2_now <- raster("Batis_maritima_2_thresholded.asc")
batis3_now <- raster("Batis_maritima_3_thresholded.asc")
batis4_now <- raster("Batis_maritima_4_thresholded.asc")

batis_now_avg <- (batis0_now+batis1_now+batis2_now+batis3_now+batis4_now)/5
rc2 <- crop(batis_now_avg, e)	
plot(rc2)
cellStats(rc2, sum) 
values(batis_now_avg)[values(batis_now_avg) > 0] = 1
rc3 <- crop(batis_now_avg, e)	
plot(rc3)
cellStats(rc3, sum) 


aviger0_now <- raster("Avicennia_germinans_0_thresholded.asc")
aviger1_now <- raster("Avicennia_germinans_1_thresholded.asc")
aviger2_now <- raster("Avicennia_germinans_2_thresholded.asc")
aviger3_now <- raster("Avicennia_germinans_3_thresholded.asc")
aviger4_now <- raster("Avicennia_germinans_4_thresholded.asc")

aviger_now_avg <- (aviger0_now+aviger1_now+aviger2_now+aviger3_now+aviger4_now)/5
rc2 <- crop(aviger_now_avg, e)	
plot(rc2)
cellStats(rc2, sum) 

values(aviger_now_avg)[values(aviger_now_avg) > 0] = 1
rc3 <- crop(aviger_now_avg, e)	
plot(rc3)
cellStats(rc3, sum) 


rhiman0_now <- raster("Rhizophora_mangle_0_thresholded.asc")
rhiman1_now <- raster("Rhizophora_mangle_1_thresholded.asc")
rhiman2_now <- raster("Rhizophora_mangle_2_thresholded.asc")
rhiman3_now <- raster("Rhizophora_mangle_3_thresholded.asc")
rhiman4_now <- raster("Rhizophora_mangle_4_thresholded.asc")

rhiman_now_avg <- (rhiman0_now+rhiman1_now+rhiman2_now+rhiman3_now+rhiman4_now)/5
rc2 <- crop(rhiman_now_avg, e)	
plot(rc2)
cellStats(rc2, sum) 

values(rhiman_now_avg)[values(rhiman_now_avg) > 0] = 1
rc3 <- crop(rhiman_now_avg, e)	
plot(rc3)
cellStats(rc3, sum) 


conere0_now <- raster("Conocarpus_erectus_0_thresholded.asc")
conere1_now <- raster("Conocarpus_erectus_1_thresholded.asc")
conere2_now <- raster("Conocarpus_erectus_2_thresholded.asc")
conere3_now <- raster("Conocarpus_erectus_3_thresholded.asc")
conere4_now <- raster("Conocarpus_erectus_4_thresholded.asc")

conere_now_avg <- (conere0_now+conere1_now+conere2_now+conere3_now+conere4_now)/5
rc2 <- crop(conere_now_avg, e)	
plot(rc2)
cellStats(rc2, sum) 


values(conere_now_avg)[values(conere_now_avg) > 0] = 1
rc3 <- crop(conere_now_avg, e)	
plot(rc3)
cellStats(rc3, sum) 


lagrac0_now <- raster("Laguncularia_racemosa_0_thresholded.asc")
lagrac1_now <- raster("Laguncularia_racemosa_1_thresholded.asc")
lagrac2_now <- raster("Laguncularia_racemosa_2_thresholded.asc")
lagrac3_now <- raster("Laguncularia_racemosa_3_thresholded.asc")
lagrac4_now <- raster("Laguncularia_racemosa_4_thresholded.asc")

lagrac_now_avg <- (lagrac0_now+lagrac1_now+lagrac2_now+lagrac3_now+lagrac4_now)/5
rc2 <- crop(lagrac_now_avg, e)	
plot(rc2)
cellStats(rc2, sum) 

values(lagrac_now_avg)[values(lagrac_now_avg) > 0] = 1
rc3 <- crop(lagrac_now_avg, e)	
plot(rc3)
cellStats(rc3, sum) 

sesuv0_now <- raster("Sesuvium_portulacastrum_0_thresholded.asc")
sesuv1_now <- raster("Sesuvium_portulacastrum_1_thresholded.asc")
sesuv2_now <- raster("Sesuvium_portulacastrum_2_thresholded.asc")
sesuv3_now <- raster("Sesuvium_portulacastrum_3_thresholded.asc")
sesuv4_now <- raster("Sesuvium_portulacastrum_4_thresholded.asc")

sesuv_now_avg <- (sesuv0_now+sesuv1_now+sesuv2_now+sesuv3_now+sesuv4_now)/5
rc2 <- crop(sesuv_now_avg, e)	
plot(rc2)
cellStats(rc2, sum) 

values(sesuv_now_avg)[values(sesuv_now_avg) > 0] = 1
rc3 <- crop(sesuv_now_avg, e)	
plot(rc3)
cellStats(rc3, sum) 

sparta0_now <- raster("Spartina_alterniflora_0_thresholded.asc")
sparta1_now <- raster("Spartina_alterniflora_1_thresholded.asc")
sparta2_now <- raster("Spartina_alterniflora_2_thresholded.asc")
sparta3_now <- raster("Spartina_alterniflora_3_thresholded.asc")
sparta4_now <- raster("Spartina_alterniflora_4_thresholded.asc")

sparta_now_avg <- (sparta0_now+sparta1_now+sparta2_now+sparta3_now+sparta4_now)/5
rc2 <- crop(sparta_now_avg, e)	
plot(rc2)
cellStats(rc2, sum) 

values(sparta_now_avg)[values(sparta_now_avg) > 0] = 1
rc3 <- crop(sparta_now_avg, e)	
plot(rc3)
cellStats(rc3, sum) 

sporob0_now <- raster("Sporobolus_virginica_0_thresholded.asc")
sporob1_now <- raster("Sporobolus_virginica_1_thresholded.asc")
sporob2_now <- raster("Sporobolus_virginica_2_thresholded.asc")
sporob3_now <- raster("Sporobolus_virginica_3_thresholded.asc")
sporob4_now <- raster("Sporobolus_virginica_4_thresholded.asc")

sporob_now_avg <- (sporob0_now+sporob1_now+sporob2_now+sporob3_now+sporob4_now)/5
rc2 <- crop(sporob_now_avg, e)	
plot(rc2)
cellStats(rc2, sum) 

values(sporob_now_avg)[values(sporob_now_avg) > 0] = 1
rc3 <- crop(sporob_now_avg, e)	
plot(rc3)
cellStats(rc3, sum) 

####
##  
####

# check in the past -- 1980s
setwd("")


batis0 <- raster("Batis_maritima_0_1980s_thresholded.asc")
batis1 <- raster("Batis_maritima_1_1980s_thresholded.asc")
batis2 <- raster("Batis_maritima_2_1980s_thresholded.asc")
batis3 <- raster("Batis_maritima_3_1980s_thresholded.asc")
batis4 <- raster("Batis_maritima_4_1980s_thresholded.asc")

batis_old_avg <- (batis0+batis1+batis2+batis3+batis4)/5
rc1 <- crop(batis_old_avg, e)	
plot(rc1)
cellStats(rc1, sum) 

values(batis_old_avg)[values(batis_old_avg) > 0] = 1
rc3 <- crop(batis_old_avg, e)	
plot(rc3)
cellStats(rc3, sum) 


aviger0 <- raster("Avicennia_germinans_0_1980s_thresholded.asc")
aviger1 <- raster("Avicennia_germinans_1_1980s_thresholded.asc")
aviger2 <- raster("Avicennia_germinans_2_1980s_thresholded.asc")
aviger3 <- raster("Avicennia_germinans_3_1980s_thresholded.asc")
aviger4 <- raster("Avicennia_germinans_4_1980s_thresholded.asc")

aviger_old_avg <- (aviger0+aviger1+aviger2+aviger3+aviger4)/5
rc1 <- crop(aviger_old_avg, e)	
plot(rc1)
cellStats(rc1, sum) 
values(aviger_old_avg)[values(aviger_old_avg) > 0] = 1
rc3 <- crop(aviger_old_avg, e)	
plot(rc3)
cellStats(rc3, sum) 

rhiman0 <- raster("Rhizophora_mangle_0_1980s_thresholded.asc")
rhiman1 <- raster("Rhizophora_mangle_1_1980s_thresholded.asc")
rhiman2 <- raster("Rhizophora_mangle_2_1980s_thresholded.asc")
rhiman3 <- raster("Rhizophora_mangle_3_1980s_thresholded.asc")
rhiman4 <- raster("Rhizophora_mangle_4_1980s_thresholded.asc")

rhiman_old_avg <- (rhiman0+rhiman1+rhiman2+rhiman3+rhiman4)/5
rc1 <- crop(rhiman_old_avg, e)	
plot(rc1)
cellStats(rc1, sum) 
values(rhiman_old_avg)[values(rhiman_old_avg) > 0] = 1
rc3 <- crop(rhiman_old_avg, e)	
plot(rc3)
cellStats(rc3, sum) 

conere0 <- raster("Conocarpus_erectus_0_1980s_thresholded.asc")
conere1 <- raster("Conocarpus_erectus_1_1980s_thresholded.asc")
conere2 <- raster("Conocarpus_erectus_2_1980s_thresholded.asc")
conere3 <- raster("Conocarpus_erectus_3_1980s_thresholded.asc")
conere4 <- raster("Conocarpus_erectus_4_1980s_thresholded.asc")

conere_old_avg <- (conere0+conere1+conere2+conere3+conere4)/5
rc1 <- crop(conere_old_avg, e)	
plot(rc1)
cellStats(rc1, sum) 
values(conere_old_avg)[values(conere_old_avg) > 0] = 1
rc3 <- crop(conere_old_avg, e)	
plot(rc3)
cellStats(rc3, sum) 

lagrac0 <- raster("Laguncularia_racemosa_0_1980s_thresholded.asc")
lagrac1 <- raster("Laguncularia_racemosa_1_1980s_thresholded.asc")
lagrac2 <- raster("Laguncularia_racemosa_2_1980s_thresholded.asc")
lagrac3 <- raster("Laguncularia_racemosa_3_1980s_thresholded.asc")
lagrac4 <- raster("Laguncularia_racemosa_4_1980s_thresholded.asc")

lagrac_old_avg <- (lagrac0+lagrac1+lagrac2+lagrac3+lagrac4)/5
rc1 <- crop(lagrac_old_avg, e)	
plot(rc1)
cellStats(rc1, sum) 
values(lagrac_old_avg)[values(lagrac_old_avg) > 0] = 1
rc3 <- crop(lagrac_old_avg, e)	
plot(rc3)
cellStats(rc3, sum) 


sesuv0 <- raster("Sesuvium_portulacastrum_0_1980s_thresholded.asc")
sesuv1 <- raster("Sesuvium_portulacastrum_1_1980s_thresholded.asc")
sesuv2 <- raster("Sesuvium_portulacastrum_2_1980s_thresholded.asc")
sesuv3 <- raster("Sesuvium_portulacastrum_3_1980s_thresholded.asc")
sesuv4 <- raster("Sesuvium_portulacastrum_4_1980s_thresholded.asc")

sesuv_old_avg <- (sesuv0+sesuv1+sesuv2+sesuv3+sesuv4)/5
rc1 <- crop(sesuv_old_avg, e)	
plot(rc1)
cellStats(rc1, sum) 
values(sesuv_old_avg)[values(sesuv_old_avg) > 0] = 1
rc3 <- crop(sesuv_old_avg, e)	
plot(rc3)
cellStats(rc3, sum) 

sparta0 <- raster("Spartina_alterniflora_0_1980s_thresholded.asc")
sparta1 <- raster("Spartina_alterniflora_1_1980s_thresholded.asc")
sparta2 <- raster("Spartina_alterniflora_2_1980s_thresholded.asc")
sparta3 <- raster("Spartina_alterniflora_3_1980s_thresholded.asc")
sparta4 <- raster("Spartina_alterniflora_4_1980s_thresholded.asc")

sparta_old_avg <- (sparta0+sparta1+sparta2+sparta3+sparta4)/5
rc1 <- crop(sparta_old_avg, e)	
plot(rc1)
cellStats(rc1, sum) 
values(sparta_old_avg)[values(sparta_old_avg) > 0] = 1
rc3 <- crop(sparta_old_avg, e)	
plot(rc3)
cellStats(rc3, sum) 

sporob0 <- raster("Sporobolus_virginica_0_1980s_thresholded.asc")
sporob1 <- raster("Sporobolus_virginica_1_1980s_thresholded.asc")
sporob2 <- raster("Sporobolus_virginica_2_1980s_thresholded.asc")
sporob3 <- raster("Sporobolus_virginica_3_1980s_thresholded.asc")
sporob4 <- raster("Sporobolus_virginica_4_1980s_thresholded.asc")

sporob_old_avg <- (sporob0+sporob1+sporob2+sporob3+sporob4)/5
rc1 <- crop(sporob_old_avg, e)	
plot(rc1)
cellStats(rc1, sum) 
values(sporob_old_avg)[values(sporob_old_avg) > 0] = 1
rc3 <- crop(sporob_old_avg, e)	
plot(rc3)
cellStats(rc3, sum) 

####
##  
####

# check in the past -- 2000s
setwd("")

batis0 <- raster("Batis_maritima_0_2000s_thresholded.asc")
batis1 <- raster("Batis_maritima_1_2000s_thresholded.asc")
batis2 <- raster("Batis_maritima_2_2000s_thresholded.asc")
batis3 <- raster("Batis_maritima_3_2000s_thresholded.asc")
batis4 <- raster("Batis_maritima_4_2000s_thresholded.asc")

batis_old_avg <- (batis0+batis1+batis2+batis3+batis4)/5
rc1 <- crop(batis_old_avg, e)	
plot(rc1)
cellStats(rc1, sum) 
values(batis_old_avg)[values(batis_old_avg) > 0] = 1
rc3 <- crop(batis_old_avg, e)	
plot(rc3)
cellStats(rc3, sum)  

aviger0 <- raster("Avicennia_germinans_0_2000s_thresholded.asc")
aviger1 <- raster("Avicennia_germinans_1_2000s_thresholded.asc")
aviger2 <- raster("Avicennia_germinans_2_2000s_thresholded.asc")
aviger3 <- raster("Avicennia_germinans_3_2000s_thresholded.asc")
aviger4 <- raster("Avicennia_germinans_4_2000s_thresholded.asc")

aviger_old_avg <- (aviger0+aviger1+aviger2+aviger3+aviger4)/5
rc1 <- crop(aviger_old_avg, e)	
plot(rc1)
cellStats(rc1, sum) 
values(aviger_old_avg)[values(aviger_old_avg) > 0] = 1
rc3 <- crop(aviger_old_avg, e)	
plot(rc3)
cellStats(rc3, sum) 


rhiman0 <- raster("Rhizophora_mangle_0_2000s_thresholded.asc")
rhiman1 <- raster("Rhizophora_mangle_1_2000s_thresholded.asc")
rhiman2 <- raster("Rhizophora_mangle_2_2000s_thresholded.asc")
rhiman3 <- raster("Rhizophora_mangle_3_2000s_thresholded.asc")
rhiman4 <- raster("Rhizophora_mangle_4_2000s_thresholded.asc")

rhiman_old_avg <- (rhiman0+rhiman1+rhiman2+rhiman3+rhiman4)/5
rc1 <- crop(rhiman_old_avg, e)	
plot(rc1)
cellStats(rc1, sum) 
values(rhiman_old_avg)[values(rhiman_old_avg) > 0] = 1
rc3 <- crop(rhiman_old_avg, e)	
plot(rc3)
cellStats(rc3, sum) 


conere0 <- raster("Conocarpus_erectus_0_2000s_thresholded.asc")
conere1 <- raster("Conocarpus_erectus_1_2000s_thresholded.asc")
conere2 <- raster("Conocarpus_erectus_2_2000s_thresholded.asc")
conere3 <- raster("Conocarpus_erectus_3_2000s_thresholded.asc")
conere4 <- raster("Conocarpus_erectus_4_2000s_thresholded.asc")

conere_old_avg <- (conere0+conere1+conere2+conere3+conere4)/5
rc1 <- crop(conere_old_avg, e)	
plot(rc1)
cellStats(rc1, sum) 
values(conere_old_avg)[values(conere_old_avg) > 0] = 1
rc3 <- crop(conere_old_avg, e)	
plot(rc3)
cellStats(rc3, sum) 




lagrac0 <- raster("Laguncularia_racemosa_0_2000s_thresholded.asc")
lagrac1 <- raster("Laguncularia_racemosa_1_2000s_thresholded.asc")
lagrac2 <- raster("Laguncularia_racemosa_2_2000s_thresholded.asc")
lagrac3 <- raster("Laguncularia_racemosa_3_2000s_thresholded.asc")
lagrac4 <- raster("Laguncularia_racemosa_4_2000s_thresholded.asc")

lagrac_old_avg <- (lagrac0+lagrac1+lagrac2+lagrac3+lagrac4)/5
rc1 <- crop(lagrac_old_avg, e)	
plot(rc1)
cellStats(rc1, sum) 

values(lagrac_old_avg)[values(lagrac_old_avg) > 0] = 1
rc3 <- crop(lagrac_old_avg, e)	
plot(rc3)
cellStats(rc3, sum) 



sesuv0 <- raster("Sesuvium_portulacastrum_0_2000s_thresholded.asc")
sesuv1 <- raster("Sesuvium_portulacastrum_1_2000s_thresholded.asc")
sesuv2 <- raster("Sesuvium_portulacastrum_2_2000s_thresholded.asc")
sesuv3 <- raster("Sesuvium_portulacastrum_3_2000s_thresholded.asc")
sesuv4 <- raster("Sesuvium_portulacastrum_4_2000s_thresholded.asc")

sesuv_old_avg <- (sesuv0+sesuv1+sesuv2+sesuv3+sesuv4)/5
rc1 <- crop(sesuv_old_avg, e)	
plot(rc1)
cellStats(rc1, sum) 
values(sesuv_old_avg)[values(sesuv_old_avg) > 0] = 1
rc3 <- crop(sesuv_old_avg, e)	
plot(rc3)
cellStats(rc3, sum) 



sparta0 <- raster("Spartina_alterniflora_0_2000s_thresholded.asc")
sparta1 <- raster("Spartina_alterniflora_1_2000s_thresholded.asc")
sparta2 <- raster("Spartina_alterniflora_2_2000s_thresholded.asc")
sparta3 <- raster("Spartina_alterniflora_3_2000s_thresholded.asc")
sparta4 <- raster("Spartina_alterniflora_4_2000s_thresholded.asc")

sparta_old_avg <- (sparta0+sparta1+sparta2+sparta3+sparta4)/5
rc1 <- crop(sparta_old_avg, e)	
plot(rc1)
cellStats(rc1, sum) 
values(sparta_old_avg)[values(sparta_old_avg) > 0] = 1
rc3 <- crop(sparta_old_avg, e)	
plot(rc3)
cellStats(rc3, sum) 



sporob0 <- raster("Sporobolus_virginica_0_2000s_thresholded.asc")
sporob1 <- raster("Sporobolus_virginica_1_2000s_thresholded.asc")
sporob2 <- raster("Sporobolus_virginica_2_2000s_thresholded.asc")
sporob3 <- raster("Sporobolus_virginica_3_2000s_thresholded.asc")
sporob4 <- raster("Sporobolus_virginica_4_2000s_thresholded.asc")

sporob_old_avg <- (sporob0+sporob1+sporob2+sporob3+sporob4)/5
rc1 <- crop(sporob_old_avg, e)	
plot(rc1)
cellStats(rc1, sum) 
values(sporob_old_avg)[values(sporob_old_avg) > 0] = 1
rc3 <- crop(sporob_old_avg, e)	
plot(rc3)
cellStats(rc3, sum) 

####################
