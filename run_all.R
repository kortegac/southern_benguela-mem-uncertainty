# run_all.R: runs the workflow in order. Open the .Rproj first.
# HTML reports go to outputs/reports.
library(rmarkdown)
steps <- c("scripts/01_forcing_ts.Rmd",
           "scripts/02_sst_maps.Rmd",   # needs the ISIMIP3b netCDF files and the domain shapefile, paths set inside
           "scripts/03_group_biomass.Rmd",
           "scripts/04_indicators.Rmd",
           "scripts/05_change_heatmap.Rmd",
           "scripts/06_nmds.Rmd",
           "scripts/07_uncertainty_partitioning.Rmd")
for (f in steps) {
  message("---- ", f)
  render(f, knit_root_dir = getwd(), output_dir = "outputs/reports", quiet = TRUE)
}
