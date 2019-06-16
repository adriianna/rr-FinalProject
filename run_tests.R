#include all functions

#source(here::here("src", "include_functions.R"))

source(here::here("update_data_tests.R"))
res <- testthat::test_dir(here::here("src", "tests"), reporter = JunitReporter$new(file = here::here("src", "tests", "out", "unittests", "result.xml")))