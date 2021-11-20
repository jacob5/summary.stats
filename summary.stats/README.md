
<!-- README.md is generated from README.Rmd. Please edit that file -->

# summary.stats

<!-- badges: start -->

<!-- badges: end -->

The goal of summary.stats is to produce a text ready summary of a
numeric vector with summary statistics.

## Installation

summary.stats is not yet on CRAN. But, you can download it from this
repository using the following R command:

``` r
devtools::install_github("jacob5/summary.stats")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(summary.stats)
sum_stats(c(1:100))
#> [1] "the mean is: 50.5 the median is: 50.5 , the interquartile range is: 49.5 , the standard deviation is: 29.011491975882 ."
```

This package is special because it produces a string in text format
which is easy to incorporate into a sentence.

``` r
test_1 <- sample(seq(from = 1, to = 100, by = 2), size = 50, replace = TRUE)
sum_stats(test_1)
#> [1] "the mean is: 52.08 the median is: 55 , the interquartile range is: 42 , the standard deviation is: 27.5272332686845 ."
```
