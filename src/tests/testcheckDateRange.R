testthat::test_that("Test checkDateRange when two correct years provided",
                    {
                      result = checkDateRange(2015,2017)
                      expected= "<html><body>Display <a href=\"http://localhost:8901/markdown?end=2017&start=2015\" >report</a></body></html>"
                      testthat::expect_identical(result,expected)
                    }
                    )

testthat::test_that("Test checkDateRange when two correct years provided in incorrect order",
                    {
                      result = checkDateRange(2017,2015)
                      expected= "<html><body>Wrong date range. The ending date must be greater than or equal to the starting date.</body></html>"
                      testthat::expect_identical(result,expected)
                    }
)

testthat::test_that("Test checkDateRange when one of dates is incorrect",
                    {
                      result = checkDateRange(1410,2015)
                      expected= "<html><body>There is no such a date range in dataset. Choose year from range: 2013-2017.</body></html>"
                      testthat::expect_identical(result,expected)
                    }
)
