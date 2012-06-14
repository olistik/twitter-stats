# Twitter::Stats

Retrieves some Twitter stats using Topsy.

## Installation

Add this line to your application's Gemfile:

    gem 'twitter-stats'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install twitter-stats

## Usage

```bash
twitter-stats <username> <keyword> [days_ago]
```

or directly into your code

```ruby
require 'twitter-stats'

puts Twitter::Stats::Count.new('olistik', 'ruby', 100).value
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
