% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_countyfips.R
\name{get_countyfips}
\alias{get_countyfips}
\title{County FIPS data filtered by state}
\format{
Data frame with columns
\describe{
\item{fips, county_name, county_fips, county_ns}{five-digit FIPS, county name, and county GNIS code}
\item{state_name, state_fips, state_abb}{State name, two-digit FIPS code, and postal abbreviation}
}
}
\usage{
get_countyfips(state)
}
\arguments{
\item{state}{input state name in quotes}
}
\description{
County FIPS data filtered by state
}
\examples{
get_countyfips(state = "illinois")
}
