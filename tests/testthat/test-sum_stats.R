# test that the function will return an error for improper argument 
test_that("returns error for vector of length NA", {
  expect_error(sum_stats(NA))
})
# test the function is producing string outputs 
test_that("the code outputs a string", {
  expect_output(sum_stats(gapminder::gapminder, gapminder::gapminder$lifeExp))
})
# test that the function will produce an error when a non-numeric column is inputted as
#an argument
test_that("the code produces an error for non numeric argument", {
  expect_error(sum_stats(gapminder::gapminder, gapminder::gapminder$country))
})
# test that the function output matches what we'd expect
test_that("the code outputs a string", {
  expect_output((sum_stats(gapminder::gapminder, gapminder::gapminder$lifeExp)), 
                regexp="For the provided data, the mean is: 59.47 the median is: 60.71 , the interquartile range is: 22.65 , and the standard deviation is: 12.92 . Plots generated. Check them out to view the distribution of the variable of interest")
})
# test that the function output matches what we'd expect
test_that("the code outputs a string", {
  expect_output(sum_stats(palmerpenguins::penguins, palmerpenguins::penguins$bill_length_mm), 
                regexp="For the provided data, the mean is: 43.92 the median is: 44.45 , the interquartile range is: 9.27 , and the standard deviation is: 5.46 . Plots generated. Check them out to view the distribution of the variable of interest")
})

