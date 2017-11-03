### Download and process FIPS codes from the U.S. Census.

print("Help")
# Libraries --------------------------------------------------------------------
library(dplyr)
library(tidyr)

# Download the data ------------------------------------------------------------
file_url <- "https://www2.census.gov/geo/docs/reference/codes/files/national_county.txt"
filename <- "data-raw/fips/national_county.txt"

download.file(file_url, filename)

# Read the file and save it as package datasets state_fips and county_fips. ----
print(filename)
fips_cols <- c("st", "fips_st", "fips_cty", "county", "fips_cl")
cou <- readr::read_csv(filename, col_names = fips_cols)

# State fips dataset
state_fips <- cou %>%
  select(st, fips_st) %>%
  distinct() %>%
  rename(fips = fips_st)

devtools::use_data(state_fips, overwrite = TRUE)

# County fips dataset
county_fips <- cou %>%
  mutate(fips = paste0(fips_st, fips_cty)) %>%
  select(county, fips, fips_cl) %>%
  distinct() %>%
  rename(class = fips_cl)

county_fips$county <- sapply(cou$county, function(i) {
  strsplit(i, " County")[[1]]
})

devtools::use_data(county_fips, overwrite = TRUE)
