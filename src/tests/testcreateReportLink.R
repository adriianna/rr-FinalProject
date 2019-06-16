testthat::test_that("Create report link when two dates provided",
                    {
                      result = createReportLink(2015,2017)
                      expected= "http://3.83.41.109:8901/markdown?end=2017&start=2015"
                      testthat::expect_identical(result,expected)
                    }
                    )
