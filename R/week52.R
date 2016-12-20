#' week52
#'
#' Get/Set week of a date-time with consistent 52 week years
#'
#' @param x a data-time object; Must be a POSIXct, POSIXlt, Date, chron,
#' yearmon, yearqtr, zoo, zooreg, timeDate, xts, its, ti, jul, timeSeries, or fts object.
#'
#' @details
#'
#' Same as week, but maps 53 -> 52 for libraries that require a consistent
#' measure for weeks.
#'
#' @return
#'
#'  integer
#'
#' @examples
#'   x <- seq( ymd(20011231), ymd(20301231), "year" )
#'   lubridate::week(x)
#'   week52(x)
#'
#' @export

week52 <- function(x) {

  ret <- week(x)
  ret[ ret == 53 ] <- 52

  return(ret)

}
