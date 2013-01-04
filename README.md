# SymbolizeAll

Symbolizes everything possible in a Hash or Array.

Converts every possible key/value inside a Hash or Array into its symbolized version, recursively.

## Installation

Add this line to your application's Gemfile:

    gem 'symbolize_all'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install symbolize_all

## Usage

    > {'friend' => 'mary','enemy' => 'peter'}.symbolize_all
    => {:friend=>:mary, :enemy=>:peter}

    > {'friend' => 'mary','number' => 1, 5 => 10}.symbolize_all
    => {:friend=>:mary, :number=>1, 5=>10}

    > {'friend' => 'normal', 'nested' => {"one" => "two"}}.symbolize_all
    => {:friend=>:normal, :nested=>{:one=>:two}}

More ussage examples and results can be found in `spec/symbolize_all_spec.rb`

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
