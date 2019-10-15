# Exchangerate::Api

API client for [Exchangerate](https://www.exchangerate-api.com)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'exchangerate-api'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install exchangerate-api

## Usage

```ruby
require "exchagerate"
  
client = Exchangerate.new
  
result = client.rates_for('USD')
result.currency_code # "USD"
result.date # 2018-12-31 18:30:00 UTC
result.updated_at # 2019-10-15 02:01:16 UTC
result['EUR'] # 1.1

result = client.rates_for('EUR')
result.each do |currency_code, exchange_rate|
  p "#{currency_code} - #{exchange_rate}"
end

client.currency_codes # ['USD', 'EUR', ....]
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/exchangerate-api. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Exchangerate::Api project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/exchangerate-api/blob/master/CODE_OF_CONDUCT.md).
