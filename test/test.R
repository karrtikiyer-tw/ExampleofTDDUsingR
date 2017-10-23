#source("bollywood.R")
library(testthat)

context("Bollywood Excercise tests")
planned_marks <- c(q1 = 10, q2 = 10, q3 = 10, q4 = 10, q5 = 10, q6 = 10, q7 = 10)
results <- c(q1 = F, q2 = F, q3 = F, q4 = F, q5 = F, q6 = F, q7 = F)

results["q1"] <- test_that("last 10 movies are correct, match 1st, 5th and 10th item", {
  expect_match(last_10[1], "Neerja")
  expect_match(last_10[5], "Ghayal Once Again")
  expect_match(last_10[10], "Wazir")
})


results["q2"] <- test_that("Number of NA's are 3", {
  expect_equal(na_bollywood, 3L)
})

results["q3"] <- test_that("Top movie should be Dangal", {
  expect_match(top_movie, "Dangal")
})

results["q4"] <- test_that("2nd Top movie should be Sultan", {
  expect_match(top_2_movie, "Sultan")
})

results["q5"] <- test_that("Individual collections of Akshay, Shahrukh and amitabh are correct",{
  expect_identical(shahrukh_collection, 148.54)
  expect_identical(akshay_collection, 364.27)
  expect_identical(amitabh_collection, 121.91)
})

results["q6"] <- test_that("Verdict count of Average, Flop. Hit and SuperHit are correct",{
  expect_equal(as.integer(verdict_count %>% filter(Verdict == "Average") 
                          %>% select(Count)), 17)
  expect_equal(as.integer(verdict_count %>% filter(Verdict == "Flop") 
                          %>% select(Count)), 30)
  expect_equal(as.integer(verdict_count %>% filter(Verdict == "Hit") 
                          %>% select(Count)), 7)
  expect_equal(as.integer(verdict_count %>% filter(Verdict == "Super Hit") 
                          %>% select(Count)), 7)
})

results["q7"] <- test_that("maximum Ocollection, Wcollection, Fwcollecion & Tcollection",{
  expect_match(movie_result[1], "Sultan")
  expect_match(movie_result[2], "Sultan")
  expect_match(movie_result[3], "Sultan")
  expect_match(movie_result[4], "Dangal")
})

total_marks = sum(planned_marks * as.integer(results))

test_that(paste("Printing Total Marks", total_marks, sep=":"),{
  expect_equal(total_marks, total_marks)
})

