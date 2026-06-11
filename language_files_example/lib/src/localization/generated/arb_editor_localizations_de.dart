// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'arb_editor_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class ArbEditorLocalizationsDe extends ArbEditorLocalizations {
  ArbEditorLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appTitle => 'ARB Editor';

  @override
  String get openProjectOrArbFolderFirst => 'Bitte ein Flutter-Projekt oder einen ARB-Ordner öffnen.';

  @override
  String get folderPickerUnavailableOnWeb => 'Ordnerauswahl ist im Web nicht verfügbar.';

  @override
  String get openProjectOrArbFolderDialogTitle => 'Flutter-Projekt oder ARB-Ordner öffnen';

  @override
  String get noL10nOrArbFilesFound => 'In diesem Ordner wurden keine l10n.yaml und keine ARB-Dateien gefunden.';

  @override
  String get selectL10nTargetTitle => 'L10n-Target auswählen';

  @override
  String get deepLKeySet => 'DeepL-Key gesetzt';

  @override
  String get deepLKeyMissing => 'DeepL-Key fehlt';

  @override
  String get openProjectFirst => 'Bitte zuerst ein Projekt öffnen.';

  @override
  String doNotTranslateReadFailed(Object error) {
    return 'do_not_translate.json konnte nicht gelesen werden: $error';
  }

  @override
  String get doNotTranslateSaved => 'do_not_translate.json wurde gespeichert.';

  @override
  String doNotTranslateSaveFailed(Object error) {
    return 'do_not_translate.json konnte nicht gespeichert werden: $error';
  }

  @override
  String get enterDeepLApiKey => 'Bitte DeepL API-Key eintragen (DEEPL_AUTH_KEY).';

  @override
  String get noArbLocalesAvailable => 'Keine ARB-Sprachen verfügbar.';

  @override
  String get noMissingTranslationsFound => 'Keine fehlenden Übersetzungen gefunden.';

  @override
  String get startTranslation => 'Starte Übersetzung...';

  @override
  String translatingKeyToLocale(Object key, Object locale) {
    return 'Übersetze $key → $locale';
  }

  @override
  String deepLQuotaReachedWithError(Object error) {
    return 'DeepL-Quota erreicht: $error';
  }

  @override
  String get deepLQuotaReached => 'DeepL-Quota erreicht.';

  @override
  String regenerationFailed(Object error) {
    return 'Regenerierung fehlgeschlagen: $error';
  }

  @override
  String get abortedBecauseOfQuota => 'Abgebrochen wegen Quota.';

  @override
  String get translationCompleted => 'Übersetzung abgeschlossen.';

  @override
  String localeUnavailable(Object locale) {
    return 'Locale $locale ist nicht verfügbar.';
  }

  @override
  String get dartFilesRegenerated => 'Dart-Dateien wurden neu generiert.';

  @override
  String keyAdded(Object key) {
    return 'Key $key wurde hinzugefügt.';
  }

  @override
  String saveFailed(Object error) {
    return 'Fehler beim Speichern: $error';
  }

  @override
  String get noLocaleTemplateFound => 'Keine Vorlage zum Anlegen der Sprache gefunden.';

  @override
  String localeAdded(Object locale) {
    return '$locale wurde hinzugefügt.';
  }

  @override
  String languageAddFailed(Object error) {
    return 'Sprache konnte nicht hinzugefügt werden: $error';
  }

  @override
  String get editDoNotTranslateTooltip => 'do_not_translate.json bearbeiten';

  @override
  String get addMissingLanguageTooltip => 'Fehlende Sprache hinzufügen';

  @override
  String get translateMissingButton => 'Fehlende übersetzen';

  @override
  String get addNewKeyTooltip => 'Neuen Key hinzufügen';

  @override
  String get reloadTooltip => 'Neu laden';

  @override
  String get quotaDisabledMessage => 'DeepL-Quota erreicht. Übersetzungen sind aktuell deaktiviert.';

  @override
  String get status => 'Status';

  @override
  String currentKeyLabel(Object key) {
    return 'Key: $key';
  }

  @override
  String currentLocaleLabel(Object locale) {
    return 'Locale: $locale';
  }

  @override
  String get searchLabel => 'Filtern nach Text oder Key (alle Sprachen)';

  @override
  String entryCount(Object count) {
    return '$count Einträge';
  }

  @override
  String get openProjectAction => 'Projekt öffnen';

  @override
  String get retryAction => 'Erneut versuchen';

  @override
  String get noEntriesFound => 'Keine Einträge gefunden.';

  @override
  String get noProjectOpen => 'Kein Projekt geöffnet';

  @override
  String get arbFolderType => 'ARB-Ordner';

  @override
  String get openAction => 'Öffnen';

  @override
  String get switchAction => 'Wechseln';

  @override
  String get loadArbFilesFailedTitle => 'Konnte ARB-Dateien nicht laden';

  @override
  String get doNotTranslateTitle => 'do_not_translate.json';

  @override
  String get termsLabel => 'Begriffe';

  @override
  String get oneLinePerEntry => 'Eine Zeile pro Eintrag';

  @override
  String get cancelAction => 'Abbrechen';

  @override
  String get saveAction => 'Speichern';

  @override
  String get addLanguageTitle => 'Sprache hinzufügen';

  @override
  String get filterLabel => 'Filtern';

  @override
  String get noLanguageFound => 'Keine Sprache gefunden.';

  @override
  String get addTranslationValidationEmpty => 'Key und Text dürfen nicht leer sein.';

  @override
  String get keyAlreadyExists => 'Key existiert bereits.';

  @override
  String get addTextTitle => 'Neuen Text hinzufügen';

  @override
  String get keyLabel => 'Key';

  @override
  String get languageLabel => 'Sprache';

  @override
  String get textLabel => 'Text';

  @override
  String get addAction => 'Hinzufügen';

  @override
  String get deleteKeyTitle => 'Key löschen?';

  @override
  String deleteKeyQuestion(Object key) {
    return 'Soll der Key \"$key\" aus allen ARB-Dateien entfernt werden?';
  }

  @override
  String get deleteAction => 'Löschen';

  @override
  String get translationImpossibleQuota => 'DeepL-Quota erreicht. Übersetzung nicht möglich.';

  @override
  String get noSourceLocaleWithText => 'Keine Quellsprache mit Text gefunden.';

  @override
  String sourceTextEmpty(Object locale) {
    return 'Quelltext für $locale ist leer.';
  }

  @override
  String translatingTo(Object locale) {
    return 'Übersetze nach $locale...';
  }

  @override
  String translationSaved(Object locale) {
    return 'Übersetzung für $locale gespeichert.';
  }

  @override
  String get abortedQuota => 'Abgebrochen: DeepL-Quota erreicht.';

  @override
  String get translationError => 'Fehler bei der Übersetzung.';

  @override
  String get allTargetLanguagesHaveText => 'Alle Zielsprachen haben bereits einen Text.';

  @override
  String startTranslationForLanguageCount(Object count) {
    return 'Starte Übersetzung ($count Sprachen)...';
  }

  @override
  String translatingLocaleProgress(Object locale, Object done, Object total) {
    return 'Übersetze $locale ($done/$total)';
  }

  @override
  String translationErrorForLocale(Object locale) {
    return 'Fehler bei $locale.';
  }

  @override
  String get editKeyTitle => 'Key bearbeiten';

  @override
  String get keyMustNotBeEmpty => 'Key darf nicht leer sein.';

  @override
  String get clearOtherLocalesLabel => 'Bei Änderung\nandere Werte löschen';

  @override
  String get deleteKeyTooltip => 'Key löschen';

  @override
  String get translateAllAction => 'Alle übersetzen';

  @override
  String textForLocale(Object locale) {
    return 'Text für $locale';
  }

  @override
  String translateLocaleTooltip(Object locale) {
    return 'Mit DeepL nach $locale übersetzen';
  }

  @override
  String get deepLApiKeyTitle => 'DeepL API-Key';

  @override
  String get deepLApiKeyLabel => 'DeepL API-Key';
}
