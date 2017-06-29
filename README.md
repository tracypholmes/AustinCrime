# AustinCrime

CLI gem that allows users to view Austin crime reports by crime type.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'austin_crime'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install austin_crime

Run from terminal with:

    austin_crime

## Usage

Run the gem and the program will provide you with 5 crime types. You can then type the number of the type you want to read more about and the terminal will display the one full result. If you want to view more, you can type 'more', and it will show you 10 full crimes. You can also type "List" to display the list of types again,  or "q" to quit the program.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/tracypholmes/austin_crime. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
