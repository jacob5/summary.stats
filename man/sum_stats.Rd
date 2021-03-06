% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/summaries.R
\name{sum_stats}
\alias{sum_stats}
\title{Summarize the input}
\usage{
sum_stats(data, x)
}
\arguments{
\item{data}{a data frame containing one or more columns}

\item{x}{A column containing numeric observations for a variable}
}
\value{
A string containing the summary statistics of interest, diagnostic plots describing the variable distribution
}
\description{
Summarize the input
}
\examples{
sum_stats(gapminder::gapminder, gapminder::gapminder$lifeExp)
sum_stats(palmerpenguins::penguins, palmerpenguins::penguins$bill_length_mm)
}
