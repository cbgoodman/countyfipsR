# countyfipsR

`countyfipsR` is a simple R crosswalk package for adding various county-level identifiers (name, FIPS, GNIS codes) that may be missing from your dataset. The purpose of this program is to facilitate merging datasets that do not share a common identifier.

## Installation
You can install the latest version of `countyfipsR` from GitHub:
```R
# install.packages("devtools")
devtools::install_github("cbgoodman/countyfipsR")
```

## Usage

The `get_countyfips()` function can be used to call a tibble filtered by specified state or territory.

```R
library(countyfipsR)

dataIL <- get_countyfips(state = "illinois")

head(dataIL)

# A tibble: 6 × 7
  fips  county_name      state_name state_abb state_fips county_fips county_ns
  <chr> <chr>            <chr>      <chr>     <chr>      <chr>           <dbl>
1 17001 Adams County     Illinois   IL        17         001            424202
2 17003 Alexander County Illinois   IL        17         003            424203
3 17005 Bond County      Illinois   IL        17         005            424204
4 17007 Boone County     Illinois   IL        17         007            424205
5 17009 Brown County     Illinois   IL        17         009            424206
6 17011 Bureau County    Illinois   IL        17         011            424207
```
