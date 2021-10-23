
library(here)
library(sf)

## NOTE PLOS journals require base data with CC-BY compatible licensing
## I was unable to identify an R package with appropriate map data
## This data is not in the repo, but
## the shapefile used here can be downloaded from the Worldbank at:
## https://datacatalog.worldbank.org/search/dataset/0038272
## read in map data
MPD <- sf::st_read("~/Documents/WB_countries_Admin0_10m/WB_countries_Admin0_10m.shp") #core
MPD2 <- sf::st_read("~/Documents/WB_disputed_areas_Admin0_10m/WB_disputed_areas_Admin0_10m.shp") #disputed for Western Sahara etc

## common names
bnmz <- intersect(names(MPD),
                  names(MPD2))

## combine core & disputed
MPD <- rbind(MPD[,bnmz],MPD2[,bnmz])

## make more friendly variable 
MPD$iso3 <- MPD$ISO_A3_EH

## convert & add mid-coords
world <- sf::st_as_sf(MPD)
world$mid <- sf::st_centroid(world$geometry,of_largest_polygon = TRUE)

