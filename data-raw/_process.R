## code to prepare `DATASET` dataset goes here

library(tidyverse)

# county fips ----

countyfips <- readr::read_csv("data-raw/countyfips.csv") |>
  dplyr::mutate(
    state_fips = sprintf("%02.f", state_fips),
    county_fips = sprintf("%03.f", county_fips),
    fips = str_c(state_fips, county_fips),
    county_name = str_to_title(county_name),
    state_name = case_when(
      state_abb == "AL" ~ "Alabama",
      state_abb == "AK" ~ "Alaska",
      state_abb == "AZ" ~ "Arizona",
      state_abb == "AR" ~ "Arkansas",
      state_abb == "CA" ~ "California",
      state_abb == "CO" ~ "Colorado",
      state_abb == "CT" ~ "Connecticut",
      state_abb == "DC" ~ "District of Columbia",
      state_abb == "DE" ~ "Delaware",
      state_abb == "FL" ~ "Florida",
      state_abb == "GA" ~ "Georgia",
      state_abb == "HI" ~ "Hawaii",
      state_abb == "ID" ~ "Idaho",
      state_abb == "IL" ~ "Illinois",
      state_abb == "IN" ~ "Indiana",
      state_abb == "IA" ~ "Iowa",
      state_abb == "KS" ~ "Kansas",
      state_abb == "KY" ~ "Kentucky",
      state_abb == "LA" ~ "Louisiana",
      state_abb == "ME" ~ "Maine",
      state_abb == "MD" ~ "Maryland",
      state_abb == "MA" ~ "Massachusetts",
      state_abb == "MI" ~ "Michigan",
      state_abb == "MN" ~ "Minnesota",
      state_abb == "MS" ~ "Mississippi",
      state_abb == "MO" ~ "Missouri",
      state_abb == "MT" ~ "Montana",
      state_abb == "NE" ~ "Nebraska",
      state_abb == "NV" ~ "Nevada",
      state_abb == "NH" ~ "New Hampshire",
      state_abb == "NJ" ~ "New Jersey",
      state_abb == "NM" ~ "New Mexcio",
      state_abb == "NY" ~ "New York",
      state_abb == "NC" ~ "North Carolina",
      state_abb == "ND" ~ "North Dakota",
      state_abb == "OH" ~ "Ohio",
      state_abb == "OK" ~ "Oklahoma",
      state_abb == "OR" ~ "Oregon",
      state_abb == "PA" ~ "Pennsylvania",
      state_abb == "RI" ~ "Rhode Island",
      state_abb == "SC" ~ "South Carolina",
      state_abb == "SD" ~ "South Dakota",
      state_abb == "TN" ~ "Tennessee",
      state_abb == "TX" ~ "Texas",
      state_abb == "UT" ~ "Utah",
      state_abb == "VT" ~ "Vermont",
      state_abb == "VA" ~ "Virgina",
      state_abb == "WA" ~ "Washington",
      state_abb == "WV" ~ "West Virginia",
      state_abb == "WI" ~ "Wisconsin",
      state_abb == "WY" ~ "Wyoming",
      state_abb == "AS" ~ "American Samoa",
      state_abb == "GU" ~ "Guam",
      state_abb == "MP" ~ "Northern Mariana Islands",
      state_abb == "PR" ~ "Puerto Rico",
      state_abb == "UM" ~ "U.S. Minor Outlying Islands",
      state_abb == "VI" ~ "U.S. Virgin Islands",
    )
  ) |>
  relocate(state_name, .before = state_abb)

usethis::use_data(countyfips, overwrite = TRUE)

countyfips_sample <- countyfips |>
  slice_sample(n = 15)

usethis::use_data(countyfips_sample, overwrite = TRUE)
