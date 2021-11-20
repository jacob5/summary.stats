test_that("returns error for wrong vector class", {
  expect_error(sum_stats("dogs", "cats"))
})
test_that("returns error for vector of length NA", {
  expect_error(sum_stats(NA))
})
test_that("returns error for vector with character list", {
  expect_error(sum_stats("3", "4", 7))
})
