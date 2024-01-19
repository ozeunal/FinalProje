library(testthat)

testthat::test_that("ratings_count sütununda en az bir değerin 1000'den büyük olduğunu kontrol et", {
  expect_true(any(mpath$ratings_count > 1000, na.rm = TRUE), 
              info = "ratings_count sütununun en az bir değeri 1000'den büyük olmalı")
})

testthat::test_that("text_reviews_count sütununda en az bir değerin 500'den büyük olduğunu kontrol et", {
  expect_true(any(mpath$text_reviews_count > 500, na.rm = TRUE), 
              info = "text_reviews_count sütununun en az bir değeri 500'den büyük olmalı")
})

testthat::test_that("average_rating sütununda en az bir değerin 4'ten büyük olduğunu kontrol et", {
  expect_true(any(mpath$average_rating > 4, na.rm = TRUE), 
              info = "average_rating sütununun en az bir değeri 4'ten büyük olmalı")
})

testthat::test_that("average_rating sütununda NA değer olup olmadığını kontrol et", {
  expect_equal(any(is.na(mpath$average_rating)), TRUE,
               info = "average_rating sütununda NA değer olup olmadığını kontrol et")
})