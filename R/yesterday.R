#' Reference Dates and Times from Now
#'
#' yesterday, tomorrow, last month and next month based on the current datetime
#'
#' @param tzone a character vector specifying which time zone you would like
#' the current time in. tzone defaults to your computer's system timezone. You
#' can retrieve the current time in the Universal Coordinated Time (UTC) with
#' now("UTC").
#'
#' @details
#'
#' These functions provide commonly used dates relative to the current date and
#' time (\code{now}). They give the floor for the specified time period.
#'
#' @seealso
#'   \code{\link[lubridate]{now}} \cr
#'   \code{\link[lubridate]{floor_date}} \cr
#'
#' @examples
#'
#'   yesterday()
#'   tomorrow()
#'
#'   last_month()
#'   next_month()
#'
#'   last_hour()
#'   next_hour()
#'  #  ( now() - ddays(1) ) > yesterday()
#'
#' @import lubridate
#' @export

yesterday <- function( tzone=NULL )
  floor_date( now( tzone ) - ddays(1), "day" )


#' @aliases tomorrow
#' @rdname yesterday
#' @export

tomorrow <- function( tzone=NULL )
  floor_date( now(tzone) + ddays(1), "day" )


#' @rdname yesterday
#' @export

last_month <- function(tzone=NULL) {

  x <- floor_month( now(tzone) )

  if( month(x) > 1 ) {
    month(x) <- month(x) - 1
  } else {
    year(x) <- year(x) - 1
    month(x) <- 12
  }

  return(x)
}



#' @rdname yesterday
#' @export

next_month <- function(tzone=NULL)  {
  ceiling_month( now(tzone) )
}


#' @rdname yesterday
#' @export

last_hour <- function(tzone=NULL)
  floor_hour( now(tzone) - dhours(1) )

#' @rdname yesterday
#' @export

next_hour <- function(tzone=NULL)
  ceiling_hour( now(tzone)  )
