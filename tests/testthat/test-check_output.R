context("check-output") #Our test file is called test-check_output.R
library(testthat) #load testthat package
library(izmir) #load the package

test_that("get_data_from_izmir returns a data frame",{
  result <- get_data_from_izmir("asik-veysel-rekreasyon-alani-buz-pisti-kullanici-verileri")
  expect_is(result,"data.frame")
})
