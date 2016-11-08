# Write a program that prompts the user for two positive integers, and then prints the results of the following operations on those two numbers: addition, subtraction, product, quotient, remainder, and power. Do not worry about validating the input.

# Discussion
#
# There are some edge cases to consider in this exercise. We have to be careful of not having a second number that is zero. What if we wanted to use floats instead of integers? How does this change this problem?

def prompt(message)
  puts "==> #{message}"
end

prompt("Enter the first number: ")
first_number = gets.chomp.to_f

second_number = nil
loop do
  prompt("Enter the second number: ")
  second_number = gets.chomp.to_f
  break unless second_number == 0 || second_number == false
  prompt("Not a valid number. Please try again!")
end

prompt("#{first_number} + #{second_number} = #{(first_number + second_number).round(4)}")
prompt("#{first_number} - #{second_number} = #{(first_number - second_number).round(4)}")
prompt("#{first_number} * #{second_number} = #{(first_number * second_number).round(4)}")
prompt("#{first_number} / #{second_number} = #{(first_number / second_number).round(4)}")
prompt("#{first_number} % #{second_number} = #{(first_number % second_number).round(4)}")
prompt("#{first_number} ** #{second_number} = #{(first_number**second_number).round(4)}")
