# AsplesSinatra
[![Gem Version](https://badge.fury.io/rb/asples_sinatra.svg)](https://badge.fury.io/rb/asples_sinatra)

Helpers for basic Sinatra applications.
Currently a helper for generating bootstrap formatted input fields for ActiveRecord objects.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'asples_sinatra'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install asples_sinatra

## Usage
E.g. in your app.rb
```ruby
require 'asples_sinatra'
```

E.g. using haml
```haml
haml "= input :name, object: @user, label: 'Full name', placeholder: 'Enter your full name'"
```
This outputs

```html
<div class="form-group has-error">
  <label class="control-label" for="name">Full name:</label>
  <input class="form-control" name="name" placeholder="Enter your full name" type="text" value="John Doe">
  <span class="help-block">
    An error has occured
  </span>
</div>
```

To execute example app:

    $ ruby app.rb

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/asplespng/asples_sinatra. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
