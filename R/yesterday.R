#' yesterday 
#' 
#' This same time yesterday
#' 
#' Can all be done as a binding
#' @examples
#' 
#'   yesterday() 
#'   today()     # lubridate function
#'   tomorrow()  
#'   
#'   ( now() - ddays(1) ) > yesterday() 
#'
#' @import lubridate
#' @export

yesterday <- function( tzone="" ) 
  as.Date( force_tz( floor_date( now() - ddays(1), "day" ), tzone=tzone ) )


#' @aliases tomorrow 
#' @rdname yesterday

tomorrow <- function( tzone="" ) 
  as.Date( force_tz( floor_date( now() + ddays(1), "day" ), tzone=tzone ) )
