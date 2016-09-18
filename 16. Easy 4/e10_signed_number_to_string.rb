# In the previous exercise, you developed a method that converts non-negative numbers to strings. In this exercise, you're going to extend that method by adding the ability to represent negative numbers as well.
#
# Write a method that takes an integer, and converts it to a string representation.
#
# You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s, String(), Kernel#format, etc. You may, however, use integer_to_string from the previous exercise.

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

def signed_integer_to_string(num)
  if num == 0
    '0'
  elsif num > 0
    '+' + integer_to_string(num)
  else
    '-' + integer_to_string(num.abs)
  end
end

puts signed_integer_to_string(4321) #== '+4321'
puts signed_integer_to_string(-123) #== '-123'
puts signed_integer_to_string(0) #== '0'
