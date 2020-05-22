# Heartcheck::ActiveRecord

[![Build Status](https://travis-ci.org/locaweb/heartcheck-activerecord.svg)](https://travis-ci.org/locaweb/heartcheck-activerecord)
[![Code Climate](https://codeclimate.com/github/locaweb/heartcheck-activerecord/badges/gpa.svg)](https://codeclimate.com/github/locaweb/heartcheck-activerecord)

##A plugin to check activerecord connection with [heartcheck](https://github.com/locaweb/heartcheck).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'heartcheck-activerecord'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install heartcheck-activerecord

## Usage

You can check any ActiveRecord connection that there's in your app.
Each service need to respond to `:name` (an indetifier) and `:connection` (an activerecord connection)
This service need be added with dynamic service;

```ruby
Heartcheck.setup do |config|
  config.add :activerecord do |c|
    c.register_dynamic_services do 
      [{name: 'activerecord', connection: ActiveRecord::Base.connection}]
    end
  end
end
```

### Check Heartcheck example [here](https://github.com/locaweb/heartcheck/blob/master/lib/heartcheck/generators/templates/config.rb)

## License
* [MIT License](https://github.com/locaweb/heartcheck-activerecord/blob/master/LICENSE.txt)

## Contributing

You can use a CLI script in order to setup the project in your machine. Don't
worry about ruby versions, or other project dependencies, you just need to have
docker 19.03 or later installed.

Just run `./scripts/heartcheck help` in order to see the options available

1. Fork it ( https://github.com/locaweb/heartcheck-activerecord/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
