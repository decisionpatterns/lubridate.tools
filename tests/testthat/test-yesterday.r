library(testthat)

context( 'yesterday, now, here, today, tomorrow')

test_that( "Reference datetimes", {
  expect_is( yesterday(), "POSIXct" )
  expect_is( now(), "POSIXct" )
  expect_is( today(), "Date" )
  expect_is( tomorrow(), "POSIXct" )
})
