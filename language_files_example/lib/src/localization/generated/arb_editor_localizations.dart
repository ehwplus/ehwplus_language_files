import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'arb_editor_localizations_de.dart';
import 'arb_editor_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of ArbEditorLocalizations
/// returned by `ArbEditorLocalizations.of(context)`.
///
/// Applications need to include `ArbEditorLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/arb_editor_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: ArbEditorLocalizations.localizationsDelegates,
///   supportedLocales: ArbEditorLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the ArbEditorLocalizations.supportedLocales
/// property.
abstract class ArbEditorLocalizations {
  ArbEditorLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static ArbEditorLocalizations? of(BuildContext context) {
    return Localizations.of<ArbEditorLocalizations>(context, ArbEditorLocalizations);
  }

  static const LocalizationsDelegate<ArbEditorLocalizations> delegate = _ArbEditorLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[Locale('de'), Locale('en')];

  /// No description provided for @appTitle.
  ///
  /// In de, this message translates to:
  /// **'ARB Editor'**
  String get appTitle;

  /// No description provided for @openProjectOrArbFolderFirst.
  ///
  /// In de, this message translates to:
  /// **'Bitte ein Flutter-Projekt oder einen ARB-Ordner öffnen.'**
  String get openProjectOrArbFolderFirst;

  /// No description provided for @folderPickerUnavailableOnWeb.
  ///
  /// In de, this message translates to:
  /// **'Ordnerauswahl ist im Web nicht verfügbar.'**
  String get folderPickerUnavailableOnWeb;

  /// No description provided for @openProjectOrArbFolderDialogTitle.
  ///
  /// In de, this message translates to:
  /// **'Flutter-Projekt oder ARB-Ordner öffnen'**
  String get openProjectOrArbFolderDialogTitle;

  /// No description provided for @noL10nOrArbFilesFound.
  ///
  /// In de, this message translates to:
  /// **'In diesem Ordner wurden keine l10n.yaml und keine ARB-Dateien gefunden.'**
  String get noL10nOrArbFilesFound;

  /// No description provided for @selectL10nTargetTitle.
  ///
  /// In de, this message translates to:
  /// **'L10n-Target auswählen'**
  String get selectL10nTargetTitle;

  /// No description provided for @deepLKeySet.
  ///
  /// In de, this message translates to:
  /// **'DeepL-Key gesetzt'**
  String get deepLKeySet;

  /// No description provided for @deepLKeyMissing.
  ///
  /// In de, this message translates to:
  /// **'DeepL-Key fehlt'**
  String get deepLKeyMissing;

  /// No description provided for @openProjectFirst.
  ///
  /// In de, this message translates to:
  /// **'Bitte zuerst ein Projekt öffnen.'**
  String get openProjectFirst;

  /// No description provided for @doNotTranslateReadFailed.
  ///
  /// In de, this message translates to:
  /// **'do_not_translate.json konnte nicht gelesen werden: {error}'**
  String doNotTranslateReadFailed(Object error);

  /// No description provided for @doNotTranslateSaved.
  ///
  /// In de, this message translates to:
  /// **'do_not_translate.json wurde gespeichert.'**
  String get doNotTranslateSaved;

  /// No description provided for @doNotTranslateSaveFailed.
  ///
  /// In de, this message translates to:
  /// **'do_not_translate.json konnte nicht gespeichert werden: {error}'**
  String doNotTranslateSaveFailed(Object error);

  /// No description provided for @enterDeepLApiKey.
  ///
  /// In de, this message translates to:
  /// **'Bitte DeepL API-Key eintragen (DEEPL_AUTH_KEY).'**
  String get enterDeepLApiKey;

  /// No description provided for @noArbLocalesAvailable.
  ///
  /// In de, this message translates to:
  /// **'Keine ARB-Sprachen verfügbar.'**
  String get noArbLocalesAvailable;

  /// No description provided for @noMissingTranslationsFound.
  ///
  /// In de, this message translates to:
  /// **'Keine fehlenden Übersetzungen gefunden.'**
  String get noMissingTranslationsFound;

  /// No description provided for @startTranslation.
  ///
  /// In de, this message translates to:
  /// **'Starte Übersetzung...'**
  String get startTranslation;

