# Parts Of Speech API - Dart/Flutter Client

Parts Of Speech extracts words from text based on grammatical categories like nouns, verbs, and adjectives. Pass any text passage and a category to receive an array of matching words.

[![pub package](https://img.shields.io/pub/v/apiverve_partsofspeech.svg)](https://pub.dev/packages/apiverve_partsofspeech)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Parts Of Speech API](https://apiverve.com/marketplace/partsofspeech?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_partsofspeech: ^1.2.5
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_partsofspeech/apiverve_partsofspeech.dart';

void main() async {
  final client = PartsofspeechClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'text': 'My friend from college hails from a small countryside village located at the heart of the state. During the last summer vacation, I had an opportunity to visit my friend in his village. I packed up my belongings and boarded the bus bound for the village',
      'partofspeech': 'verbs'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "partofspeech": "verbs",
    "result": [
      "located",
      "had",
      "visit",
      "packed up",
      "boarded",
      "bound"
    ],
    "count": 6
  }
}
```

## API Reference

- **API Home:** [Parts Of Speech API](https://apiverve.com/marketplace/partsofspeech?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/partsofspeech](https://docs.apiverve.com/ref/partsofspeech?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
