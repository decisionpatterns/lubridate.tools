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
#' @seealso \code{\link{floor_date}}
#' @note
#' TODO
#'   - convert automatically from character
#'
#' @rdname date-rounding
#' @import lubridate
#' @export
dayify <- function(x) lubridate::floor_date( x, unit="day" )

#' @export
#' @rdname date-rounding
monthify <- function(x) lubridate::floor_date( x, unit="month")

#' @export
#' @rdname date-rounding
yearify <- function(x) lubridate::floor_date( x, unit="year")


#' @export
#' @rdname date-rounding
floor_year <- function(...) lubridate::floor_date( ..., unit="year" )

#' @export
#' @rdname date-rounding
floor_month <- function(...) lubridate::floor_date( ..., unit="month" )

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


#' @export
#' @rdname date-rounding
ceiling_year <- function(...) lubridate::ceiling_date( ..., unit="year" )

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


