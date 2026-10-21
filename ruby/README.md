# Parts Of Speech API - Ruby Gem

Parts Of Speech extracts words from text based on grammatical categories like nouns, verbs, and adjectives. Pass any text passage and a category to receive an array of matching words.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_partsofspeech'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_partsofspeech
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_partsofspeech'

# Initialize the client
client = APIVerve::Partsofspeech::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  text: "My friend from college hails from a small countryside village located at the heart of the state. During the last summer vacation, I had an opportunity to visit my friend in his village. I packed up my belongings and boarded the bus bound for the village",
  partofspeech: "verbs"
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ text: "My friend from college hails from a small countryside village located at the heart of the state. During the last summer vacation, I had an opportunity to visit my friend in his village. I packed up my belongings and boarded the bus bound for the village", partofspeech: "verbs" })
  puts response["data"]
rescue APIVerve::Partsofspeech::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Partsofspeech::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Partsofspeech::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
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

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/partsofspeech?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/partsofspeech?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/partsofspeech?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
