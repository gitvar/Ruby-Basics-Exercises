# The String#to_i method converts a string of numeric characters (including an optional plus or minus sign) to an Integer. String#to_int and Integer behave similarly. In this exercise, you are going to create your own conversion method.

# Write a method that takes a String of digits, and returns the appropriate number as an integer. You may not use any of the methods mentioned above.
#
# For now, do not worry about leading + or - signs, nor should you worry about invalid characters; assume all characters will be numeric.
#
# You may not use any of the standard conversion methods available in Ruby, such as String#to_i, Integer(), etc. Your method should do this the old-fashioned way and calculate the result by analyzing the characters in the string.

DEC_INT_STRINGS = %w(0 1 2 3 4 5 6 7 8 9).freeze
HEX_INT_STRINGS = %w(0 1 2 3 4 5 6 7 8 9 A B C D E F).freeze

dec_int_hash = {}
DEC_INT_STRINGS.each_with_index { |e, i| dec_int_hash[e] = i }
DEC_HASH = dec_int_hash.freeze

hex_int_hash = {}
HEX_INT_STRINGS.each_with_index { |e, i| hex_int_hash[e] = i }
HEX_HASH = hex_int_hash.freeze

def dec_string_to_dec_integer(str)
  rslt = 0
  len = str.length - 1
  str.chars.each_with_index { |e, i| rslt += (DEC_HASH[e] * 10**(len-i))}.join
  rslt
end

def hex_string_to_dec_integer(str)
  rslt = 0
  len = str.length - 1
  str.chars.each_with_index { |e, i| rslt += (HEX_HASH[e] * 16**(len-i))}.join
  rslt
end

puts dec_string_to_dec_integer('570') == 750 # Test
puts dec_string_to_dec_integer('4321') == 4321
puts dec_string_to_dec_integer('570') == 570

puts hex_string_to_dec_integer('4D9F') == 19871
puts hex_string_to_dec_integer('4D9F') == 348745 # Test
