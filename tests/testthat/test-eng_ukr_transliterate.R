test_that("eng_ukr_transliterate() transliterates English text", {
  expect_equal(eng_ukr_transliterate("Sail and seek The starbound quay Calling you, calling me To be a part of your story"),
               "Саіл анд сеек Тге старбоунд куаи Каллінґ иоу, каллінґ ме То бе а парт оф иоур стори")
})

test_that("eng_ukr_transliterate() transliterates letter combinations before single letters", {
  expect_equal(eng_ukr_transliterate("shawl"),
               "шавл")
})
