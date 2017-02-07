# YmDataTree
[![Coverage Status](https://coveralls.io/repos/github/ismetsezer/ym_data_tree/badge.svg)](https://coveralls.io/github/ismetsezer/ym_data_tree)

[![Build Status](https://travis-ci.org/ismetsezer/ym_data_tree.svg?branch=master)](https://travis-ci.org/ismetsezer/ym_data_tree)
## Installation

```ruby
gem 'ym_data_tree'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ym_data_tree

## Usage
Example 1
```ruby
  require 'ym_data_tree'
  tree = YmDataTree::Tree.new
  datas = [10,6,8,5,12,11,15]
  datas.each do |data|
    tree.insert(data)
  end
  #Then Traverse The Tree
  tree.in_order_traversal(tree.root)
  in_order_traversal_datas = tree.getDatas
  #->[5,6,8,10,11,12,15]
```
## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are at https://github.com/ismetsezer/ym_data_tree.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
