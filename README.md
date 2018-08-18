# Geospatial Functional Data Analysis

This repository contains the datasets required to recreate the geospatial data analysis performed in my MSc dissertation at University College Dublin, completed in August 2018.
Montreal content from the 1996 Canadian census and simulation data from Wood (2017); both provided here for informational purposes only. All rights reserved to Statistics Canada and Simon Wood.

## Datasets

### Montreal

* MontrealBoundary.rds - Contains boundary data for the island of Montreal alond with a covariate indicating if the boundary region is populated or not.
* MontrealData.rds - Contains population density data for the 493 census tracts of Montreal, along with a covariate indicating predominant land usage.

### Simulations

* fs.boundary_rull.R - Contains full boundary data for fs.test() function from mgcv package.

## References
Wood, S.N. (2017) Generalized Additive Models: An Introduction with R (2nd edition). Chapman and Hall/CRC.
