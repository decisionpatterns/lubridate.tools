#' 1970-01-01 UTC
#'
#' Origin is the date-time for 1970-01-01 UTC in POSIXct format. This date-time
#' is the origin for the numbering system used by POSIXct, POSIXlt, chron, and
#' Date classes.
#'
#' This is a copy of \code{\link[lubridate]{origin}}.
#'
#' @seealso
#'   lubridate::origin
#'
#' @keywords data chron
#' @examples
#'   epoch_origin
#'
#'   origin_epoch
#'   origin_POSIXct
#'
#' @rdname origins
#' @export

epoch_origin <- structure(0, class = c("POSIXct", "POSIXt"), tzone = "UTC")

#' @rdname origins
#' @export
origin_epoch   <- epoch_origin

#' @rdname origins
#' @export
origin_POSIXct <- structure(0, class = c("POSIXct", "POSIXt"), tzone = "UTC")

#' @rdname origins
#' @export
origin_POSIXlt <- epoch_origin

#' @rdname origins
#' @export
origin_chron   <- epoch_origin

#' @rdname origins
#' @export
origin_Date    <- structure(0, class = c("Date") )


