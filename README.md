# Remote Manifest
Fetch sprockets manifest file from a remote URL

## Usage
```ruby
Rails.application.configure do
  config.assets.remote_manifest = 'https://static.my-app.com/manifest.json'
end
```

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'remote_manifest'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install remote_manifest
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
