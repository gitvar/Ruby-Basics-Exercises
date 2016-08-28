# The String#to_i method converts a string of numeric characters (including an optional plus or minus sign) to an Integer. String#to_int and Integer behave similarly. In this exercise, you are going to create your own conversion method.

# Write a method that takes a String of digits, and returns the appropriate number as an integer. You may not use any of the methods mentioned above.
#
# For now, do not worry about leading + or - signs, nor should you worry about invalid characters; assume all characters will be numeric.
#
# You may not use any of the standard conversion methods available in Ruby, such as String#to_i, Integer(), etc. Your method should do this the old-fashioned way and calculate the result by analyzing the characters in the string.
#
# Examples

def string_to_integer(string)
  char_array = string.codepoints.map!{ |e| e - 48 }
  exp = char_array.length - 1
  result = 0

  while exp >= 0
    result += char_array.shift * 10**exp
    exp -= 1
  end
  result
end

puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570
