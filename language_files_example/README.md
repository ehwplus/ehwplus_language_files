# ARB Editor

Desktop editor for Flutter ARB translation files.

## Open a project

Use the folder button in the toolbar to select either:

- a Flutter app/package that contains `l10n.yaml`
- a monorepo that contains multiple Flutter l10n targets
- a directory that directly contains `.arb` files

When multiple `l10n.yaml` files are found, the app asks which target should be edited.

## Development defaults

For local development inside this repository, the editor still opens the package ARB directory by default:

```sh
packages/ehwplus_language_files/lib/src/localization/arb
```

You can override the startup target with `ARB_DIR`.

## DeepL API key

Set `DEEPL_API_KEY` before starting the example to enable DeepL translations:

```sh
export DEEPL_API_KEY="<your-api-key>"
fvm flutter run -d macos
```

Alternatively, pass the key as a Dart define:

```sh
fvm flutter run -d macos --dart-define=DEEPL_API_KEY="<your-api-key>"
```
