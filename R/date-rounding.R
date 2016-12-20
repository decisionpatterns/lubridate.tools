#' Date rounding
#'
#' Function to round dates to various units
#'
#' The 'date'-ify functions round each date down to the beginning of that
#' period using the \code{\link{floor_date}} function. This
#' allows the continued use of date functions.
#'
#' @param x vector of date time objects
#' @param ... arguments passed to other functions
#'
#' @details
#'
#' \code{floor_X} functions round to the minimum and amximum of the interval
#' respectively.  They are convenience
#' functions for \code{floor_date(x, unit='X')}.
#'
#' \code{Xify} functions are synonyms for \code{floor_X}.
#'
#' Functions denoted \code{week52} normalize the number of weeks in year to 52
#' by pushing any days in week 53 into the 52nd week. Note, isoweek functions do
#' not align nicely to year boundaries.
#'
#'
#'
#' @seealso
#'   \code{\link[lubridate]{floor_date}},
#'
#'
#' @note
#' TODO:
#'   - parse from character
#'
#' @rdname date-rounding
#' @import lubridate
#' @export
dayify <- function(x) lubridate::floor_date( x, unit="day" )

#' @export
#' @rdname date-rounding
weekify <- function(x) lubridate::floor_date( x, unit="week")

#' @examples
#'   x <- seq( ymd(20011231), ymd(20301231), "year" )
#'   lubridate::week(x)
#'   week52ify(x)
#'   week( week52ify(x) )
#'
#' @export
#' @rdname date-rounding
week52ify <- function(x) {
  ret <- lubridate::floor_date( x, unit="week")
  ret[ week(ret) == 53 ] <- ret[ week(ret) == 53 ] - ddays(7)
  ret
}


#' @examples
#'   x <- seq( ymd(20011231), ymd(20301231), "year" )
#'   lubridate::isoweek(x)
#'   isoweek52ify(x)
#'   isoweek( isoweek52ify(x) )
#'
#' @export
#' @rdname date-rounding

isoweek52ify <- function(x) {
  ret <- lubridate::floor_date( x, unit="week")
  ret[ isoweek(ret) == 53 ] <- ret[ isoweek(ret) == 53 ] - ddays(7)
  ret
}

#' @export
#' @rdname date-rounding
semimonthify <- function(x) {
  day( x[ day(x) <= 15 ] ) <- 1
  day( x[ day(x) > 15  ] ) <- 16
  return(x)
}

#' @export
#' @rdname date-rounding
halfmonthify <- semimonthify


#' @export
#' @rdname date-rounding
monthify <- function(x) lubridate::floor_date( x, unit="month")

#' @export
#' @rdname date-rounding
quarterify <- function(x) lubridate::floor_date( x, unit="quarter")

#' @export
#' @rdname date-rounding
yearify <- function(x) lubridate::floor_date( x, unit="year")


## Floor Functions

#' @export
#' @rdname date-rounding
floor_year <- function(...) lubridate::floor_date( ..., unit="year" )

#' @export
#' @rdname date-rounding
floor_quarter <- function(...) lubridate::floor_date( ..., unit="quarter" )

#' @export
#' @rdname date-rounding
floor_semimonth <- function(x) {
  day( x[ day(x) <= 15 ] ) <- 1
  day( x[ day(x) > 15  ] ) <- 16
  return(x)
}

#' @export
#' @rdname date-rounding
floor_halfmonth <- floor_semimonth


#' @export
#' @rdname date-rounding
floor_month <- function(...) lubridate::floor_date( ..., unit="month" )

#' @export
#' @rdname date-rounding
floor_week52 <- function(...) {
  ret <- lubridate::floor_date( ..., unit="week")
  ret[ week(ret) == 53 ] <- ret[ week(ret) == 53 ] - ddays(7)
  return(ret)
}

#' @export
#' @rdname date-rounding
floor_isoweek52 <- function(...) {
  ret <- lubridate::floor_date( ..., unit="week")
  ret[ isoweek(ret) == 53 ] <- ret[ week(ret) == 53 ] - ddays(7)
  return(ret)
}

#' @export
#' @rdname date-rounding
floor_week <- function(...) lubridate::floor_date( ..., unit="week" )



#' @export
#' @rdname date-rounding
floor_day <- function(...) lubridate::floor_date( ..., unit="day" )

#' @export
#' @rdname date-rounding
floor_hour <- function(...) lubridate::floor_date( ..., unit="hour" )

#' @export
#' @rdname date-rounding
floor_minute <- function(...) lubridate::floor_date( ..., unit="minute" )

#' @export
#' @rdname date-rounding
floor_second <- function(...) lubridate::floor_date( ..., unit="second" )


## Ceiling Functions

#' @export
#' @rdname date-rounding
ceiling_year <- function(...) lubridate::ceiling_date( ..., unit="year" )

#' @export
#' @rdname date-rounding
ceiling_quarter <- function(...) lubridate::ceiling_date( ..., unit="quarter" )

#' @export
#' @rdname date-rounding
ceiling_month <- function(...) lubridate::ceiling_date( ..., unit="month" )

#' @export
#' @rdname date-rounding
ceiling_week <- function(...) lubridate::ceiling_date( ..., unit="week" )

#' @export
#' @rdname date-rounding
ceiling_day <- function(...) lubridate::ceiling_date( ..., unit="day" )

#' @export
#' @rdname date-rounding
ceiling_hour <- function(...) lubridate::ceiling_date( ..., unit="hour" )

#' @export
#' @rdname date-rounding
ceiling_minute <- function(...) lubridate::ceiling_date( ..., unit="minute" )

#' @export
#' @rdname date-rounding
ceiling_second <- function(...) lubridate::ceiling_date( ..., unit="second" )


