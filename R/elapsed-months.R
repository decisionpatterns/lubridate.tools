#' Calculate elapsed months between days
#'
#'
#' @references
#'   http://stackoverflow.com/a/26640698
#'
#' @param end_date object coercible to POSIXlt
#'
#' @param start_date object coercible to POSIXlt
#'
#' @return
#'  integer
#'
#' @examples
#'
#'  elapsed_months("2016-03-10", "2016-01-01")
#'
#'
#'
#' @export

elapsed_months <- function(end_date, start_date) {
    ed <- as.POSIXlt(end_date)
    sd <- as.POSIXlt(start_date)
    12 * (ed$year - sd$year) + (ed$mon - sd$mon)
}