  /// No description provided for @translatingKeyToLocale.
  ///
  /// In de, this message translates to:
  /// **'Übersetze {key} → {locale}'**
  String translatingKeyToLocale(Object key, Object locale);

  /// No description provided for @deepLQuotaReachedWithError.
  ///
  /// In de, this message translates to:
  /// **'DeepL-Quota erreicht: {error}'**
  String deepLQuotaReachedWithError(Object error);

  /// No description provided for @deepLQuotaReached.
  ///
  /// In de, this message translates to:
  /// **'DeepL-Quota erreicht.'**
  String get deepLQuotaReached;

  /// No description provided for @regenerationFailed.
  ///
  /// In de, this message translates to:
  /// **'Regenerierung fehlgeschlagen: {error}'**
  String regenerationFailed(Object error);

  /// No description provided for @abortedBecauseOfQuota.
  ///
  /// In de, this message translates to:
  /// **'Abgebrochen wegen Quota.'**
  String get abortedBecauseOfQuota;

  /// No description provided for @translationCompleted.
  ///
  /// In de, this message translates to:
  /// **'Übersetzung abgeschlossen.'**
  String get translationCompleted;

  /// No description provided for @localeUnavailable.
  ///
  /// In de, this message translates to:
  /// **'Locale {locale} ist nicht verfügbar.'**
  String localeUnavailable(Object locale);

  /// No description provided for @dartFilesRegenerated.
  ///
  /// In de, this message translates to:
  /// **'Dart-Dateien wurden neu generiert.'**
  String get dartFilesRegenerated;

  /// No description provided for @keyAdded.
  ///
  /// In de, this message translates to:
  /// **'Key {key} wurde hinzugefügt.'**
  String keyAdded(Object key);

  /// No description provided for @saveFailed.
  ///
  /// In de, this message translates to:
  /// **'Fehler beim Speichern: {error}'**
  String saveFailed(Object error);

  /// No description provided for @noLocaleTemplateFound.
  ///
  /// In de, this message translates to:
  /// **'Keine Vorlage zum Anlegen der Sprache gefunden.'**
  String get noLocaleTemplateFound;

  /// No description provided for @localeAdded.
  ///
  /// In de, this message translates to:
  /// **'{locale} wurde hinzugefügt.'**
  String localeAdded(Object locale);

  /// No description provided for @languageAddFailed.
  ///
  /// In de, this message translates to:
  /// **'Sprache konnte nicht hinzugefügt werden: {error}'**
  String languageAddFailed(Object error);

  /// No description provided for @editDoNotTranslateTooltip.
  ///
  /// In de, this message translates to:
  /// **'do_not_translate.json bearbeiten'**
  String get editDoNotTranslateTooltip;

  /// No description provided for @addMissingLanguageTooltip.
  ///
  /// In de, this message translates to:
  /// **'Fehlende Sprache hinzufügen'**
  String get addMissingLanguageTooltip;

  /// No description provided for @translateMissingButton.
  ///
  /// In de, this message translates to:
  /// **'Fehlende übersetzen'**
  String get translateMissingButton;

  /// No description provided for @addNewKeyTooltip.
  ///
  /// In de, this message translates to:
  /// **'Neuen Key hinzufügen'**
  String get addNewKeyTooltip;

  /// No description provided for @reloadTooltip.
  ///
  /// In de, this message translates to:
  /// **'Neu laden'**
  String get reloadTooltip;

  /// No description provided for @quotaDisabledMessage.
  ///
  /// In de, this message translates to:
  /// **'DeepL-Quota erreicht. Übersetzungen sind aktuell deaktiviert.'**
  String get quotaDisabledMessage;

  /// No description provided for @status.
  ///
  /// In de, this message translates to:
  /// **'Status'**
  String get status;

  /// No description provided for @currentKeyLabel.
  ///
  /// In de, this message translates to:
  /// **'Key: {key}'**
  String currentKeyLabel(Object key);

  /// No description provided for @currentLocaleLabel.
  ///
  /// In de, this message translates to:
  /// **'Locale: {locale}'**
  String currentLocaleLabel(Object locale);

  /// No description provided for @searchLabel.
  ///
  /// In de, this message translates to:
  /// **'Filtern nach Text oder Key (alle Sprachen)'**
  String get searchLabel;

  /// No description provided for @entryCount.
  ///
  /// In de, this message translates to:
  /// **'{count} Einträge'**
  String entryCount(Object count);

