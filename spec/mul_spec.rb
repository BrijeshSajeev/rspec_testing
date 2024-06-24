require './mul.rb'
require_relative 'support/shared_examples_for_numeric_operations'

RSpec.describe "Test for multiplication" do

  #subject { method(:mul) }
  it "raises TypeError when first argument is not a number" do
    pending("Implement type checking for the first argument")
    expect { mul('a',20) }.to raise_error(TypeError, "Please enter a number")
  end

  it "raises TypeError when second argument is not a number" do
    pending("Implement type checking for the second argument")
    expect { mul(20,'b') }.to raise_error(TypeError, "Please enter a number")
  end


  it "It multiplies two number" do
    expect(mul(5, 1)).to eq(5)
    expect(mul(3, 10)).to eq(30)
    expect(mul(10, 2)).to eq(20)
  end
  it "multiplie's negative numbers" do
    expect(mul(-2, 3)).to eq(-6)
    expect(mul(-5, -10)).to eq(50)
    expect(mul(5, -3)).to eq(-15)
  end

end