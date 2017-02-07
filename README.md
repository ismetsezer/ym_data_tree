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
*In Order Traversal Example*
```ruby
  require 'ym_data_tree'
  tree = YmDataTree::Tree.new
  datas = [10,6,8,5,12,11,15]
  datas.each do |data|
    tree.insert(data)
  end
  #Then Traverse The Tree
  tree.in_order_traversal(tree.root)
  print in_order_traversal_datas = tree.getDatas

  #->[5,6,8,10,11,12,15]
```

*Pre Order Traversal Example*
```ruby
require 'ym_data_tree'
tree = YmDataTree::Tree.new
datas =  [10,6,8,5,12,11,15]
datas.each do |data|
  tree.insert(data)
end
tree.pre_order_traversal(tree.root)
print pre_order_traversal_datas = tree.getDatas

#-> [10,6,5,8,12,11,15]
```
*Post Order Traversal Example*
```ruby
require 'ym_data_tree'
tree = YmDataTree::Tree.new
datas =  [10,6,8,5,12,11,15]
datas.each do |data|
  tree.insert(data)
end
tree.post_order_traversal(tree.root)
print post_order_traversal_datas = tree.getDatas

#-> [5,8,6,11,15,12]
```



## Contributing

Bug reports and pull requests are at https://github.com/ismetsezer/ym_data_tree.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
