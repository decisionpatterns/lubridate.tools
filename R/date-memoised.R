#' Memoised functions
#'
#' Memoized versions of functions that can benefit from memoisation.
#'
#' @param ... additional arguments
#'
#'
#' @details
#' These functions have been memoised for speed and cache the return
#' values associated with their arguments.
#'
#' @rdname memoised
#' @import memoise
#' @export
ceiling_date_memo <- memoise::memoise( ceiling_date )

#' @rdname memoised
#' @export
floor_date_memo <- memoise::memoise( floor_date )

#' @rdname memoised
#' @export
ymd_memo <- memoise::memoise( ymd )

