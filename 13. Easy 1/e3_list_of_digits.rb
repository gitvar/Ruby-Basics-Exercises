# Write a method that takes one argument in the form of an integer or a float; this argument may be either positive or negative. This method should check if a number is odd, returning true if its absolute value is odd. Floats should only return true if the number is equal to its integer part and the integer is odd.

# Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.

def digit_list(value)
  value.to_s.split(//).map(&:to_i)
end

# def digit_list(number)
#   digits = []
#
#   while number > 0
#     number, remainder = number.divmod(10)
#     digits.unshift(remainder)
#   end
#
#   digits
# end

p digit_list(12345) # => [1, 2, 3, 4, 5]
p digit_list(7) # => [7]
p digit_list(375290) # => [3, 7, 5, 2, 9, 0]
p digit_list(444) # => [4, 4, 4]
