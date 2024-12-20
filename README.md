
<!-- README.md is generated from README.Rmd. Please edit that file -->

# bruneimap

<!-- badges: start -->

[![R-CMD-check](https://github.com/Bruneiverse/bruneimap/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/Bruneiverse/bruneimap/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

Provides Brunei GIS data in the form of a `sf` (simple features) object
ready for plotting and analysis in R. The smallest (areal) unit of
analysis is a “kampong” (although not all areas are actual kampongs),
which in turn is contained within mukims and districts.

## Installation

You can install the development version of bruneimap from
[GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pkg_install("propertypricebn/bruneimap")
```

## Features

There are three `sf` files contained in the package:

1.  `dis_sf` (District level boundaries)
2.  `mkm_sf` (Mukim level boundaries)
3.  `kpg_sf` (“Kampong” level boundaries)

Most likely you will want to use either the kampong level or mukim level
data.

### Data

``` r
# Load libraries
library(tidyverse)
theme_set(theme_bw())
library(bruneimap)
library(sf)

# What's in our data set?
glimpse(kpg_sf)
#> Rows: 438
#> Columns: 9
#> $ id        <dbl> 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1…
#> $ kampong   <chr> "Kg. Biang", "Kg. Amo", "Kg. Sibut", "Kg. Sumbiling Baru", "…
#> $ mukim     <chr> "Mukim Amo", "Mukim Amo", "Mukim Amo", "Mukim Amo", "Mukim A…
#> $ district  <chr> "Temburong", "Temburong", "Temburong", "Temburong", "Temburo…
#> $ geometry  <POLYGON [°]> POLYGON ((115.1546 4.66665,..., POLYGON ((115.1626 4…
#> $ X         <dbl> 115.1244, 115.1512, 115.1080, 115.1071, 115.1600, 115.1247, …
#> $ Y         <dbl> 4.666180, 4.631506, 4.611763, 4.597677, 4.574173, 4.587969, …
#> $ perimeter [m] 21056.211 [m], 38683.611 [m], 16291.051 [m], 12994.328 [m], 33…
#> $ area      [m^2] 19281117.5 [m^2], 52037879.4 [m^2], 7597654.2 [m^2], 6652565…
```

### Plots

``` r
ggplot(kpg_sf) +
  geom_sf(aes(fill = mukim), col = "gray50", alpha = 0.8) +
  geom_sf(data = mkm_sf, col = "black", lwd = 0.5, fill = NA) +
  geom_sf(data = dplyr::filter(kpg_sf, is.na(mukim)), fill = "gray70", col = "gray70") +
  theme(legend.position = "none") +
  scale_fill_viridis_d(option = "mako")
```

<img src="man/figures/README-brunei_map_plot-1.png" width="100%" />

## Acknowledgements

The Brunei map was generated from publicly available [Survey
Department](https://geoportal.survey.gov.bn/start-gp) data. The GeoJSON
files were sourced from
[thewheat/brunei_map](https://github.com/thewheat/brunei_map) GitHub
repo. It comes with a neat [web
app](http://thewheat.github.io/brunei_map/). Many thanks to these guys!

## Contributors

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->

All contributions to this project are gratefully acknowledged using the
[`allcontributors` package](https://github.com/ropensci/allcontributors)
following the [all-contributors](https://allcontributors.org)
specification. Contributions of any kind are welcome!

<table>
<tr>
<td align="center">
<a href="https://github.com/nrirdnbtrsy">
<img src="https://avatars.githubusercontent.com/u/178867095?v=4" width="100px;" alt=""/>
</a><br>
<a href="https://github.com/Bruneiverse/bruneimap/commits?author=nrirdnbtrsy">nrirdnbtrsy</a>
</td>
<td align="center">
<a href="https://github.com/haziqj">
<img src="https://avatars.githubusercontent.com/u/16189362?v=4" width="100px;" alt=""/>
</a><br>
<a href="https://github.com/Bruneiverse/bruneimap/commits?author=haziqj">haziqj</a>
</td>
<td align="center">
<a href="https://github.com/alvinbjl">
<img src="https://avatars.githubusercontent.com/u/178853609?v=4" width="100px;" alt=""/>
</a><br>
<a href="https://github.com/Bruneiverse/bruneimap/commits?author=alvinbjl">alvinbjl</a>
</td>
<td align="center">
<a href="https://github.com/Angela-29">
<img src="https://avatars.githubusercontent.com/u/178489098?v=4" width="100px;" alt=""/>
</a><br>
<a href="https://github.com/Bruneiverse/bruneimap/commits?author=Angela-29">Angela-29</a>
</td>
<td align="center">
<a href="https://github.com/SyafYus">
<img src="https://avatars.githubusercontent.com/u/178446986?v=4" width="100px;" alt=""/>
</a><br>
<a href="https://github.com/Bruneiverse/bruneimap/commits?author=SyafYus">SyafYus</a>
</td>
<td align="center">
<a href="https://github.com/Dwaaz">
<img src="https://avatars.githubusercontent.com/u/178873502?v=4" width="100px;" alt=""/>
</a><br>
<a href="https://github.com/Bruneiverse/bruneimap/commits?author=Dwaaz">Dwaaz</a>
</td>
<td align="center">
<a href="https://github.com/HafeezulRaziq">
<img src="https://avatars.githubusercontent.com/u/99826145?v=4" width="100px;" alt=""/>
</a><br>
<a href="https://github.com/Bruneiverse/bruneimap/commits?author=HafeezulRaziq">HafeezulRaziq</a>
</td>
</tr>
<tr>
<td align="center">
<a href="https://github.com/ANajwa-20">
<img src="https://avatars.githubusercontent.com/u/178689133?v=4" width="100px;" alt=""/>
</a><br>
<a href="https://github.com/Bruneiverse/bruneimap/commits?author=ANajwa-20">ANajwa-20</a>
</td>
<td align="center">
<a href="https://github.com/nswaaan">
<img src="https://avatars.githubusercontent.com/u/178871934?v=4" width="100px;" alt=""/>
</a><br>
<a href="https://github.com/Bruneiverse/bruneimap/commits?author=nswaaan">nswaaan</a>
</td>
<td align="center">
<a href="https://github.com/MrJaZzi">
<img src="https://avatars.githubusercontent.com/u/178448019?v=4" width="100px;" alt=""/>
</a><br>
<a href="https://github.com/Bruneiverse/bruneimap/commits?author=MrJaZzi">MrJaZzi</a>
</td>
<td align="center">
<a href="https://github.com/Syfii">
<img src="https://avatars.githubusercontent.com/u/178873529?v=4" width="100px;" alt=""/>
</a><br>
<a href="https://github.com/Bruneiverse/bruneimap/commits?author=Syfii">Syfii</a>
</td>
</tr>
</table>
<!-- markdownlint-enable -->
<!-- prettier-ignore-end -->
<!-- ALL-CONTRIBUTORS-LIST:END -->
