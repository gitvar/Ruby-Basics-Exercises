# Write a program that asks the user to enter an integer greater than 0, then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

# Examples:
#
# >> Please enter an integer greater than 0:
# 5
# >> Enter 's' to compute the sum, 'p' to compute the product.
# s
# The sum of the integers between 1 and 5 is 15.
#
#
# >> Please enter an integer greater than 0:
# 6
# >> Enter 's' to compute the sum, 'p' to compute the product.
# p
# The product of the integers between 1 and 6 is 720.

def calc(number, op)
  array = (1..number).to_a
  op == 's' ? array.reduce(:+) : array.reduce(:*)
end

print ">> Please enter an integer greater than 0 : "
number = gets.chomp.to_i

print ">> Enter 's' for sum, or 'p' for product : "
operation = gets.chomp

result = calc(number, operation)
action = operation == 's' ? "sum" : "product"

puts "The #{action} of the integers between 1 and #{number} is #{result}"