  /// No description provided for @openProjectAction.
  ///
  /// In de, this message translates to:
  /// **'Projekt öffnen'**
  String get openProjectAction;

  /// No description provided for @retryAction.
  ///
  /// In de, this message translates to:
  /// **'Erneut versuchen'**
  String get retryAction;

  /// No description provided for @noEntriesFound.
  ///
  /// In de, this message translates to:
  /// **'Keine Einträge gefunden.'**
  String get noEntriesFound;

  /// No description provided for @noProjectOpen.
  ///
  /// In de, this message translates to:
  /// **'Kein Projekt geöffnet'**
  String get noProjectOpen;

  /// No description provided for @arbFolderType.
  ///
  /// In de, this message translates to:
  /// **'ARB-Ordner'**
  String get arbFolderType;

  /// No description provided for @openAction.
  ///
  /// In de, this message translates to:
  /// **'Öffnen'**
  String get openAction;

  /// No description provided for @switchAction.
  ///
  /// In de, this message translates to:
  /// **'Wechseln'**
  String get switchAction;

  /// No description provided for @loadArbFilesFailedTitle.
  ///
  /// In de, this message translates to:
  /// **'Konnte ARB-Dateien nicht laden'**
  String get loadArbFilesFailedTitle;

  /// No description provided for @doNotTranslateTitle.
  ///
  /// In de, this message translates to:
  /// **'do_not_translate.json'**
  String get doNotTranslateTitle;

  /// No description provided for @termsLabel.
  ///
  /// In de, this message translates to:
  /// **'Begriffe'**
  String get termsLabel;

  /// No description provided for @oneLinePerEntry.
  ///
  /// In de, this message translates to:
  /// **'Eine Zeile pro Eintrag'**
  String get oneLinePerEntry;

  /// No description provided for @cancelAction.
  ///
  /// In de, this message translates to:
  /// **'Abbrechen'**
  String get cancelAction;

  /// No description provided for @saveAction.
  ///
  /// In de, this message translates to:
  /// **'Speichern'**
  String get saveAction;

  /// No description provided for @addLanguageTitle.
  ///
  /// In de, this message translates to:
  /// **'Sprache hinzufügen'**
  String get addLanguageTitle;

  /// No description provided for @filterLabel.
  ///
  /// In de, this message translates to:
  /// **'Filtern'**
  String get filterLabel;

  /// No description provided for @noLanguageFound.
  ///
  /// In de, this message translates to:
  /// **'Keine Sprache gefunden.'**
  String get noLanguageFound;

  /// No description provided for @addTranslationValidationEmpty.
  ///
  /// In de, this message translates to:
  /// **'Key und Text dürfen nicht leer sein.'**
  String get addTranslationValidationEmpty;

  /// No description provided for @keyAlreadyExists.
  ///
  /// In de, this message translates to:
  /// **'Key existiert bereits.'**
  String get keyAlreadyExists;

  /// No description provided for @addTextTitle.
  ///
  /// In de, this message translates to:
  /// **'Neuen Text hinzufügen'**
  String get addTextTitle;

  /// No description provided for @keyLabel.
  ///
  /// In de, this message translates to:
  /// **'Key'**
  String get keyLabel;

  /// No description provided for @languageLabel.
  ///
  /// In de, this message translates to:
  /// **'Sprache'**
  String get languageLabel;

  /// No description provided for @textLabel.
  ///
  /// In de, this message translates to:
  /// **'Text'**
  String get textLabel;

  /// No description provided for @addAction.
  ///
  /// In de, this message translates to:
  /// **'Hinzufügen'**
  String get addAction;

  /// No description provided for @deleteKeyTitle.
  ///
  /// In de, this message translates to:
  /// **'Key löschen?'**
  String get deleteKeyTitle;

  /// No description provided for @deleteKeyQuestion.
  ///
  /// In de, this message translates to:
  /// **'Soll der Key \"{key}\" aus allen ARB-Dateien entfernt werden?'**
  String deleteKeyQuestion(Object key);

  /// No description provided for @deleteAction.
  ///
  /// In de, this message translates to:
  /// **'Löschen'**
  String get deleteAction;

