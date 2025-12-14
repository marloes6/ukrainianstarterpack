#' Determine if a text is Ukrainian
#'
#' @param text A string of Cyrillic characters, between " ", may contain spaces.
#'
#' @returns A message if the input text is Ukrainian or not.
#' @export
#'
#' @examples
#' is_ukrainian("Лише раз на сто років Небо народжує двох людей з однією душею
#' І відпускає їх у чистий, вільний політ Нам пощастило Я люблю тебе")
is_ukrainian <- function(text) {
  if(stringr::str_detect(text, ".*[ЇїЄєҐґ].*")) {
    return("This text is Ukrainian.")
  } else if(stringr::str_detect(text, ".*[ЁёЪъЫыЭэЎўЅѕЃѓЌќЏџЉљЊњЈјЋћЂђӨөҮү].*")) {
    return("This text is not Ukrainian.")
  } else {
    return("This text may or may not be Ukrainian. Please provide more input if possible.")
  }
}
