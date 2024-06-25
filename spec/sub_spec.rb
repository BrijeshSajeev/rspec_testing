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

  it "returns the other argument if agr1 is nil" do
    expect(sub(nil, 3)).to eq(3)
    expect(sub(nil, 4)).to eq(4)
  end

  it "returns the other argument if agr2 is nil" do
    expect(sub(3,nil)).to eq(3)
    expect(sub(-4,nil)).to eq(-4)
  end
end
