#' Summarize the input
#'
#' @param data a data frame containing one or more columns
#' @param x A column containing numeric observations for a variable
#' @return A string containing the summary statistics of interest, diagnostic plots describing the variable distribution
#' @examples
#' sum_stats(gapminder::gapminder, gapminder::gapminder$lifeExp)
#' sum_stats(palmerpenguins::penguins, palmerpenguins::penguins$bill_length_mm)
#' @export
sum_stats <- function(data, x){
  if(!is.numeric(x)){
    stop("Function called on vector of class: ", class(x), ".", "Please call function on numeric vector")}
  a <- round(mean(x, na.rm = T), digits = 2)
  b <- round(stats::median(x, na.rm = T), digits =2)
  c <- round(stats::IQR(x, na.rm = T), digits =2)
  d <- round(stats::sd(x, na.rm = T), digits=2)
  result <- cbind(a, b, c, d)
  string<-paste("For the provided data, the mean is:", a,
        "the median is:", b,", the interquartile range is:", c,", and the standard deviation is:", d,".", "Plots generated. Check them out to view the distribution of the variable of interest")
  boxplot <- ggplot2::ggplot(data) + 
      ggplot2::geom_boxplot(ggplot2::aes(x, fill="red", alpha=0.8))+
    ggplot2::theme(legend.position = "none")+
    ggplot2::theme(axis.title.y=ggplot2::element_blank(),
          axis.text.y=ggplot2::element_blank(),
          axis.ticks.y=ggplot2::element_blank())+
    ggplot2::xlab("Distribution of the variable of interest")
  densityplot <- ggplot2::ggplot(data) + 
    ggplot2::geom_density(ggplot2::aes(x, fill="red", alpha=0.8))+
    ggplot2:: ylab("Frequency of observation")+
    ggplot2::theme(legend.position = "none")+
    ggplot2::theme(axis.title.x=ggplot2::element_blank())
  full_plot <- cowplot::plot_grid(densityplot, boxplot, nrow=2, ncol=1)
  
  print(full_plot)
  print(string)
}
