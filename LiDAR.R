#install.packages('rayshader')

library(lidR) # for working with las/laz file
library(rgl) # for interactive plots
library(rayshader) # for 3D visualization
library(sf)
library(raster)

#path
setwd('F:/RStudio/LiDAR')
# read laz file 
laz = readLAS('Point_Cloud_Q240_7_runs_public.laz')
summary(laz)
las_check(laz)



# plotting point cloud
#plot(laz, bg = 'white')


# create DTM
dtm = grid_terrain(laz, algorithm = knnidw(k = 6L, p = 2))
plot(dtm, main = 'DTM', col= height.colors(50))


#hillshades

slope_dtm =terrain(dtm, opt = 'slope')
aspect_dtm = terrain(dtm, opt = 'aspect')
hillS_dtm = hillShade(slope_dtm, aspect_dtm, angle = 5, direction = 270)

#plot
plot(hillS_dtm, main = 'Hillshade DTM', col = gray.colors(100, start = 0, end = 1))


#DSM 
dsm = grid_canopy(laz, 0.5, pitfree())
plot(dsm)

#hillshases
slope_dsm = terrain(dsm, opt = 'slope')
aspect_dsm = terrain(dsm, opt = 'aspect')
hill_dsm = hillShade(slope_dsm, aspect_dsm, angle = 40, direction = 270)
plot(hill_dsm, main = 'Hillshade DSM', col = grey.colors(100, start = 0, end = 1))
par(mfrow = c(1,2))
