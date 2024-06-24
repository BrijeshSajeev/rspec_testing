class Calculator
  attr_accessor :result
  def initialize
    @result =0
  end

  def add(a, b)
    @result = a + b
  end

  def sub(a, b)
    @result = a - b
  end

  def reset
    @result =0
  end
end
