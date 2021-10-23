# wbmapdata

An R package of compiled World Bank shapefiles for world maps.

## Why?

Some journals (e.g. PLoS) require base map data that has an unambiguous CC-BY-4.0 license. 

At the same time, many analysts want shapefiles with up-to-date territory boundaries (provded as `world` as an `sf` object), [ISO3 codes](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3) (provided as `iso3` in `world`) to link in country data, and county barycentres for plotting points (provided as `mid` in `world`).

The underlying data here is taken from [World Bank data](https://datacatalog.worldbank.org/search/dataset/0038272), which does have a CC-BY license. Disputed territories such as Western Sahara are included.

## Installation

This can be installed using devtools with

```devtools::install_github('petedodd/wbmapdata')```

or similar from within R.

## License

This work is licensed under a Creative Commons Attribution 4.0 International License

http://creativecommons.org/licenses/by/4.0/

![http://creativecommons.org/licenses/by/4.0/](https://i.creativecommons.org/l/by/4.0/88x31.png)



