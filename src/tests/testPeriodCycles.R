testthat::test_that("fPeriodCycles returns table with n col's",
                    {
                      result = ncol(PeriodCycles(list(total_usa,holiday_usa),c("Total","Holiday")))
                      expected= 5
                      testthat::expect_equal(result,expected)
                    }
                    )

testthat::test_that("fPeriodCycles returns table with n row's",
                    {
                      result = nrow(PeriodCycles(list(total_usa,holiday_usa),c("Total","Holiday")))
                      expected= 2
                      testthat::expect_equal(result,expected)
                    }
)