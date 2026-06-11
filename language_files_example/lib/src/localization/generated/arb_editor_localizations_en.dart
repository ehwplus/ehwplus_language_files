// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'arb_editor_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class ArbEditorLocalizationsEn extends ArbEditorLocalizations {
  ArbEditorLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'ARB Editor';

  @override
  String get openProjectOrArbFolderFirst => 'Please open a Flutter project or ARB folder.';

  @override
  String get folderPickerUnavailableOnWeb => 'Folder selection is not available on the web.';

  @override
  String get openProjectOrArbFolderDialogTitle => 'Open Flutter project or ARB folder';

  @override
  String get noL10nOrArbFilesFound => 'No l10n.yaml or ARB files were found in this folder.';

  @override
  String get selectL10nTargetTitle => 'Select l10n target';

  @override
  String get deepLKeySet => 'DeepL key set';

  @override
  String get deepLKeyMissing => 'DeepL key missing';

  @override
  String get openProjectFirst => 'Please open a project first.';

  @override
  String doNotTranslateReadFailed(Object error) {
    return 'Could not read do_not_translate.json: $error';
  }

  @override
  String get doNotTranslateSaved => 'do_not_translate.json was saved.';

  @override
  String doNotTranslateSaveFailed(Object error) {
    return 'Could not save do_not_translate.json: $error';
  }

  @override
  String get enterDeepLApiKey => 'Please enter a DeepL API key (DEEPL_AUTH_KEY).';

  @override
  String get noArbLocalesAvailable => 'No ARB languages available.';

  @override
  String get noMissingTranslationsFound => 'No missing translations found.';

  @override
  String get startTranslation => 'Starting translation...';

  @override
  String translatingKeyToLocale(Object key, Object locale) {
    return 'Translating $key → $locale';
  }

  @override
  String deepLQuotaReachedWithError(Object error) {
    return 'DeepL quota reached: $error';
  }

  @override
  String get deepLQuotaReached => 'DeepL quota reached.';

  @override
  String regenerationFailed(Object error) {
    return 'Regeneration failed: $error';
  }

  @override
  String get abortedBecauseOfQuota => 'Aborted because of quota.';

  @override
  String get translationCompleted => 'Translation completed.';

  @override
  String localeUnavailable(Object locale) {
    return 'Locale $locale is not available.';
  }

  @override
  String get dartFilesRegenerated => 'Dart files were regenerated.';

  @override
  String keyAdded(Object key) {
    return 'Key $key was added.';
  }

  @override
  String saveFailed(Object error) {
    return 'Save failed: $error';
  }

  @override
  String get noLocaleTemplateFound => 'No template found for creating the language.';

  @override
  String localeAdded(Object locale) {
    return '$locale was added.';
  }

  @override
  String languageAddFailed(Object error) {
    return 'Could not add language: $error';
  }

  @override
  String get editDoNotTranslateTooltip => 'Edit do_not_translate.json';

  @override
  String get addMissingLanguageTooltip => 'Add missing language';

  @override
  String get translateMissingButton => 'Translate missing';

  @override
  String get addNewKeyTooltip => 'Add new key';

  @override
  String get reloadTooltip => 'Reload';

  @override
  String get quotaDisabledMessage => 'DeepL quota reached. Translations are currently disabled.';

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
  String get searchLabel => 'Filter by text or key (all languages)';

  @override
  String entryCount(Object count) {
    return '$count entries';
  }

  @override
  String get openProjectAction => 'Open project';

  @override
  String get retryAction => 'Try again';

  @override
  String get noEntriesFound => 'No entries found.';

  @override
  String get noProjectOpen => 'No project open';

  @override
  String get arbFolderType => 'ARB folder';

  @override
  String get openAction => 'Open';

  @override
  String get switchAction => 'Switch';

  @override
  String get loadArbFilesFailedTitle => 'Could not load ARB files';

  @override
  String get doNotTranslateTitle => 'do_not_translate.json';

  @override
  String get termsLabel => 'Terms';

  @override
  String get oneLinePerEntry => 'One entry per line';

  @override
  String get cancelAction => 'Cancel';

  @override
  String get saveAction => 'Save';

  @override
  String get addLanguageTitle => 'Add language';

  @override
  String get filterLabel => 'Filter';

  @override
  String get noLanguageFound => 'No language found.';

  @override
  String get addTranslationValidationEmpty => 'Key and text must not be empty.';

  @override
  String get keyAlreadyExists => 'Key already exists.';

  @override
  String get addTextTitle => 'Add new text';

  @override
  String get keyLabel => 'Key';

  @override
  String get languageLabel => 'Language';

  @override
  String get textLabel => 'Text';

  @override
  String get addAction => 'Add';

  @override
  String get deleteKeyTitle => 'Delete key?';

  @override
  String deleteKeyQuestion(Object key) {
    return 'Should key \"$key\" be removed from all ARB files?';
  }

  @override
  String get deleteAction => 'Delete';

  @override
  String get translationImpossibleQuota => 'DeepL quota reached. Translation is not possible.';

  @override
  String get noSourceLocaleWithText => 'No source language with text found.';

  @override
  String sourceTextEmpty(Object locale) {
    return 'Source text for $locale is empty.';
  }

  @override
  String translatingTo(Object locale) {
    return 'Translating to $locale...';
  }

  @override
  String translationSaved(Object locale) {
    return 'Translation for $locale saved.';
  }

  @override
  String get abortedQuota => 'Aborted: DeepL quota reached.';

  @override
  String get translationError => 'Translation failed.';

  @override
  String get allTargetLanguagesHaveText => 'All target languages already have text.';

  @override
  String startTranslationForLanguageCount(Object count) {
    return 'Starting translation ($count languages)...';
  }

  @override
  String translatingLocaleProgress(Object locale, Object done, Object total) {
    return 'Translating $locale ($done/$total)';
  }

  @override
  String translationErrorForLocale(Object locale) {
    return 'Error for $locale.';
  }

  @override
  String get editKeyTitle => 'Edit key';

  @override
  String get keyMustNotBeEmpty => 'Key must not be empty.';

  @override
  String get clearOtherLocalesLabel => 'Clear other values\nwhen changed';

  @override
  String get deleteKeyTooltip => 'Delete key';

  @override
  String get translateAllAction => 'Translate all';

  @override
  String textForLocale(Object locale) {
    return 'Text for $locale';
  }

  @override
  String translateLocaleTooltip(Object locale) {
    return 'Translate with DeepL to $locale';
  }

  @override
  String get deepLApiKeyTitle => 'DeepL API key';

  @override
  String get deepLApiKeyLabel => 'DeepL API key';
}
