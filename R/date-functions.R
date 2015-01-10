#' Convenience function for rounding dates
#'
#' Function to make working with dates easier.
#' 
#' The 'date'-ify functions round each date down to the beginning of that
#' period using the \code{\link{floor_date}} function. This 
#' allows the continued use of date functions.   
#' 
#' @param ... arguments passed to other functions
#' @param x a vector of date time objects 
#' @param y a vector of date time objects
#' 
#' @seealso \code{\link{floor_date}}
#' @note 
#' TODO
#'   - convert automatically from character
#' 
#' @rdname date-functions
#' @import lubridate 
#' @export
dayify <- function(x) floor_date( x, unit="day" )

#' @export
#' @rdname date-functions
monthify <- function(x) floor_date( x, unit="month")

#' @export
#' @rdname date-functions
yearify <- function(x) floor_date( x, unit="year")


#' @export
#' @rdname date-functions
floor_year <- function(...) floor_date( ..., unit="year" ) 

#' @export
#' @rdname date-functions
floor_month <- function(...) floor_date( ..., unit="month" )

#' @export
#' @rdname date-functions
floor_week <- function(...) floor_date( ..., unit="week" ) 

#' @export
#' @rdname date-functions
floor_day <- function(...) floor_date( ..., unit="day" )

#' @export
#' @rdname date-functions
floor_hour <- function(...) floor_date( ..., unit="hour" )

#' @export
#' @rdname date-functions
floor_minute <- function(...) floor_date( ..., unit="minute" )

#' @export
#' @rdname date-functions
floor_second <- function(...) floor_date( ..., unit="second" )


#' @export
#' @rdname date-functions
ceiling_year <- function(...) ceiling_date( ..., unit="year" ) 

#' @export
#' @rdname date-functions
ceiling_month <- function(...) ceiling_date( ..., unit="month" )

#' @export
#' @rdname date-functions
ceiling_week <- function(...) ceiling_date( ..., unit="week" ) 

#' @export
#' @rdname date-functions
ceiling_day <- function(...) ceiling_date( ..., unit="day" )

#' @export
#' @rdname date-functions
ceiling_hour <- function(...) ceiling_date( ..., unit="hour" )

#' @export
#' @rdname date-functions
ceiling_minute <- function(...) ceiling_date( ..., unit="minute" )

#' @export
#' @rdname date-functions
ceiling_second <- function(...) ceiling_date( ..., unit="second" )


#' Difference between dates expressed 
#' 
#' @export
#' @rdname date-functions
diffdays <- function( x, y )
  as.numeric( difftime( x, y, units="days" ) ) 

#' @export
#' @rdname date-functions
diffweeks <- function( x, y )
  as.numeric( difftime( x, y, units="weeks" ) ) 
