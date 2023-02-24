#context("check-output") #Our test file is called test-check_output.R
library(testthat) #load testthat package
library(izmir) #load the package

test_that("encoding_data returns a list",{
  df<-data.frame(name = c("Izmir","Buyuksehir"))
  result<-encoding_data(df)
  expect_type(result,"list")
})
