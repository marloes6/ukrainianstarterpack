test_that("is_ukrainian() recognises Ukrainian", {
  expect_equal(is_ukrainian("Лише раз на сто років Небо народжує двох людей з однією душею
  І відпускає їх у чистий, вільний політ Нам пощастило Я люблю тебе"),
               "This text is Ukrainian.")
})

test_that("is_ukrainian() recognises non-Ukrainian", {
  expect_equal(is_ukrainian("Мы живем все вместе с собакой и кошкой в большом доме в деревне."),
               "This text is not Ukrainian.")
})

test_that("is_ukrainian() recognises text that may or may not be Ukrainian", {
  expect_equal(is_ukrainian("так"),
               "This text may or may not be Ukrainian. Please provide more input if possible.")
})
