test_that("cyr_lang_detect() recognises Ukrainian", {
  expect_equal(cyr_lang_detect("Лише раз на сто років Небо народжує двох людей з однією душею
  І відпускає їх у чистий, вільний політ Нам пощастило Я люблю тебе"),
               "This text is Ukrainian.")
})

test_that("cyr_lang_detect() recognises Russian", {
  expect_equal(cyr_lang_detect("Мы живем все вместе с собакой и кошкой в большом доме в деревне."),
               "This text is likely Russian.")
})

test_that("cyr_lang_detect() recognises text that cannot be determined", {
  expect_equal(cyr_lang_detect("так"),
               "The language of this text couldn't be determined. If possible, please provide a longer input for a more accurate result.")
})
