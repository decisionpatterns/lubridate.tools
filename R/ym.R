#' ym
#'
#' @param x vector; values that represent months in ym form
#' @param ... arguments passed to ymd
#'
#' @return
#'   POSIXct
#'
#' @examples
#'   months <- c('200101','200102', '200103' )
#'   ym(months)
#'
#' @export

ym <- function(x, ...) {
  ymd( paste0( x, "01" ), ... )
}
