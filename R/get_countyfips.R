#' County FIPS data filtered by state
#'
#' @param state input state name in quotes
#'
#' @format Data frame with columns
#' \describe{
#' \item{fips, county_name, county_fips, county_ns}{five-digit FIPS, county name, and county GNIS code}
#' \item{state_name, state_fips, state_abb}{State name, two-digit FIPS code, and postal abbreviation}
#' }
#' @export
#'
#' @examples
#' get_countyfips(state = "illinois")
get_countyfips <- function(state){

    byState <- stringr::str_to_title({{state}})

    dplyr::filter(countyfipsR::countyfips, countyfips$state_name == byState)

}
