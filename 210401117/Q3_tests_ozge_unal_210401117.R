library(testthat)

testthat::test_that("ratings_count sütununda en az bir değerin 1000'den büyük olduğunu kontrol et", {
  expect_true(any(mpath$ratings_count > 1000, na.rm = TRUE), 
              info = "ratings_count sütununun en az bir değeri 1000'den büyük olmalı")
})
