require "ym_data_tree/version"
require 'ym_data_tree/node'

module YmDataTree
  class Tree
    def initialize
      @root = nil
      @in_order_traversal_datas = @post_order_traversal_datas = @pre_order_traversal_datas = []
    end
    attr_accessor :root
    def insert(data)
      @tempNode = Node.new
      @tempNode.data = data
      if @root == nil
        @root = @tempNode
      else
        @current = @root
        @parent = nil
        status = true
        while status
          @parent = @current
          if data < @parent.data
            @current = @current.leftChild
            if @current == nil
              @parent.leftChild = @tempNode
              status = false
            end
          else
            @current = @current.rightChild
            if @current == nil
              @parent.rightChild = @tempNode
              status = false
            end
          end
        end
      end
    end
    def in_order_traversal(node)
        if node != nil
         in_order_traversal(node.leftChild)
          @in_order_traversal_datas.push(node.data)
         in_order_traversal(node.rightChild)
        end
    end
    def post_order_traversal(node)
      if node != nil
          post_order_traversal(node.leftChild)
          post_order_traversal(node.rightChild)
          @post_order_traversal_datas.push(node.data)
      end
    end
    def pre_order_traversal(node)
       if node != nil
         @pre_order_traversal_datas.push(node.data)
         pre_order_traversal(node.leftChild)
         pre_order_traversal(node.rightChild)
       end
    end
    def getDatas
      if @in_order_traversal_datas != nil
        @in_order_traversal_datas
      elsif @post_order_traversal_datas != nil
        @pre_order_traversal_datas
      elsif @pre_order_traversal_datas != nil
        @post_order_traversal_datas
      end
    end
  end
end
