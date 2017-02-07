require "spec_helper"

class TestClass
  def initialize
    @root = YmDataTree::Tree.new
    @datas = [10,6,8,5,12,15,11]
    @datas.each do |data|
      @root.insert(data)
    end
  def in_order_travers
      @root.in_order_traversal(@root.root)
      @root.getDatas
  end
  def post_order_travers
    @root.post_order_traversal(@root.root)
    @root.getDatas
  end
  def pre_order_travers
      @root.pre_order_traversal(@root.root)
      @root.getDatas
  end
end

describe YmDataTree do
  context "Ym-Data-Tree In-Order-Traversal" do
    it "Class definition" do
      @test = TestClass.new
      expect(@test.in_order_travers).to eql([5,6,8,10,11,12,15])
     end
  end
  context "Ym-Data-Tree Post-Order-Traversal" do
    it "Class Definition" do
      @test = TestClass.new
      expect(@test.post_order_travers).to eql([5,8,6,11,15,12,10])
    end
  end
  context "Ym-Data-Tree Pre-Order-Traversal" do
    it "Class Definition" do
      @test = TestClass.new
      expect(@test.pre_order_travers).to eql([10,6,5,8,12,11,15])
    end
  end
end
end
