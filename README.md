# Heartcheck::ActiveRecord

A plugin to check activerecord connection with heartcheck

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
Each service need to respond to `:name` (a indetifier) and `:connection` (an activerecord connection);

```ruby
Heartcheck.setup do |config|
  config.add :activerecord do |c|
    c.add_service(name: 'activerecord', connection: ActiveRecord::Base.connection)
  end
end
```

## Contributing

1. Fork it ( https://github.com/locaweb/heartcheck-activerecord/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
