% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{county_fips}
\alias{county_fips}
\title{County FIPS codes.}
\format{A data.frame with 1092 rows and 4 variables:
\describe{
  \item{state}{County name.}
  \item{fips}{County fips code.}
  \item{class}{Census fips class. H4 are currently inactive codes, all other
  classifications are active county equivalents. See source documentation
  for more information.}
}}
\source{
U.S. Census Bureau, available at \url{https://www.census.gov/geo/reference/codes/cou.html}.
}
\usage{
county_fips
}
\description{
A data.frame containing the fips code for counties in the U.S. See
\url{https://www.census.gov/geo/reference/county-changes.html} for changes
over time.
}
\keyword{datasets}

