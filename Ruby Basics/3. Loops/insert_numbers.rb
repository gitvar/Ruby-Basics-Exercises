# Modify the code below so that the user's input gets added to the numbers array. Stop the loop when the array contains 5 numbers.

numbers = []

loop do
  puts 'Enter any number:'
  print '=> '
  input = gets.chomp
  numbers << input.to_i if input.to_i.to_s == input
  break if numbers.size == 5
end
puts numbers
