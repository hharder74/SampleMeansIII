#' Takes a subsample of a vector and returns the mean.
#'
#' @param vec A vector
#' @param n The length of the subsample to be taken
#'
#' @return The mean of the subsample.
#'
#' @import tidyverse
#'
#' @export


samplemean <- function(vec, n) {
  sampled <- sample(vec, n, replace = FALSE)
  mean <- mean(sampled)
  return(mean)
}
