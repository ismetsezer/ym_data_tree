require "spec_helper"

describe Hello do
  context "first test" do
    it "is a test" do
        @hello = Hello.new
        expect(@hello.hello).to eql(nil)
    end
  end
end
