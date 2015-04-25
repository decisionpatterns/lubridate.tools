#' Difference between dates expressed in days or weeks
#'
#' @param x  the first date/time object
#' @param y  the second date/time object
#'
#' @export
#' @rdname diffdays

diffdays <- function( x, y )
  as.numeric( difftime( x, y, units="days" ) )

#' @export
#' @rdname diffdays
diffweeks <- function( x, y )
  as.numeric( difftime( x, y, units="weeks" ) )

#' @export
#' @rdname diffdays
diffyears <- function( x, y )
  as.numeric( difftime( x, y, units="weeks" ) )/52.25
