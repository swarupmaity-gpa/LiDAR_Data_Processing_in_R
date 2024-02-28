# LiDAR Data Processing in R with lidR and rayshader
This repository contains R code for processing LiDAR (Light Detection and Ranging) data using the lidR and rayshader packages. LiDAR data is a valuable source of information for generating detailed terrain models and visualizing landscapes in three dimensions.

# Requirements
R (version 3.6.0 or higher)
R packages: lidR, rgl, rayshader, sf, raster

# Usage
Clone or download this repository to your local machine.
Ensure you have all the required R packages installed by running install.packages(c('lidR', 'rgl', 'rayshader', 'sf', 'raster')).
Set the working directory to the location of the LiDAR data files.
Execute the R script lidar_processing.R to process the LiDAR data and generate visualizations.

# Contents
lidar_processing.R: R script for processing LiDAR data, including reading LAS/LAZ files, generating Digital Terrain Models (DTM) and Digital Surface Models (DSM), and creating hillshade representations.
Point_Cloud_Q240_7_runs_public.laz: Sample LAS/LAZ file containing LiDAR point cloud data.
Acknowledgements
The LiDAR data used in this project is provided by https://quantum-systems.com/qube-240-2/
License
This project is licensed under the MIT License.

