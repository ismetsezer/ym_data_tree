require "ym_data_tree/version"
require 'ym_data_tree/node'

module YmDataTree
  class Tree
    def initialize
      @root = nil
      @in_order_traversal_datas = []
      @post_order_traversal_datas = []
      @pre_order_traversal_datas = []
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
    def clear
      @pre_order_traversal_datas = []
      @in_order_traversal_datas = []
      @post_order_traversal_datas = []
    end
    def traverse(node,*command)
      clear
      if command.first.eql? :pre_order_traversal
        pre_order_traversal(node)
      elsif command.first.eql? :in_order_traversal
        in_order_traversal(node)
      elsif command.first.eql? :post_order_traversal
        post_order_traversal(node)
      elsif command.first.eql? :breadth_first_traversal
        breadth_first_traversal(node)
      elsif command.first.eql? :deep_first_traversal
        deep_first_traversal(self,command[1])
      else
        puts "Unknown Command"
      end
    end

    ##PRIVATE METHODS
    private
      def in_order_traversal(node)
          if node != nil
           in_order_traversal(node.leftChild)
            @in_order_traversal_datas.push(node.data)
           in_order_traversal(node.rightChild)
          end
          @in_order_traversal_datas
      end
      def post_order_traversal(node)
        if node != nil
            post_order_traversal(node.leftChild)
            post_order_traversal(node.rightChild)
            @post_order_traversal_datas.push(node.data)
        end
        @post_order_traversal_datas
      end
      def pre_order_traversal(node)
         if node != nil
           @pre_order_traversal_datas.push(node.data)
           pre_order_traversal(node.leftChild)
           pre_order_traversal(node.rightChild)
         end
         @pre_order_traversal_datas
      end
      def breadth_first_traversal(node)
        if node != nil
            @ordered = [node]
            @quequ = []
            @datas = [node.data]
            count = 0
          while count < 2
            @ordered.each do |node|
              if node != nil
                if node.leftChild != nil
                  @quequ.push(node.leftChild)
                  @datas.push(node.leftChild.data)
                end
                if node.rightChild != nil
                  @quequ.push(node.rightChild)
                  @datas.push(node.rightChild.data)
                end
              end
            end
              @ordered = @quequ
              count += 1
            end
            @datas
          end
      end
      def deep_first_traversal(tree,command)
          @datas = []
          @datas_left = []
          @datas_right = []
          node = tree.root
          if node != nil
            @left = node.leftChild
            @rigth = node.rightChild
            if command.eql? :pre_order_traversal
              @datas_left = tree.traverse(@left,command)
              @datas_right = tree.traverse(@rigth,command)
            elsif command.eql? :in_order_traversal
              @datas_left = tree.traverse(@left,command)
              @datas_right = tree.traverse(@rigth,command)
            elsif command.eql? :post_order_traversal
              @datas_left = tree.traverse(@left,command)
              @datas_right = tree.traverse(@rigth,command)
            end
            @datas_left.each{|data|  @datas.push(data)}
            @datas.push(node.data)
            @datas_right.each{|data| @datas.push(data)}
            @datas
          end
      end
      #PRIVATE METHODS
  end
end
