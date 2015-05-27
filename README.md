# OS

The gem helps identify the host system OS.
The original source was found <a href="http://stackoverflow.com/questions/11784109/detecting-operating-systems-in-ruby">here</a>

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'os', :github => 'lkfken/os'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install os

## Usage

```ruby
OS.host # :windows, :macosx, :linux, :unix, or raise OS::UnknownError
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/os/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
