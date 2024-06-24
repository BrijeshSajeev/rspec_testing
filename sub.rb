def sub(num1, num2)
  unless num1.is_a?(Numeric) && num2.is_a?(Numeric)
    raise TypeError, "Please enter a number"
  end
  num1-num2
end
