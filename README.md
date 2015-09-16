# kumocast cli

cli for kumocast

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'kumocast_cli', git: 'git://github.com/kumocast/kumocast_cli.git'
```

And then execute:

    $ bundle

## Usage

### Add post

```
  $ kumocast add post
```

### Future...

#### Add guest

```
  $ kumocast add guest
```

generate

```
    ---
    layout: post
    title: <%= title %>
    date: <%= datetime %>
    duration: # TODO: Fill this. Example: 1時間30分
    members: <%= members %>
    audio: http://kumocast.jp/audios/<%= audio_file %>
    description: <%= stringify_topics %> などについて話しました。
    number: <%= number %>
    ---

    ### Show Notes

    -
```

#### List guests

```
  $ kumocast show guest
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/kumocast_cli. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
