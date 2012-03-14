# Minitest::RspecShouldSyntax

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'minitest-rspec_should_syntax'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install minitest-rspec_should_syntax

## Usage

TODO: Write usage instructions here

## NOTES

* rewrite a la http://pastie.org/367764 ??? benchmark !
* replace "must_equal true" by assert true, actual ? in benchmark
* use minitest benchmark & https://gist.github.com/894367
* default Minitest.filter_backtrace is very primitive, extract from Turn or Rails/backtrace_cleaner
* guard_minitest always runs all tests for a give test class. Would be good to run only latest failure such as in guard-rspec (RSpec 2)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
