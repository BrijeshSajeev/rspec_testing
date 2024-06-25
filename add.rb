def add(num1, num2)

  return num2 if num1.nil?
  return num1 if num2.nil?

  unless num1.is_a?(Numeric) && num2.is_a?(Numeric)
    raise TypeError, "Please enter a number"
  end

  num1+num2
end
