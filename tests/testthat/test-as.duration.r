library(testthat)

context( 'as.duration')

test_that( "as.duraction", {
  expect_is( as.duration("10 seconds"), "Duration" )

  units <- c( 'seconds', 'minutes', 'hours', 'days', 'weeks', 'months', 'years')
  for( unit in units )
    expect_equal( as.duration( paste( 2, unit ) ), duration( 2, units=unit) )

  units <- c( 'second', 'minute', 'hour', 'day', 'week', 'month', 'year')
  for( unit in units )
    expect_equal( as.duration( paste( 2, unit ) ), duration( 2, units=unit) )
})
