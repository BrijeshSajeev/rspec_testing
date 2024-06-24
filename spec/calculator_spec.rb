require './calculator.rb'

RSpec.describe Calculator do

  before(:all) do
    puts "Setting up the Calculator class"
  end

  before(:each) do
    @calculator = Calculator.new
  end

  after(:each) do
    @calculator.reset
    puts "Resetting the Calculator result"
  end

  after(:all) do
    puts "All tests are done"
  end

  it "adds two numbers correctly" do
    expect(@calculator.add(2, 3)).to eq(5)
  end

  it "subtracts two numbers correctly" do
    expect(@calculator.sub(5, 3)).to eq(2)
  end

end

