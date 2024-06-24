require './add.rb'
require 'rspec'
require_relative 'support/shared_examples_for_numeric_operations'
RSpec.describe "Addition" do
  
  subject { method(:add) }
  it_behaves_like "a numeric operation function"
  it "should add two numbers" do
    expect(add(2, 3)).to eq(5)
  end
 it "adds zero to a number" do
    expect(add(5, 0)).to eq(5)
    expect(add(0, 10)).to eq(10)
    expect(add(0, 0)).to eq(0)
  end
  it "adds negative numbers" do
    expect(add(-2, 3)).to eq(1)
    expect(add(-5, -10)).to eq(-15)
    expect(add(5, -3)).to eq(2)
  end
end
