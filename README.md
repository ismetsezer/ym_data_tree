# YmDataTree
[![Coverage Status](https://coveralls.io/repos/github/ismetsezer/ym_data_tree/badge.svg)](https://coveralls.io/github/ismetsezer/ym_data_tree)
[![Build Status](https://travis-ci.org/ismetsezer/ym_data_tree.svg?branch=master)](https://travis-ci.org/ismetsezer/ym_data_tree)
## Installation

```ruby
gem 'ym_data_tree'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install ym_data_tree

## Usage
*In Order/ Post Order / Pre Order Traversal Example*
```ruby
  require 'ym_data_tree'
  tree = YmDataTree::Tree.new
  datas = [10,6,8,5,12,11,15]
  datas.each do |data|
    tree.insert(data)
  end
  #Then Traverse The Tree
  tree.traverse(tree.root,:in_order_traversal)
  #->[5,6,8,10,11,12,15]

  tree.traverse(tree.root,:pre_order_traversal)
  #->[10,6,5,8,12,11,15]

  tree.traverse(tree.root,:post_order_traversal)

  #->[5,8,6,11,15,12]
```

*Breadth First Traversal*
```ruby
require 'ym_data_tree'
tree = YmDataTree::Tree.new
datas =  [10,6,8,5,12,11,15]
datas.each do |data|
  tree.insert(data)
end

tree.traverse(tree.root,:breadth_first_traversal)
#->[10,6,12,8,11,5,15]

```

```ruby
require 'ym_data_tree'
tree = YmDataTree::Tree.new
datas =  [10,6,8,5,12,11,15]
datas.each do |data|
  tree.insert(data)
end

tree.traverse(tree.root,:deep_first_traversal,:pre_order_traversal)
#->  [6, 5, 8, 10, 12, 11, 15]

tree.traverse(tree.root,:deep_first_traversal,:in_order_traversal)
 #-> [5, 6, 8, 10, 11, 12, 15]

tree.traverse(tree.root,:deep_first_traversal,:post_order_traversal)

#->[5, 8, 6, 10, 11, 15, 12]
```


## Contributing

Bug reports and pull requests are at https://github.com/ismetsezer/ym_data_tree.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
