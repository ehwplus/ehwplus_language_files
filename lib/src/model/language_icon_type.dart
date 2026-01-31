enum LanguageIconType {
  langAf('af', 'Afrikaans', 'Afrikaans'),
  langAr('ar', 'Arabic', 'اَلْعَرَبِيَّةُ'),
  langBg('bg', 'Bulgarian', 'Български'),
  langBs('bs', 'Bosnian', 'Босански'),
  langCz('cs', 'Czech', 'Čeština'),
  langDa('da', 'Danish', 'Dansk'),
  langDe('de', 'German', 'Deutsch'),
  langEn('en', 'English', 'English'),
  langEs('es', 'Spanish', 'Español'),
  langEt('et', 'Estonian', 'Eesti keel'),
  langFa('fa', 'Persian', 'فارسی'),
  langFi('fi', 'Finnish', 'Suomi'),
  langFr('fr', 'French', 'Français'),
  langHi('hi', 'Hindi', 'हिन्दी'),
  langHu('hu', 'Hungarian', 'Magyar'),
  langGr('el', 'Greek', 'Νέα Ελληνικά'),
  langHr('hr', 'Croatian', 'Hrvatski'),
  langIt('it', 'Italian', 'Italiano'),
  langJa('ja', 'Japanese', '日本語'),
  langKo('ko', 'Korean', '한국어'),
  langLt('lt', 'Lithuanian', 'Lietuvių'),
  langMl('ml', 'Malayalam', 'മലയാളം'),
  langMy('my', 'Burmese', 'Mrãmācā'),
  langNl('nl', 'Dutch', 'Nederlands'),
  langNo('nb', 'Norwegian Bokmål', 'Norsk'),
  langPl('pl', 'Polish', 'Polski'),
  langPt('pt', 'Portuguese', 'Português'),
  langRu('ru', 'Russian', 'Русский язык'),
  langSl('sl', 'Slovenian', 'Slovenščina'),
  langSr('sr', 'Serbian', 'Српски'),
  langSv('sv', 'Swedish', 'Svenska'),
  langSw('sw', 'Swahili', 'Kiswahili'),
  langTh('th', 'Thai', 'ภาษาไทย'),
  langTr('tr', 'Turkish', 'Türkçe'),
  langUk('uk', 'Ukrainian', 'Українська'),
  langVi('vi', 'Vietnamese', 'tiếng Việt'),
  langZh('zh', 'Chinese', '中文');

  const LanguageIconType(this.fileName, this.isoName, this.endonym);

  final String fileName;

  final String endonym;

  final String isoName;

  static LanguageIconType fromStringValue(String value) {
    return LanguageIconType.values.firstWhere((enumId) => enumId.fileName == value);
  }
}
