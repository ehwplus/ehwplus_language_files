enum LanguageIconType {
  langAf('af', 'Afrikaans'),
  langAr('ar', 'اَلْعَرَبِيَّةُ'),
  langBg('bg', 'Български'),
  langBs('bs', 'Босански'),
  langCz('cs', 'Čeština'),
  langDa('da', 'Dansk'),
  langDe('de', 'Deutsch'),
  langEn('en', 'English'),
  langEs('es', 'Español'),
  langEt('et', 'Eesti keel'),
  langFa('fa', 'فارسی'),
  langFi('fi', 'Suomi'),
  langFr('fr', 'Français'),
  langHi('hi', 'हिन्दी'),
  langGr('el', 'Νέα Ελληνικά'),
  langHr('hr', 'Hrvatski'),
  langIt('it', 'Italiano'),
  langJa('ja', '日本語'),
  langKo('ko', '한국어'),
  langLt('lt', 'Lietuvių'),
  langMl('ml', 'മലയാളം'),
  langMy('my', 'Mrãmācā'),
  langNl('nl', 'Nederlands'),
  langNo('no', 'Norsk'),
  langPl('pl', 'Polski'),
  langPt('pt', 'Português'),
  langRu('ru', 'Русский язык'),
  langSl('sl', 'Slovenščina'),
  langSr('sr', 'Српски'),
  langSv('sv', 'Svenska'),
  langSw('sw', 'Kiswahili'),
  langTh('th', 'ภาษาไทย'),
  langTr('tr', 'Türkçe'),
  langUk('uk', 'Українська'),
  langVi('vi', 'tiếng Việt'),
  langZh('zh', '中文');

  const LanguageIconType(this.fileName, this.endonym);

  final String fileName;

  final String endonym;

  static LanguageIconType fromStringValue(String value) {
    return LanguageIconType.values.firstWhere((enumId) => enumId.fileName == value);
  }
}
