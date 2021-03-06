#' @rdname dc_validation_coordinates_zero
#' 
#' @param TARGET a vector of decimalLatitude or decimalLongitude information.
#' To pass it must equal to zero.
#' 
dc_validation_coordinates_zero <- function(TARGET = NULL) {
  # Supressing warnings if missing value is being turned into a numeric
  suppressWarnings(
    result <- as.numeric(TARGET) == 0
  )
  return(perform_dc_missing(result, TARGET))
}