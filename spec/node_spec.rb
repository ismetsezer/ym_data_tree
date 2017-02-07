require 'spec_helper'
describe Node do
  context "Node Class Test" do
    it "data element" do
        @node = Node.new
        expect(@node.data).to eql(nil)
    end
  end
  context "Node Class Test" do
    it "leftChild element" do
      @node = Node.new
      expect(@node.leftChild).to eql(nil)
    end
  end
end
