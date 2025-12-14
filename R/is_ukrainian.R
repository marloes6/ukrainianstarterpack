is_ukrainian <- function(text) {
  if(stringr::str_detect(text, ".*[ЇїЄєҐґ].*")) {
    return("This text is Ukrainian.")
  } else if(stringr::str_detect(text, ".*[ЁёЪъЫыЭэЎўЅѕЃѓЌќЏџЉљЊњЈјЋћЂђӨөҮү].*")) {
    return("This text is not Ukrainian.")
  } else {
    return("This text may or may not be Ukrainian. Please provide more input if possible.")
  }
}
