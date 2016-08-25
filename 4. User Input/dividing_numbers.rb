def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

numerator = ''
denominator = ''

loop do
  puts ">> Please enter the numerator:"
  numerator = gets.chomp
  break if valid_number?(numerator)
  puts ">> Invalid input. Only Integers are allowed."
end

loop do
  puts ">> Please enter the denominator:"
  denominator = gets.chomp
  if !valid_number?(denominator)
    puts ">> Invalid input. Only Integers are allowed."
  elsif denominator.to_i == 0
    puts ">> Invalid input. A denomintor value of 0 is not allowed."
  else # Valid number and not Zero
    break
  end
end

puts ">> #{numerator} / #{denominator} is #{numerator.to_i/denominator.to_i}"
