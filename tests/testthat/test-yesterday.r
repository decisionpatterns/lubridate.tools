library(testthat)

expect_is( yesterday(), "POSIXct" )
expect_is( now(), "POSIXct" )
expect_is( here(), "POSIXct" )
expect_is( today(), "Date" )
expect_is( tomorrow(), "POSIXct" )
