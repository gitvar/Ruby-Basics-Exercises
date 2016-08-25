# Write a program that requests two integers from the user, adds them together, and then displays the result. Furthermore, insist that one of the integers be positive, and one negative; however, the order in which the two integers are entered does not matter. Do not check for positive/negative requirement until after both integers are entered, and start over if the requirement is not met.

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def request_number
  loop do
    puts ">> Please enter a positive or negative integer:"
    user_input = gets.chomp
    return user_input.to_i if valid_number?(user_input)
    # =================================================
    puts ">> Invalid input. Only non-zero integers are allowed."
  end
end

integer_one = nil
integer_two = nil

loop do
  integer_one = request_number
  integer_two = request_number

  break if integer_one * integer_two < 0
  # ====================================

  puts '>> Sorry. One integer must be positive, one must be negative.'
  puts '>> Please start over.'
end

sum = integer_one + integer_two
puts "#{integer_one} + #{integer_two} = #{sum}"
