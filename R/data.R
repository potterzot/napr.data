#' State FIPS codes.
#'
#' A data.frame containing the fips code and two-letter abbreviation for
#' states and territories in the U.S. See
#' \url{https://www.census.gov/geo/reference/county-changes.html} for changes
#' over time.
#'
#' @format A data.frame with 57 rows and 2 variables:
#' \describe{
#'   \item{st}{State abbreviation.}
#'   \item{fips}{state fips code.}
#' }
#' @source U.S. Census Bureau, available at \url{https://www.census.gov/geo/reference/codes/cou.html}.
"state_fips"

#' County FIPS codes.
#'
#' A data.frame containing the fips code for counties in the U.S. See
#' \url{https://www.census.gov/geo/reference/county-changes.html} for changes
#' over time.
#'
#' @format A data.frame with 1092 rows and 4 variables:
#' \describe{
#'   \item{state}{County name.}
#'   \item{fips}{County fips code.}
#'   \item{class}{Census fips class. H4 are currently inactive codes, all other
#'   classifications are active county equivalents. See source documentation
#'   for more information.}
#' }
#' @source U.S. Census Bureau, available at \url{https://www.census.gov/geo/reference/codes/cou.html}.
"county_fips"
