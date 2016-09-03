# In the previous two exercises, you developed methods that convert simple numeric strings to signed Integers. In this exercise and the next, you're going to reverse those methods.

# Write a method that takes a positive integer or zero, and converts it to a string representation.
#
# You may not use any of the standard conversion methods available in Ruby, such as `Integer#to_s`, `String()`, `Kernel#format`, etc. Your method should do this the old-fashioned way and construct the string by analyzing and manipulating the number.

DIGITS = { 0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
           5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'
         }

def integer_to_string(num)
  arr = []
  exp = 20  # Largest number to be converted is 21 digits in length

  # Convert number to array of chars.
  loop do
    denominator, remainder = num.divmod(10**exp)
    arr << DIGITS[denominator]
    num = remainder
    exp -= 1
    break if exp < 0
  end

  # Remove leading zeros.
  loop do
    break unless arr.first == '0'
    arr.shift
  end

  # Add '0' if num == 0.
  arr[0] = '0' if arr == []

  # Return a string.
  arr.join
end

puts integer_to_string(4321) == '4321'
puts integer_to_string(0) == '0'
puts integer_to_string(5000) == '5000'
puts integer_to_string(123456789012345678901) == '123456789012345678901'
