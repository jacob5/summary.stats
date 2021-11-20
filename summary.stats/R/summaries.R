#' Summarize the input
#'
#' @param x A vector containing a distribution of real numbers
#' @return A string containing the summary statistics of interest
#' @examples
#' sum_stats(c(1:10))
#' sum_stats(c(1:100))
#' @export
sum_stats <- function(x){
  if(!is.numeric(x)){
    stop("Function called on vector of class: ", class(x), ".", "Please call function on numeric vector")}
  a <- mean(x)
  b <- median(x)
  c <- IQR(x)
  d <- sd(x)
  result <- cbind(a, b, c, d)
  paste("the mean is:", a,
        "the median is:", b,", the interquartile range is:", c,", the standard deviation is:", d,".")
}
