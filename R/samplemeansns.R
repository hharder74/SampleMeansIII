#' Takes multiple subsamples (length based on n values) of a vector many times and returns a data frame of the means.
#'
#' @param vec A vector
#' @param reps The number of repititions to be done.
#' @param ns A vector of n (the length of subsample to be taken)
#'
#' @return A dataframe containing all means of the subsample for different n.
#'
#' @import tidyverse
#'
#' @export

samplemeansns <- function(vec, reps, ns) {
  ns_names <- as.character(ns)
  mean <- map_dfc(ns, ~manysamplemeans(vec, .x, reps))
  colnames(mean) <- ns_names
  return(mean)
}
