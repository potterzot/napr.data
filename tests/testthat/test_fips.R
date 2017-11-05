library(napr.data)
context("fips data")

data(state_fips)

test_that("state_fips has correct columns", {
  expect_equal(names(state_fips), c("st", "fips", "state"))
})

test_that("state_fips fips, abbreviations, and names are unique", {
  for(i in 1:3) {
    expect_equal(length(state_fips[,i]), length(unique(state_fips[,i])))
  }
})

test_that("there are no missing values", {
  expect_true(sum(is.na(state_fips)) == 0)
})

data(county_fips)

test_that("county_fips has correct columns", {
  expect_equal(names(county_fips), c("county", "fips", "class"))
})

test_that("county_fips has 5-character fips", {
  expect_true(sum(nchar(county_fips$fips) != 5) == 0)
})


