# southern Benguela MEM uncertainty analysis

Workflow for Ortega-Cisneros et al., "Estimating uncertainty in climate projections of the southern Benguela marine ecosystem using a model ensemble" (submitted to Earth's Future).

Open `southern_benguela-mem-uncertainty.Rproj` and run `source("run_all.R")`. Each step renders an HTML report to outputs/reports.

| Step | Produces |
|---|---|
| scripts/01_forcing_ts.Rmd | Fig 3, forcing changes 1990-2009 vs 2080-2099 |
| scripts/02_sst_maps.Rmd | Fig 1, mean SST 1990-2009 (needs the ISIMIP3b historical thetao netCDFs and the Atlantis domain shapefile) |
| scripts/03_group_biomass.Rmd | 12 biomass indicators per model, scenario and ESM (outputs/processed/B, group_biomass.rds) |
| scripts/04_indicators.Rmd | Trends (% per century, SM table), % change 1990-2009 vs 2080-2099 (Table S3), agreement (Table 2) |
| scripts/05_change_heatmap.Rmd | Fig 4 |
| scripts/06_nmds.Rmd | Fig 5 |
| scripts/07_uncertainty_partitioning.Rmd | Fig 6 |

Inputs: data/raw/ewe (EwE biomass, t/km2, 1978-2099), data/raw/atlantis (Atlantis BiomIndx, tonnes, rows 21:130 = 1990-2099), data/raw/forcing (ESM forcing time series), data/design/Heads1_sb.csv (column design for the uncertainty partitioning). Fished runs only.

