require './sub.rb'
require 'rspec'
require_relative 'support/shared_examples_for_numeric_operations'

RSpec.describe "Test for subtraction" do
  subject{ method(:sub) }
  it_behaves_like "a numeric operation function"
  it "should sub two numbers" do
    expect(sub(5,3)).to eq(2)
  end

  it "should sub larger number from smaller number" do
    expect(sub(3,5)).to eq(-2)
  end

  it "should subs zero to a number" do
    expect(sub(5,0)).to eq(5)
    expect(sub(0,5)).to eq(-5)
  end

  it "should sub negative numbers" do
    expect(sub(-3,-4)).to eq(1)
  end
end