  /// No description provided for @translationImpossibleQuota.
  ///
  /// In de, this message translates to:
  /// **'DeepL-Quota erreicht. Übersetzung nicht möglich.'**
  String get translationImpossibleQuota;

  /// No description provided for @noSourceLocaleWithText.
  ///
  /// In de, this message translates to:
  /// **'Keine Quellsprache mit Text gefunden.'**
  String get noSourceLocaleWithText;

  /// No description provided for @sourceTextEmpty.
  ///
  /// In de, this message translates to:
  /// **'Quelltext für {locale} ist leer.'**
  String sourceTextEmpty(Object locale);

  /// No description provided for @translatingTo.
  ///
  /// In de, this message translates to:
  /// **'Übersetze nach {locale}...'**
  String translatingTo(Object locale);

  /// No description provided for @translationSaved.
  ///
  /// In de, this message translates to:
  /// **'Übersetzung für {locale} gespeichert.'**
  String translationSaved(Object locale);

  /// No description provided for @abortedQuota.
  ///
  /// In de, this message translates to:
  /// **'Abgebrochen: DeepL-Quota erreicht.'**
  String get abortedQuota;

  /// No description provided for @translationError.
  ///
  /// In de, this message translates to:
  /// **'Fehler bei der Übersetzung.'**
  String get translationError;

  /// No description provided for @allTargetLanguagesHaveText.
  ///
  /// In de, this message translates to:
  /// **'Alle Zielsprachen haben bereits einen Text.'**
  String get allTargetLanguagesHaveText;

  /// No description provided for @startTranslationForLanguageCount.
  ///
  /// In de, this message translates to:
  /// **'Starte Übersetzung ({count} Sprachen)...'**
  String startTranslationForLanguageCount(Object count);

  /// No description provided for @translatingLocaleProgress.
  ///
  /// In de, this message translates to:
  /// **'Übersetze {locale} ({done}/{total})'**
  String translatingLocaleProgress(Object locale, Object done, Object total);

  /// No description provided for @translationErrorForLocale.
  ///
  /// In de, this message translates to:
  /// **'Fehler bei {locale}.'**
  String translationErrorForLocale(Object locale);

  /// No description provided for @editKeyTitle.
  ///
  /// In de, this message translates to:
  /// **'Key bearbeiten'**
  String get editKeyTitle;

  /// No description provided for @keyMustNotBeEmpty.
  ///
  /// In de, this message translates to:
  /// **'Key darf nicht leer sein.'**
  String get keyMustNotBeEmpty;

  /// No description provided for @clearOtherLocalesLabel.
  ///
  /// In de, this message translates to:
  /// **'Bei Änderung\nandere Werte löschen'**
  String get clearOtherLocalesLabel;

  /// No description provided for @deleteKeyTooltip.
  ///
  /// In de, this message translates to:
  /// **'Key löschen'**
  String get deleteKeyTooltip;

  /// No description provided for @translateAllAction.
  ///
  /// In de, this message translates to:
  /// **'Alle übersetzen'**
  String get translateAllAction;

  /// No description provided for @textForLocale.
  ///
  /// In de, this message translates to:
  /// **'Text für {locale}'**
  String textForLocale(Object locale);

  /// No description provided for @translateLocaleTooltip.
  ///
  /// In de, this message translates to:
  /// **'Mit DeepL nach {locale} übersetzen'**
  String translateLocaleTooltip(Object locale);

  /// No description provided for @deepLApiKeyTitle.
  ///
  /// In de, this message translates to:
  /// **'DeepL API-Key'**
  String get deepLApiKeyTitle;

  /// No description provided for @deepLApiKeyLabel.
  ///
  /// In de, this message translates to:
  /// **'DeepL API-Key'**
  String get deepLApiKeyLabel;
}

class _ArbEditorLocalizationsDelegate extends LocalizationsDelegate<ArbEditorLocalizations> {
  const _ArbEditorLocalizationsDelegate();

  @override
  Future<ArbEditorLocalizations> load(Locale locale) {
    return SynchronousFuture<ArbEditorLocalizations>(lookupArbEditorLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['de', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_ArbEditorLocalizationsDelegate old) => false;
}

ArbEditorLocalizations lookupArbEditorLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'de':
      return ArbEditorLocalizationsDe();
    case 'en':
      return ArbEditorLocalizationsEn();
  }

  throw FlutterError(
    'ArbEditorLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
