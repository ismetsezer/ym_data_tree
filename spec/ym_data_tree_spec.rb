require "spec_helper"

class TestClass
  def initialize(datas)
    @root = YmDataTree::Tree.new
    @datas = datas
    @datas.each do |data|
      @root.insert(data)
    end
  def in_order_travers
      @root.traverse(@root.root,:in_order_traversal)
  end
  def post_order_travers
    @root.traverse(@root.root,:post_order_traversal)
  end
  def pre_order_travers
      @root.traverse(@root.root,:pre_order_traversal)
  end
  def bfs
    @root.traverse(@root.root,:breadth_first_traversal)
  end
  def dft(*command)
    @root.traverse(@root,command.first,command[1])
  end
end

describe YmDataTree do
  context "Ym-Data-Tree In-Order-Traversal" do
    it "Test 1" do
      @test = TestClass.new([10,6,8,5,12,15,11])
      @test_2 = TestClass.new([15,7,60,65,6,11,9,12,63,30])
      expect(@test.in_order_travers).to eql([5,6,8,10,11,12,15])
      expect(@test_2.in_order_travers).to eql([6,7,9,11,12,15,30,60,63,65])
     end
  end
  context "Ym-Data-Tree Post-Order-Traversal" do
    it "Test 1" do
      @test = TestClass.new([10,6,8,5,12,15,11])
      @test_2 = TestClass.new([15,7,60,65,6,11,9,12,63,30])

      expect(@test.post_order_travers).to eql([5,8,6,11,15,12,10])
      expect(@test_2.post_order_travers).to eql([6,9,12,11,7,30,63,65,60,15])
    end
  end
  context "Ym-Data-Tree Pre-Order-Traversal" do
    it "Test 1" do
      @test = TestClass.new([10,6,8,5,12,15,11])
      expect(@test.pre_order_travers).to eql([10,6,5,8,12,11,15])
    end
    it "Test 2" do
      @test = TestClass.new([9])
      expect(@test.pre_order_travers).to eql([9])
    end
    it "Test 3" do
      @test = TestClass.new([15,7,60,65,6,11,9,12,63,30])
      expect(@test.pre_order_travers).to eql([15,7,6,11,9,12,60,30,65,63])
    end
  end
  context "Ym-Data-Tree Breadth First Traversal" do
    it "Test 1" do
      @test = TestClass.new([20,10,9,8,12,25,22,30,60,50,70,49,11,15,21,65])
      expect(@test.bfs).to eql([20,10,25,9,12,22,30,8,11,15,21,60,50,70,49,65])
    end
    it "Test 2" do
      @test = TestClass.new([22,30,35,21,19])
      expect(@test.bfs).to eql([22,21,30,19,35])
    end
    it "Test 3" do
      @test = TestClass.new([100,190,300,10,5,170,180,160,150,110,101,102,155,157,179,185])
      expect(@test.bfs).to eql([100,10,190,5,170,300,160,180,150,179,185,110,155,101,157,102])
    end
  end

  context "Ym-Data-Tree Deep First Traversal In Order" do
    it "Test 1" do
      @test = TestClass.new([10,9,12])
      expect(@test.dft(:deep_first_traversal,:in_order_traversal)).to eql([9,10,12])
    end
    it "Test 2" do
      @test = TestClass.new([10,9,12,7,8,11,15])
      expect(@test.dft(:deep_first_traversal,:in_order_traversal)).to eql([7, 8, 9, 10, 11, 12, 15])
    end
  end
 
end
end
