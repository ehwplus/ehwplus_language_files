import 'package:flutter/material.dart';

enum LocaleClass {
  af,
  ar,
  bg,
  bs,
  cs,
  da,
  de,
  el,
  en,
  es,
  et,
  fa,
  fi,
  fr,
  hi,
  hr,
  it,
  ja,
  ko,
  lt,
  ml,
  my,
  nl,
  no,
  pl,
  pt,
  ru,
  sl,
  sr,
  sv,
  sw,
  th,
  tr,
  uk,
  vi,
  zh;

  static LocaleClass fromString(String locale) {
    for (final localeClass in LocaleClass.values) {
      if (localeClass.name == locale) {
        return localeClass;
      }
    }
    return LocaleClass.en;
  }

  Locale toLocale() {
    return Locale(name);
  }
}
