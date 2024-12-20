## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(tidyverse)
library(bruneimap)
library(sf)

## -----------------------------------------------------------------------------
glimpse(masjid)

## -----------------------------------------------------------------------------
ggplot() +
  geom_sf(data = kpg_sf, fill = NA) +
  geom_point(data = masjid, aes(latitude, longitude), inherit.aes = FALSE) +
  theme_bw()

