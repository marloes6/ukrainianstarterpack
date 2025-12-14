cyr_lang_detect <- function(text) {
  if(stringr::str_detect(text, ".*[ЇїЄєҐґ].*") && !(stringr::str_detect(text, "[ЁёЪъЫыЭэЎўЅѕЃѓЌќЏџЉљЊњЈјЋћЂђӨөҮү]"))) {
    return("This text is Ukrainian.")
  } else if(stringr::str_detect(text, ".*[Ўў].*") && !(stringr::str_detect(text, "[ЩщИиЇїЄєҐґЪъЅѕЃѓЌќЏџЉљЊњЈјЋћЂђӨөҮү]"))) {
    return("This text is Belarusian.")
  } else if(stringr::str_detect(text, ".*[ЋћЂђ].*") && !(stringr::str_detect(text, "[ЩщЬьЮюЯяЙйІіЇїҐґЄєЁёЪъЫыЭэЎўЅѕЃѓЌќӨөҮү]"))) {
    return("This text is Serbian.")
  } else if(stringr::str_detect(text, ".*[ЅѕЃѓЌќ].*") && !(stringr::str_detect(text, "[ЩщЬьЮюЯяЙйІіЇїҐґЄєЁёЪъЫыЭэЎўЋћЂђӨөҮү]"))) {
      return("This text is Macedonian.")
  } else if(stringr::str_detect(text, ".*[ӨөҮү].*") && !(stringr::str_detect(text, "[ІіЇїЄєҐґЫыЎўЅѕЃѓЌќЏџЉљЊњЈјЋћЂђ]"))) {
    return("This text is Mongolian.")
  } else if(stringr::str_detect(text, ".*[Ъъ].*") && !(stringr::str_detect(text, "[ІіЇїЄєҐґЁёЫыЭэЎўЅѕЃѓЌќЏџЉљЊњЈјЋћЂђӨөҮү]"))) {
    return("This text is likely Bulgarian.")
  } else if(stringr::str_detect(text, ".*[ЁёЪъЫыЭэ]") && !(stringr::str_detect(text, "[ІіЇїЄєҐґЎўЅѕЃѓЌќЏџЉљЊњЈјЋћЂђӨөҮү]"))) {
    return("This text is likely Russian.")
  } else {
    return("The language of this text couldn't be determined. If possible, please provide a longer input for a more accurate result.")
  }
}
