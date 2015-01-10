#' yesterday and tomorrow
#'
#' This same time yesterday
#'
#' @param tzone a character vector specifying which time zone you would like
#' the current time in. tzone defaults to your computer's system timezone. You
#' can retrieve the current time in the Universal Coordinated Time (UTC) with
#' now("UTC").
#'
#' @seealso
#'   \code{\link[lubridate]{here}}
#'
#' @examples
#'
#'   yesterday()
#'   tomorrow()
#'
#'  #  ( now() - ddays(1) ) > yesterday()
#'
#' @import lubridate
#' @export

yesterday <- function( tzone=NULL )
  floor_date( now( tzone ) - ddays(1), "day" )


#' @aliases tomorrow
#' @rdname yesterday
#' @export

tomorrow <- function( tzone="" )
  floor_date( now(tzone) + ddays(1), "day" )
