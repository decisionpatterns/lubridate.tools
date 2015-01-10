#' Memoised functiond 
#' Memoized versions of functions that can benefit from memoisation.
#' 
#' These functions have been memoised for speed and cache the return 
#' values associated with their arguments.
#' 
#' @param ... functions memoized
# @aliases ceiling_date ceiling_date_memo
#'
#' @rdname memoised-functions 
#' @docType data
#' 
#' @import memoise
#' @export  
ceiling_date_memo <- memoise::memoise( ceiling_date )

#' aliases floor_date floor_date_memo
#' @rdname memoised-functions 
#' @export  
floor_date_memo <- memoise::memoise( floor_date )


#' @aliases ymd ymd_memo
#' @rdname memoised-functions
#' @export
ymd_memo <- memoise::memoise( ymd ) 

