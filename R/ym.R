#' Representative Dates as the first day in the period
#'
#' Represent a data as the first day of the month of an interval.
#'
#' @param x vector; values that represent months in ym form
#' @param ... arguments passed to ymd
#'
#' @return
#'   POSIXct
#'
#' @seealso
#'   \code{\link[lubridate]{yday}}
#' @examples
#'   months <- c('200101','200102', '200103' )
#'   ym(months)
#'
#' @export

ym <- function(x, ...) {
  ymd( paste0( x, "01" ), ... )
}

