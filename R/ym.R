#' Representative Dates as the first day in the period
#'
#' Represent a data as the first day of the month of an interval.
#'
#' @param x vector; values that represent months in ym form
#' @param ... arguments passed to ymd
#'
#' @details 
#' 
#' Parses a ym date string by setting the date/time to the first moment of the
#' month. If `x` is already a POSIX date, `floor_month(x)` is performed. 
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
  
  if( is.POSIXct(x) ) { 
    return( floor_month(x) )  # Don't affect already parsed values
  }  
  ymd( paste0( x, "01" ), ... )

}

