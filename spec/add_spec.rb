require './add.rb'

RSpec.describe "Addition" do
  it "should add two numbers" do
    expect(add(2, 3)).to eq(5)
  end
  it "agrument 1 should be a number" do
    expect { add("a", 3) }.to raise_error(TypeError, "Please enter a number")
  end

  it "agrument 2 should be a number" do
    expect { add(2, "b") }.to raise_error(TypeError, "Please enter a number")
  end
  it "adds zero to a number" do
    expect(add(5, 0)).to eq(5)
    expect(add(0, 10)).to eq(10)
    expect(add(0, 0)).to eq(0)
  end
end
