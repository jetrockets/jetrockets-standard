# Jetrockets::Standard

Rubocop configuration to be used in JetRockets projects.

Current default configuration includes:

* rails 6.1
* ruby 2.7

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'jetrockets-standard'
```

And then execute:

``` bash
  $ bundle
```

Or install it yourself as:

``` bash
  $ gem install jetrockets-standard
```

## Usage with Rails

Put this into your Rubocop configration file

### Rails

```yml
inherit_gem:
  jetrockets-standard: config/rails.yml
```

**How to change your target Rails version?**

```yml
inherit_gem:
  jetrockets-standard: config/rails.yml

AllCops:
  TargetRailsVersion: 6.0
  # TargetRailsVersion: 5.2
```

**How to change your target Ruby version?**

```yml
inherit_gem:
  jetrockets-standard: config/rails.yml

AllCops:
  TargetRubyVersion: 3.0
```

### RubyGems

```yml
inherit_gem:
  jetrockets-standard: config/gems.yml
```

## Why?

![Standards](./assets/standards.png?raw=true "Standards")


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/jetrockets/jetrockets-standard. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Jetrockets::Standard project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/jetrockets/jetrockets-standard/blob/master/CODE_OF_CONDUCT.md).
