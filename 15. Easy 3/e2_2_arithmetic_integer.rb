# Write a program that prompts the user for two positive integers, and then prints the results of the following operations on those two numbers: addition, subtraction, product, quotient, remainder, and power. Do not worry about validating the input.

OPERATIONS = %w(+ - * / % **)

puts "==> Enter the first number:"
first_num = gets.chomp

puts "==> Enter the second number:"
second_num = gets.chomp

OPERATIONS.each do |operator|
  result = eval(first_num + operator + second_num)
  puts "==> #{first_num} #{operator} #{second_num} = #{result}"
end

puts

OPERATIONS.each do |operator|
  result = first_num.to_i.method(operator).(second_num.to_i)
  puts "==> #{first_num} #{operator} #{second_num} = #{result}"
end
