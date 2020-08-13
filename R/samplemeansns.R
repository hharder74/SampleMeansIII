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

sample_means_ns <- function(vec, reps, ns) {
  ns_names <- as.character(ns)
  means <- map_dfc(ns, ~many_sample_means(vec, .x, reps))
  colnames(means) <- ns_names
  return(means)
}
