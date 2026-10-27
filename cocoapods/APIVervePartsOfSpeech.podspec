Pod::Spec.new do |s|
  s.name             = 'APIVervePartsOfSpeech'
  s.version          = '1.2.3'
  s.summary          = 'Parts Of Speech extracts words from text based on grammatical categories like nouns, verbs, and adjectives.'
  s.description      = <<-'DESC'
Parts Of Speech extracts words from text based on grammatical categories like nouns, verbs, and adjectives. Pass any text passage and a category to receive an array of matching words.

This iOS/macOS SDK provides a convenient way to access the Parts Of Speech from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/partsofspeech?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/partsofspeech-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVervePartsOfSpeech/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
