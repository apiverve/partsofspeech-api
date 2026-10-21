# Parts Of Speech API - PHP Package

Parts Of Speech extracts words from text based on grammatical categories like nouns, verbs, and adjectives. Pass any text passage and a category to receive an array of matching words.

## Installation

Install via Composer:

```bash
composer require apiverve/partsofspeech
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Partsofspeech\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'text' => 'My friend from college hails from a small countryside village located at the heart of the state. During the last summer vacation, I had an opportunity to visit my friend in his village. I packed up my belongings and boarded the bus bound for the village',
    'partofspeech' => 'verbs'
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Partsofspeech\Client;
use APIVerve\Partsofspeech\Exceptions\APIException;
use APIVerve\Partsofspeech\Exceptions\ValidationException;

try {
    $response = $client->execute(['text' => 'My friend from college hails from a small countryside village located at the heart of the state. During the last summer vacation, I had an opportunity to visit my friend in his village. I packed up my belongings and boarded the bus bound for the village', 'partofspeech' => 'verbs']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/partsofspeech?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/partsofspeech?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/partsofspeech?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
