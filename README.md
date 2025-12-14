
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ukrainianstarterpack

<!-- badges: start -->

<!-- badges: end -->

The goal of ukrainianstarterpack is to help you read Ukrainian Cyrillic
by determining if a text is Ukrainian, determining which other Cyrillic
language a text could be, and transliterating Ukrainian Cyrillic to
English Latin script and vice versa.

## Installation

You can install the development version of ukrainianstarterpack from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("marloes6/ukrainianstarterpack", build_vignettes=TRUE)
```

## Functions

All functions in ukrainianstarterpack are based on the stringr package.
Input text in the functions must be between ” “, and may contain spaces.
The functions are sensitive for uppercase/lowercase letters. The
different functions in ukrainianstarterpack are explained in more detail
below.

### is_ukrainian()

is_ukrainian() determines if your text is written in Ukrainian or not.
Input should be in Ukrainian, Belarusian, Serbian, Macedonian,
Mongolian, Bulgarian or Russian Cyrillic script and be between ” “.

``` r
library(ukrainianstarterpack)

is_ukrainian("Лише раз на сто років Небо народжує двох людей з однією душею І відпускає їх у чистий, вільний політ Нам пощастило Я люблю тебе")
#> [1] "This text is Ukrainian."

is_ukrainian("Мы живем все вместе с собакой и кошкой в большом доме в деревне.")
#> [1] "This text is not Ukrainian."

is_ukrainian("так")
#> [1] "This text may or may not be Ukrainian. Please provide more input if possible."
```

### cyr_lang_detect()

cyr_lang_detect() determines in which Cyrillic language your text is
written. Input should be in Ukrainian, Belarusian, Serbian, Macedonian,
Mongolian, Bulgarian or Russian Cyrillic script and be between ” “.

``` r
library(ukrainianstarterpack)

cyr_lang_detect("Лише раз на сто років Небо народжує двох людей з однією душею І відпускає їх у чистий, вільний політ Нам пощастило Я люблю тебе")
#> [1] "This text is Ukrainian."

cyr_lang_detect("Мы живем все вместе с собакой и кошкой в большом доме в деревне.")
#> [1] "This text is likely Russian."

cyr_lang_detect("так")
#> [1] "The language of this text couldn't be determined. If possible, please provide a longer input for a more accurate result."
```

### ukr_eng_transliterate()

ukr_eng_transliterate() transliterates a text from Ukrainian Cyrillic to
English Latin script. Input should be in Ukrainian Cyrillic script and
be between ” “.

``` r
library(ukrainianstarterpack)

ukr_eng_transliterate("Лише раз на сто років Небо народжує двох людей з однією душею І відпускає їх у чистий, вільний політ Нам пощастило Я люблю тебе")
#> [1] "Lyshe raz na sto rokiv Nebo narodzhuye dvokh lyudej z odniyeyu dusheyu I vidpuskaye yikh u chystyj, vil'nyj polit Nam poshchastylo Ya lyublyu tebe"
```

### eng_ukr_transliterate()

eng_ukr_transliterate() transliterates a text from English Latin to
Ukrainian Cyrillic script. Input should be in English Latin script and
be between ” “.

``` r
library(ukrainianstarterpack)

eng_ukr_transliterate("Sail and seek The starbound quay Calling you, calling me To be a part of your story")
#> [1] "Саіл анд сеек Тге старбоунд куаи Каллінґ иоу, каллінґ ме То бе а парт оф иоур стори"

eng_ukr_transliterate("shawl")
#> [1] "шавл"
```

## Please be aware of the following:

Language detection with ukrainianstarterpack is limited to Ukrainian,
Belarusian, Serbian, Macedonian, Mongolian, Bulgarian and Russian. Input
of other Cyrillic languages may lead to incorrect detection.

The language detection is based on the appearance of letters in a text
that are unique to a Cyrillic language. If the input text does not
contain a letter unique to a language, this may lead to incorrect
language detection or the function being unable to detect the language.
A longer input text is more likely to contain a letter unique to the
language, and thus more likely to be accurately detected. Bulgarian and
Russian do not have unique letters compared to all languages used in
ukrainianstarterpack, which results in not being able to detect these
languages with 100% accuracy.

The transliteration is based on matching a letter with the closest
sounding letter or letter combination in the other script. The
transliteration functions do not take into account the different sounds
or transliterations a letter could have based on its place in a word,
and thus may not be 100% accurate.
