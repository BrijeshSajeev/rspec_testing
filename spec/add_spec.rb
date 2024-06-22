require './add.rb'

RSpec.describe "Addition" do
  it "should add two numbers" do
    expect(add(2, 3)).to eq(5)
  end
  it "agrument 1 should be a number" do
    expect(add(2,3)).to eq(5)
  end

  it "agrument 2 should be a number" do
    expect(add(2,3)).to eq(5)
  end

end
