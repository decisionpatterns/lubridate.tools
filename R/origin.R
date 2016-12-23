#' Get origin for a time series class
#'
#' Return the origin for a time-series class
#'
#' @param x time series object
#' @param ... addition arguments
#' @param tzone string; time zone abbreviation
#'
#' @seealso
#'   \code{\link{origins}}
#'
#' @return
#'   A one element vector with the class of \code{x}, denoting the
#' @export

origin <- function(x, ...) setMethod('origin')

#' @export
origin.default <- function(x, ... )
  structure(0, class=class(x), ... )

#' @export
origin.POSIXct <- function(x, tzone="UTC" )
  structure(0, class = c("POSIXct", "POSIXt"), tzone = tzone )
