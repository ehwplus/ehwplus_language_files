import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:language_files_example/src/service/deepl_translation_service.dart';

void main() {
  test('protects do-not-translate terms during translation and removes protection tags afterwards', () async {
    final service = DeepLTranslationService(
      apiKey: 'test-key',
      client: MockClient((request) async {
        final body = request.bodyFields;
        expect(body['text'], 'Use <x>EHW+</x> with <x>Home Assistant</x> and <arbvar>{count}</arbvar>.');
        expect(body['tag_handling'], 'xml');
        expect(body['ignore_tags'], 'arbvar,x');

        return http.Response(
          jsonEncode({
            'translations': [
              {'text': 'Nutze <x>EHW+</x> mit <x>Home Assistant</x> und <arbvar>{count}</arbvar>.'},
            ],
          }),
          200,
        );
      }),
      doNotTranslateTerms: const ['EHW+', 'Home Assistant'],
    );
    addTearDown(service.close);

    final translated = await service.translate(
      text: 'Use EHW+ with Home Assistant and {count}.',
      targetLang: 'de',
      sourceLang: 'en',
    );

    expect(translated, 'Nutze EHW+ mit Home Assistant und {count}.');
  });

  test('does not protect terms inside larger words', () async {
    final service = DeepLTranslationService(
      apiKey: 'test-key',
      client: MockClient((request) async {
        expect(request.bodyFields['text'], 'Tibberish uses <x>Tibber</x>.');

        return http.Response(
          jsonEncode({
            'translations': [
              {'text': 'Tibberish nutzt <x>Tibber</x>.'},
            ],
          }),
          200,
        );
      }),
      doNotTranslateTerms: const ['Tibber'],
    );
    addTearDown(service.close);

    final translated = await service.translate(text: 'Tibberish uses Tibber.', targetLang: 'de', sourceLang: 'en');

    expect(translated, 'Tibberish nutzt Tibber.');
  });

  test('sends formal formality for supported target languages when German source uses Sie', () async {
    final service = DeepLTranslationService(
      apiKey: 'test-key',
      client: MockClient((request) async {
        expect(request.bodyFields['formality'], 'prefer_more');

        return http.Response(
          jsonEncode({
            'translations': [
              {'text': 'Voulez-vous enregistrer votre relevé de compteur ?'},
            ],
          }),
          200,
        );
      }),
    );
    addTearDown(service.close);

    await service.translate(text: 'Möchten Sie Ihren Zählerstand speichern?', targetLang: 'fr', sourceLang: 'de');
  });

  test('sends informal formality for supported target languages when German source uses du', () async {
    final service = DeepLTranslationService(
      apiKey: 'test-key',
      client: MockClient((request) async {
        expect(request.bodyFields['formality'], 'prefer_less');

        return http.Response(
          jsonEncode({
            'translations': [
              {'text': '¿Quieres guardar la lectura del contador?'},
            ],
          }),
          200,
        );
      }),
    );
    addTearDown(service.close);

    await service.translate(text: 'Möchtest du deinen Zählerstand speichern?', targetLang: 'es', sourceLang: 'de');
  });

  test('detects formality per ICU option', () async {
    var requestCount = 0;
    final service = DeepLTranslationService(
      apiKey: 'test-key',
      client: MockClient((request) async {
        final body = request.bodyFields;
        requestCount += 1;

        if (requestCount == 1) {
          expect(body['text'], 'Bei Widerruf wirst du ausgeloggt.');
          expect(body['formality'], 'prefer_less');
          return http.Response(
            jsonEncode({
              'translations': [
                {'text': 'Se revochi, verrai disconnesso.'},
              ],
            }),
            200,
          );
        }

        expect(body['text'], 'Bei Widerruf werden Sie ausgeloggt.');
        expect(body['formality'], 'prefer_more');
        return http.Response(
          jsonEncode({
            'translations': [
              {'text': 'Se revoca, verra disconnesso.'},
            ],
          }),
          200,
        );
      }),
    );
    addTearDown(service.close);

    final translated = await service.translate(
      text:
          '{client, select, campusSearch{} verdi{Bei Widerruf wirst du ausgeloggt.} other{Bei Widerruf werden Sie ausgeloggt.}}',
      targetLang: 'it',
      sourceLang: 'de',
    );

    expect(requestCount, 2);
    expect(
      translated,
      '{client, select, campusSearch {} verdi {Se revochi, verrai disconnesso.} other {Se revoca, verra disconnesso.}}',
    );
  });

  test('sends formal formality when German address detection is inconclusive', () async {
    final service = DeepLTranslationService(
      apiKey: 'test-key',
      client: MockClient((request) async {
        expect(request.bodyFields['formality'], 'prefer_more');

        return http.Response(
          jsonEncode({
            'translations': [
              {'text': 'Lecture du compteur enregistrée.'},
            ],
          }),
          200,
        );
      }),
    );
    addTearDown(service.close);

    await service.translate(text: 'Zählerstand gespeichert.', targetLang: 'fr', sourceLang: 'de');
  });

  test(
    'sends formal formality for unsupported target languages when German address detection is inconclusive',
    () async {
      final service = DeepLTranslationService(
        apiKey: 'test-key',
        client: MockClient((request) async {
          expect(request.bodyFields['formality'], 'prefer_more');

          return http.Response(
            jsonEncode({
              'translations': [
                {'text': 'Translated text.'},
              ],
            }),
            200,
          );
        }),
      );
      addTearDown(service.close);

      await service.translate(text: 'Zählerstand gespeichert.', targetLang: 'hu', sourceLang: 'de');
    },
  );

  test('sends preferred formality for unsupported target languages when German address is detected', () async {
    final service = DeepLTranslationService(
      apiKey: 'test-key',
      client: MockClient((request) async {
        expect(request.bodyFields['formality'], 'prefer_less');

        return http.Response(
          jsonEncode({
            'translations': [
              {'text': 'Translated text.'},
            ],
          }),
          200,
        );
      }),
    );
    addTearDown(service.close);

    await service.translate(text: 'Möchtest du deinen Zählerstand speichern?', targetLang: 'hu', sourceLang: 'de');
  });
}
