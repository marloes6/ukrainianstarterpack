#' Transliterate a text from Ukrainian Cyrillic to English Latin script
#'
#' @param text A string of Ukrainian Cyrillic characters, between " ", may contain spaces.
#'
#' @returns A string of characters transliterated to English Latin script.
#' @export
#'
#' @examples
#' ukr_eng_transliterate("Лише раз на сто років Небо народжує двох людей з однією душею
#' І відпускає їх у чистий, вільний політ Нам пощастило Я люблю тебе")
ukr_eng_transliterate <- function(text) {
  stringr::str_replace_all(text, c("А"="A", "а"="a", "Б"="B", "б"="b", "В"="V", "в"="v",
                                   "Г"="H", "г"="h", "Ґ"="G", "ґ"="g", "Д"="D", "д"="d",
                                   "Е"="E", "е"="e", "Є"="Ye", "є"="ye", "Ж"="Zh", "ж"="zh",
                                   "З"="Z", "з"="z", "И"="Y", "и"="y", "І"="I", "і"="i",
                                   "Ї"="Yi", "ї"="yi", "Й"="J", "й"="j", "К"="K", "к"="k",
                                   "Л"="L", "л"="l", "М"="M", "м"="m", "Н"="N", "н"="n",
                                   "О"="O", "о"="o", "П"="P", "п"="p", "Р"="R", "р"="r",
                                   "С"="S", "с"="s", "Т"="T", "т"="t", "У"="U", "у"="u",
                                   "Ф"="F", "ф"="f", "Х"="Kh", "х"="kh", "Ц"="Ts", "ц"="ts",
                                   "Ч"="Ch", "ч"="ch", "Ш"="Sh", "ш"="sh", "Щ"="Shch", "щ"="shch",
                                   "Ь"="'", "ь"="'", "Ю"="Yu", "ю"="yu", "Я"="Ya", "я"="ya"))
}
