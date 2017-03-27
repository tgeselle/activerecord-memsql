# ActiveRecord MemSQL Adapter

The ActiveRecod MemSQL Adapter is an ActiveRecord connection adapter based on the standard mysql2 adapter.
This adapter is a customized version of the mysql2 adapter to provide support for MemSQL. 

This gem has been tested with Rails 5, Ruby 2.3 and 2.4.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'activerecord-memsql'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install activerecord-memsql

## Usage

In you database.yml, you just have to replace mysql2 with memsql. Here's an exemple:

```
default: &default
  adapter: memsql
  encoding: utf8
  pool: 5

development:
  <<: *default
  username: root
  host: 127.0.0.1
  database: 
  password:
  socket: /memsql.sock # Don't forget to edit this line!
```

You can use this command to retrieve the socket path of your MemSQL DB. Replace 127.1 with the ip of your server:

    $ mysql -u root -h 127.1 -P 3306 -e "show variables like 'socket'"


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/tgeselle/activerecord-memsql. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

