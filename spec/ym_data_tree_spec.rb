require "spec_helper"

class TestClass
  def initialize
    @root = YmDataTree::Tree.new
    @datas = [10,6,8,5,12,15,11]
    @datas.each do |data|
      @root.insert(data)
    end
  def travers
      @root.in_order_traversal(@root.root)
      @root.getDatas
  end
end

describe YmDataTree do
  context "Ym-Data-Tree Class Test" do
    it "Class definition" do
      @test = TestClass.new
      expect(@test.travers).to eql([5,6,8,10,11,12,15])
     end
  end
end
end
