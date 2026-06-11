import 'package:flutter/widgets.dart';
import 'package:language_files_example/src/localization/generated/arb_editor_localizations.dart';

export 'package:language_files_example/src/localization/generated/arb_editor_localizations.dart';

extension ArbEditorLocalizationsX on BuildContext {
  ArbEditorLocalizations get l10n => ArbEditorLocalizations.of(this)!;
}
