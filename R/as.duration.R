#' as.duration.character
#'
#' coerce object to a \code{lubridate} duration object
#'
#' @param x character to convert
#'
#' @examples
#'   as.duration( "7.25 days" )
#'   as.duration( "3600 seconds" )
#'   as.duration( "1 week" )
#'
#' @import lubridate stringr
#' @export

setMethod( 'as.duration', 'character',

  function(x) {

    num <- stringr::str_extract_all( x, "[0-9\\.]+" )

    if( length(num) == 0 ) stop( "No numbers provided in ", x )
    if( length(num) >  1 ) stop( "Multiple numbers found in ", x )

    num <- as.numeric( num[[1]] )


    units = stringr::str_extract_all( x, "(seconds?|minutes?|hours?|days?|weeks?|months?|years?)" )
    if ( length(units) == 0 ) stop( "No units found in ", x )
    if ( length(units) >  1 ) stop( "Multiple units found in ", x )

    units <- units[[1]]

    return(
      duration( num=num, units=units)
    )

  }
)
