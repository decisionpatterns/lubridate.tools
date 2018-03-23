#' Parse Mon-Year format
#'
#' @param x character
#'
#' @details
#'
#' Parses MMM YYYY format; the parsed date assumes the first moment of the
#' period.
#'
#' An abbreviated name for this function cannot be used since it would be "by"
#' which is a common reserved word
#'
#' @import stringr
#' @export

mmm_yyyy <- function(x ,... )
  parse_date_time( paste0(x, " 01"), "b Y d")
