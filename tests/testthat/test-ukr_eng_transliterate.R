test_that("ukr_eng_transliterate() transliterates Ukrainian text", {
  expect_equal(ukr_eng_transliterate("Лише раз на сто років Небо народжує двох людей з однією душею І відпускає їх у чистий, вільний політ Нам пощастило Я люблю тебе"),
               "Lyshe raz na sto rokiv Nebo narodzhuye dvokh lyudej z odniyeyu dusheyu I vidpuskaye yikh u chystyj, vil'nyj polit Nam poshchastylo Ya lyublyu tebe")
})
