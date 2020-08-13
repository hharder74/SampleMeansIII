#' Takes a subsample of a vector many times and returns a vector of the means.
#'
#' @param vec A vector
#' @param n The length of the subsample to be taken
#' @param reps The number of repititions to be done.
#'
#' @return A vector containing all means of the subsample (length = reps).
#'
#' @import tidyverse
#'
#' @export

many_sample_means <- function(vec, n, reps) {
  rep_vec <- replicate(reps, sample(vec, n), simplify = "vector")
  mean_vec <- apply(rep_vec, 2, mean)
  return(mean_vec)
}
