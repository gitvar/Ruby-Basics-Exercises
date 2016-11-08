# In the previous two exercises, you developed methods that convert simple numeric strings to signed Integers. In this exercise and the next, you're going to reverse those methods.

# Write a method that takes a positive integer or zero, and converts it to a string representation.

# You may not use any of the standard conversion methods available in Ruby, such as `Integer#to_s`, `String()`, `Kernel#format`, etc. Your method should do this the old-fashioned way and construct the string by analyzing and manipulating the number.

DIGITS = %w(0 1 2 3 4 5 6 7 8 9)

def integer_to_string(num)
  str = ''

  loop do
    num, remainder = num.divmod(10)
    str.prepend(DIGITS[remainder])
    break if num == 0
  end

  str
end

puts integer_to_string(4321) == '4321'
puts integer_to_string(0) == '0'
puts integer_to_string(5000) == '5000'
puts integer_to_string(123456789012345678901) == '123456789012345678901'
